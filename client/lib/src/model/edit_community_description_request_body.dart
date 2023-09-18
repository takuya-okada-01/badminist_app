//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edit_community_description_request_body.g.dart';

/// EditCommunityDescriptionRequestBody
///
/// Properties:
/// * [communityId] 
/// * [description] 
@BuiltValue()
abstract class EditCommunityDescriptionRequestBody implements Built<EditCommunityDescriptionRequestBody, EditCommunityDescriptionRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String? get communityId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  EditCommunityDescriptionRequestBody._();

  factory EditCommunityDescriptionRequestBody([void updates(EditCommunityDescriptionRequestBodyBuilder b)]) = _$EditCommunityDescriptionRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EditCommunityDescriptionRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EditCommunityDescriptionRequestBody> get serializer => _$EditCommunityDescriptionRequestBodySerializer();
}

class _$EditCommunityDescriptionRequestBodySerializer implements PrimitiveSerializer<EditCommunityDescriptionRequestBody> {
  @override
  final Iterable<Type> types = const [EditCommunityDescriptionRequestBody, _$EditCommunityDescriptionRequestBody];

  @override
  final String wireName = r'EditCommunityDescriptionRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EditCommunityDescriptionRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.communityId != null) {
      yield r'community_id';
      yield serializers.serialize(
        object.communityId,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EditCommunityDescriptionRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EditCommunityDescriptionRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'community_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.communityId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EditCommunityDescriptionRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EditCommunityDescriptionRequestBodyBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer.class */
abstract class BaseNodeDeserializer<T extends JsonNode> extends StdDeserializer<T> {
    protected final Boolean _supportsUpdates;

    public BaseNodeDeserializer(Class<T> cls, Boolean bool) {
        super((Class<?>) cls);
        this._supportsUpdates = bool;
    }

    protected final JsonNode _fromEmbedded(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        Object embeddedObject = jsonParser.getEmbeddedObject();
        return embeddedObject == null ? jsonNodeFactory.nullNode() : embeddedObject.getClass() == byte[].class ? jsonNodeFactory.binaryNode((byte[]) embeddedObject) : embeddedObject instanceof RawValue ? jsonNodeFactory.rawValueNode((RawValue) embeddedObject) : embeddedObject instanceof JsonNode ? (JsonNode) embeddedObject : jsonNodeFactory.pojoNode(embeddedObject);
    }

    protected final JsonNode _fromFloat(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonParser.NumberType numberType = jsonParser.getNumberType();
        return numberType == JsonParser.NumberType.BIG_DECIMAL ? jsonNodeFactory.numberNode(jsonParser.getDecimalValue()) : deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.isNaN() ? jsonNodeFactory.numberNode(jsonParser.getDoubleValue()) : jsonNodeFactory.numberNode(jsonParser.getDecimalValue()) : numberType == JsonParser.NumberType.FLOAT ? jsonNodeFactory.numberNode(jsonParser.getFloatValue()) : jsonNodeFactory.numberNode(jsonParser.getDoubleValue());
    }

    protected final JsonNode _fromInt(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        int deserializationFeatures = deserializationContext.getDeserializationFeatures();
        JsonParser.NumberType numberType = (F_MASK_INT_COERCIONS & deserializationFeatures) != 0 ? DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(deserializationFeatures) ? JsonParser.NumberType.BIG_INTEGER : DeserializationFeature.USE_LONG_FOR_INTS.enabledIn(deserializationFeatures) ? JsonParser.NumberType.LONG : jsonParser.getNumberType() : jsonParser.getNumberType();
        return numberType == JsonParser.NumberType.INT ? jsonNodeFactory.numberNode(jsonParser.getIntValue()) : numberType == JsonParser.NumberType.LONG ? jsonNodeFactory.numberNode(jsonParser.getLongValue()) : jsonNodeFactory.numberNode(jsonParser.getBigIntegerValue());
    }

    protected void _handleDuplicateField(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, String str, ObjectNode objectNode, JsonNode jsonNode, JsonNode jsonNode2) throws JsonProcessingException {
        if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY)) {
            deserializationContext.reportInputMismatch(JsonNode.class, "Duplicate field '%s' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled", str);
        }
        if (!deserializationContext.isEnabled(StreamReadCapability.DUPLICATE_PROPERTIES)) {
            return;
        }
        if (jsonNode.isArray()) {
            ((ArrayNode) jsonNode).add(jsonNode2);
            objectNode.replace(str, jsonNode);
            return;
        }
        ArrayNode arrayNode = jsonNodeFactory.arrayNode();
        arrayNode.add(jsonNode);
        arrayNode.add(jsonNode2);
        objectNode.replace(str, arrayNode);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonNode deserializeAny(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        int currentTokenId = jsonParser.currentTokenId();
        if (currentTokenId == 2) {
            return jsonNodeFactory.objectNode();
        }
        switch (currentTokenId) {
            case 5:
                return deserializeObjectAtName(jsonParser, deserializationContext, jsonNodeFactory);
            case 6:
                return jsonNodeFactory.textNode(jsonParser.getText());
            case 7:
                return _fromInt(jsonParser, deserializationContext, jsonNodeFactory);
            case 8:
                return _fromFloat(jsonParser, deserializationContext, jsonNodeFactory);
            case 9:
                return jsonNodeFactory.booleanNode(true);
            case 10:
                return jsonNodeFactory.booleanNode(false);
            case 11:
                return jsonNodeFactory.nullNode();
            case 12:
                return _fromEmbedded(jsonParser, deserializationContext, jsonNodeFactory);
            default:
                return (JsonNode) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ArrayNode deserializeArray(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        ArrayNode arrayNode = jsonNodeFactory.arrayNode();
        while (true) {
            JsonToken nextToken = jsonParser.nextToken();
            if (nextToken != null) {
                switch (nextToken.id()) {
                    case 1:
                        arrayNode.add(deserializeObject(jsonParser, deserializationContext, jsonNodeFactory));
                        break;
                    case 2:
                    case 5:
                    case 8:
                    default:
                        arrayNode.add(deserializeAny(jsonParser, deserializationContext, jsonNodeFactory));
                        break;
                    case 3:
                        arrayNode.add(deserializeArray(jsonParser, deserializationContext, jsonNodeFactory));
                        break;
                    case 4:
                        return arrayNode;
                    case 6:
                        arrayNode.add(jsonNodeFactory.textNode(jsonParser.getText()));
                        break;
                    case 7:
                        arrayNode.add(_fromInt(jsonParser, deserializationContext, jsonNodeFactory));
                        break;
                    case 9:
                        arrayNode.add(jsonNodeFactory.booleanNode(true));
                        break;
                    case 10:
                        arrayNode.add(jsonNodeFactory.booleanNode(false));
                        break;
                    case 11:
                        arrayNode.add(jsonNodeFactory.nullNode());
                        break;
                    case 12:
                        arrayNode.add(_fromEmbedded(jsonParser, deserializationContext, jsonNodeFactory));
                        break;
                }
            } else {
                return arrayNode;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ObjectNode deserializeObject(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonNode jsonNode;
        ObjectNode objectNode = jsonNodeFactory.objectNode();
        String nextFieldName = jsonParser.nextFieldName();
        while (nextFieldName != null) {
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = nextToken;
            if (nextToken == null) {
                jsonToken = JsonToken.NOT_AVAILABLE;
            }
            int id = jsonToken.id();
            if (id == 1) {
                jsonNode = deserializeObject(jsonParser, deserializationContext, jsonNodeFactory);
            } else if (id == 3) {
                jsonNode = deserializeArray(jsonParser, deserializationContext, jsonNodeFactory);
            } else if (id == 6) {
                jsonNode = jsonNodeFactory.textNode(jsonParser.getText());
            } else if (id != 7) {
                switch (id) {
                    case 9:
                        jsonNode = jsonNodeFactory.booleanNode(true);
                        break;
                    case 10:
                        jsonNode = jsonNodeFactory.booleanNode(false);
                        break;
                    case 11:
                        jsonNode = jsonNodeFactory.nullNode();
                        break;
                    case 12:
                        jsonNode = _fromEmbedded(jsonParser, deserializationContext, jsonNodeFactory);
                        break;
                    default:
                        jsonNode = deserializeAny(jsonParser, deserializationContext, jsonNodeFactory);
                        break;
                }
            } else {
                jsonNode = _fromInt(jsonParser, deserializationContext, jsonNodeFactory);
            }
            JsonNode replace = objectNode.replace(nextFieldName, jsonNode);
            if (replace != null) {
                _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, nextFieldName, objectNode, replace, jsonNode);
            }
            nextFieldName = jsonParser.nextFieldName();
        }
        return objectNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ObjectNode deserializeObjectAtName(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonNode jsonNode;
        ObjectNode objectNode = jsonNodeFactory.objectNode();
        String currentName = jsonParser.currentName();
        while (currentName != null) {
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = nextToken;
            if (nextToken == null) {
                jsonToken = JsonToken.NOT_AVAILABLE;
            }
            int id = jsonToken.id();
            if (id == 1) {
                jsonNode = deserializeObject(jsonParser, deserializationContext, jsonNodeFactory);
            } else if (id == 3) {
                jsonNode = deserializeArray(jsonParser, deserializationContext, jsonNodeFactory);
            } else if (id == 6) {
                jsonNode = jsonNodeFactory.textNode(jsonParser.getText());
            } else if (id != 7) {
                switch (id) {
                    case 9:
                        jsonNode = jsonNodeFactory.booleanNode(true);
                        break;
                    case 10:
                        jsonNode = jsonNodeFactory.booleanNode(false);
                        break;
                    case 11:
                        jsonNode = jsonNodeFactory.nullNode();
                        break;
                    case 12:
                        jsonNode = _fromEmbedded(jsonParser, deserializationContext, jsonNodeFactory);
                        break;
                    default:
                        jsonNode = deserializeAny(jsonParser, deserializationContext, jsonNodeFactory);
                        break;
                }
            } else {
                jsonNode = _fromInt(jsonParser, deserializationContext, jsonNodeFactory);
            }
            JsonNode replace = objectNode.replace(currentName, jsonNode);
            if (replace != null) {
                _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, currentName, objectNode, replace, jsonNode);
            }
            currentName = jsonParser.nextFieldName();
        }
        return objectNode;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Untyped;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return this._supportsUpdates;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonNode updateArray(JsonParser jsonParser, DeserializationContext deserializationContext, ArrayNode arrayNode) throws IOException {
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        while (true) {
            switch (jsonParser.nextToken().id()) {
                case 1:
                    arrayNode.add(deserializeObject(jsonParser, deserializationContext, nodeFactory));
                    break;
                case 2:
                case 5:
                case 8:
                default:
                    arrayNode.add(deserializeAny(jsonParser, deserializationContext, nodeFactory));
                    break;
                case 3:
                    arrayNode.add(deserializeArray(jsonParser, deserializationContext, nodeFactory));
                    break;
                case 4:
                    return arrayNode;
                case 6:
                    arrayNode.add(nodeFactory.textNode(jsonParser.getText()));
                    break;
                case 7:
                    arrayNode.add(_fromInt(jsonParser, deserializationContext, nodeFactory));
                    break;
                case 9:
                    arrayNode.add(nodeFactory.booleanNode(true));
                    break;
                case 10:
                    arrayNode.add(nodeFactory.booleanNode(false));
                    break;
                case 11:
                    arrayNode.add(nodeFactory.nullNode());
                    break;
                case 12:
                    arrayNode.add(_fromEmbedded(jsonParser, deserializationContext, nodeFactory));
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonNode updateObject(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectNode objectNode) throws IOException {
        String str;
        JsonNode jsonNode;
        if (jsonParser.isExpectedStartObjectToken()) {
            str = jsonParser.nextFieldName();
        } else if (!jsonParser.hasToken(JsonToken.FIELD_NAME)) {
            return (JsonNode) deserialize(jsonParser, deserializationContext);
        } else {
            str = jsonParser.currentName();
        }
        while (str != null) {
            JsonToken nextToken = jsonParser.nextToken();
            JsonNode jsonNode2 = objectNode.get(str);
            if (jsonNode2 != null) {
                if (jsonNode2 instanceof ObjectNode) {
                    if (nextToken == JsonToken.START_OBJECT) {
                        JsonNode updateObject = updateObject(jsonParser, deserializationContext, (ObjectNode) jsonNode2);
                        if (updateObject != jsonNode2) {
                            objectNode.set(str, updateObject);
                        }
                        str = jsonParser.nextFieldName();
                    }
                } else if ((jsonNode2 instanceof ArrayNode) && nextToken == JsonToken.START_ARRAY) {
                    JsonNode updateArray = updateArray(jsonParser, deserializationContext, (ArrayNode) jsonNode2);
                    if (updateArray != jsonNode2) {
                        objectNode.set(str, updateArray);
                    }
                    str = jsonParser.nextFieldName();
                }
            }
            JsonToken jsonToken = nextToken;
            if (nextToken == null) {
                jsonToken = JsonToken.NOT_AVAILABLE;
            }
            JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
            int id = jsonToken.id();
            if (id == 1) {
                jsonNode = deserializeObject(jsonParser, deserializationContext, nodeFactory);
            } else if (id == 3) {
                jsonNode = deserializeArray(jsonParser, deserializationContext, nodeFactory);
            } else if (id == 6) {
                jsonNode = nodeFactory.textNode(jsonParser.getText());
            } else if (id != 7) {
                switch (id) {
                    case 9:
                        jsonNode = nodeFactory.booleanNode(true);
                        break;
                    case 10:
                        jsonNode = nodeFactory.booleanNode(false);
                        break;
                    case 11:
                        jsonNode = nodeFactory.nullNode();
                        break;
                    case 12:
                        jsonNode = _fromEmbedded(jsonParser, deserializationContext, nodeFactory);
                        break;
                    default:
                        jsonNode = deserializeAny(jsonParser, deserializationContext, nodeFactory);
                        break;
                }
            } else {
                jsonNode = _fromInt(jsonParser, deserializationContext, nodeFactory);
            }
            objectNode.set(str, jsonNode);
            str = jsonParser.nextFieldName();
        }
        return objectNode;
    }
}

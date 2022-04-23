package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer.class */
public class JsonNodeDeserializer extends BaseNodeDeserializer<JsonNode> {
    public static final JsonNodeDeserializer instance = new JsonNodeDeserializer();

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer.class */
    public static final class ArrayDeserializer extends BaseNodeDeserializer<ArrayNode> {
        public static final ArrayDeserializer _instance = new ArrayDeserializer();

        public ArrayDeserializer() {
            super(ArrayNode.class);
        }

        public static ArrayDeserializer getInstance() {
            return _instance;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public ArrayNode deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.isExpectedStartArrayToken()) {
                return deserializeArray(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            throw deserializationContext.mappingException(ArrayNode.class);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer.class */
    public static final class ObjectDeserializer extends BaseNodeDeserializer<ObjectNode> {
        public static final ObjectDeserializer _instance = new ObjectDeserializer();

        public ObjectDeserializer() {
            super(ObjectNode.class);
        }

        public static ObjectDeserializer getInstance() {
            return _instance;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public ObjectNode deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.isExpectedStartObjectToken() || jsonParser.hasToken(JsonToken.FIELD_NAME)) {
                return deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            if (jsonParser.hasToken(JsonToken.END_OBJECT)) {
                return deserializationContext.getNodeFactory().objectNode();
            }
            throw deserializationContext.mappingException(ObjectNode.class);
        }
    }

    public JsonNodeDeserializer() {
        super(JsonNode.class);
    }

    public static JsonDeserializer<? extends JsonNode> getDeserializer(Class<?> cls) {
        return cls == ObjectNode.class ? ObjectDeserializer.getInstance() : cls == ArrayNode.class ? ArrayDeserializer.getInstance() : instance;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public JsonNode deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int currentTokenId = jsonParser.getCurrentTokenId();
        return currentTokenId != 1 ? currentTokenId != 3 ? deserializeAny(jsonParser, deserializationContext, deserializationContext.getNodeFactory()) : deserializeArray(jsonParser, deserializationContext, deserializationContext.getNodeFactory()) : deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    @Deprecated
    public JsonNode getNullValue() {
        return NullNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public JsonNode getNullValue(DeserializationContext deserializationContext) {
        return NullNode.getInstance();
    }
}

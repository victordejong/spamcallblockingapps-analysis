package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/MissingNode.class */
public final class MissingNode extends ValueNode {
    private static final MissingNode instance = new MissingNode();
    private static final long serialVersionUID = 1;

    protected MissingNode() {
    }

    public static MissingNode getInstance() {
        return instance;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final String asText() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final String asText(String str) {
        return str;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public final JsonToken asToken() {
        return JsonToken.NOT_AVAILABLE;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    public final <T extends JsonNode> T deepCopy() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final JsonNodeType getNodeType() {
        return JsonNodeType.MISSING;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public final int hashCode() {
        return JsonNodeType.MISSING.ordinal();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final boolean isMissingNode() {
        return true;
    }

    protected final Object readResolve() {
        return instance;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final JsonNode require() {
        return (JsonNode) _reportRequiredViolation("require() called on `MissingNode`", new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final JsonNode requireNonNull() {
        return (JsonNode) _reportRequiredViolation("requireNonNull() called on `MissingNode`", new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNull();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        jsonGenerator.writeNull();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonNode
    public final String toPrettyString() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonNode
    public final String toString() {
        return "";
    }
}

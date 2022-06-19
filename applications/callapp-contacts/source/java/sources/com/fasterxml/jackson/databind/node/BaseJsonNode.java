package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/BaseJsonNode.class */
public abstract class BaseJsonNode extends JsonNode implements Serializable {
    private static final long serialVersionUID = 1;

    public abstract JsonToken asToken();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final JsonNode findPath(String str) {
        JsonNode findValue = findValue(str);
        MissingNode missingNode = findValue;
        if (findValue == null) {
            missingNode = MissingNode.getInstance();
        }
        return missingNode;
    }

    public abstract int hashCode();

    @Override // com.fasterxml.jackson.core.TreeNode
    public JsonParser.NumberType numberType() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode required(int i) {
        return (JsonNode) _reportRequiredViolation("Node of type `%s` has no indexed values", getClass().getSimpleName());
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode required(String str) {
        return (JsonNode) _reportRequiredViolation("Node of type `%s` has no fields", getClass().getSimpleName());
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable
    public abstract void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException;

    @Override // com.fasterxml.jackson.databind.JsonSerializable
    public abstract void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException;

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String toPrettyString() {
        return InternalNodeMapper.nodeToPrettyString(this);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        return InternalNodeMapper.nodeToString(this);
    }

    public JsonParser traverse() {
        return new TreeTraversingParser(this);
    }

    public JsonParser traverse(ObjectCodec objectCodec) {
        return new TreeTraversingParser(this, objectCodec);
    }

    Object writeReplace() {
        return NodeSerialization.from(this);
    }
}

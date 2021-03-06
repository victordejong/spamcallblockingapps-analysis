package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/POJONode.class */
public class POJONode extends ValueNode {
    private static final long serialVersionUID = 2;
    protected final Object _value;

    public POJONode(Object obj) {
        this._value = obj;
    }

    protected boolean _pojoEquals(POJONode pOJONode) {
        Object obj = this._value;
        return obj == null ? pOJONode._value == null : obj.equals(pOJONode._value);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean asBoolean(boolean z) {
        Object obj = this._value;
        boolean z2 = z;
        if (obj != null) {
            z2 = z;
            if (obj instanceof Boolean) {
                z2 = ((Boolean) obj).booleanValue();
            }
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // com.fasterxml.jackson.databind.JsonNode
    public double asDouble(double d) {
        Object obj = this._value;
        ?? r4 = d;
        if (obj instanceof Number) {
            r4 = ((Number) obj).doubleValue();
        }
        return r4;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public int asInt(int i) {
        Object obj = this._value;
        if (obj instanceof Number) {
            i = ((Number) obj).intValue();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // com.fasterxml.jackson.databind.JsonNode
    public long asLong(long j) {
        Object obj = this._value;
        ?? r4 = j;
        if (obj instanceof Number) {
            r4 = ((Number) obj).longValue();
        }
        return r4;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        Object obj = this._value;
        return obj == null ? JsonReaderKt.NULL : obj.toString();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText(String str) {
        Object obj = this._value;
        return obj == null ? str : obj.toString();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return JsonToken.VALUE_EMBEDDED_OBJECT;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public byte[] binaryValue() throws IOException {
        Object obj = this._value;
        return obj instanceof byte[] ? (byte[]) obj : super.binaryValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof POJONode)) {
            return false;
        }
        return _pojoEquals((POJONode) obj);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.POJO;
    }

    public Object getPojo() {
        return this._value;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this._value.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Object obj = this._value;
        if (obj == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        } else if (obj instanceof JsonSerializable) {
            ((JsonSerializable) obj).serialize(jsonGenerator, serializerProvider);
        } else {
            serializerProvider.defaultSerializeValue(obj, jsonGenerator);
        }
    }
}

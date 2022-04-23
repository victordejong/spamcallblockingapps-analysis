package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/node/POJONode.class */
public class POJONode extends ValueNode {
    public final Object _value;

    public POJONode(Object obj) {
        this._value = obj;
    }

    public boolean _pojoEquals(POJONode pOJONode) {
        Object obj = this._value;
        if (obj != null) {
            return obj.equals(pOJONode._value);
        }
        return pOJONode._value == null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        Object obj = this._value;
        return obj == null ? C14247d.f31851f : obj.toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof POJONode)) {
            return _pojoEquals((POJONode) obj);
        }
        return false;
    }

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
            jsonGenerator.writeObject(obj);
        }
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        Object obj = this._value;
        return obj instanceof byte[] ? String.format("(binary value of %d bytes)", Integer.valueOf(((byte[]) obj).length)) : obj instanceof RawValue ? String.format("(raw value '%s')", ((RawValue) obj).toString()) : String.valueOf(obj);
    }
}

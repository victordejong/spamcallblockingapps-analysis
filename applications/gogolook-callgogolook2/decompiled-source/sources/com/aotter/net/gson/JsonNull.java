package com.aotter.net.gson;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonNull.class */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE = new JsonNull();

    @Override // com.aotter.net.gson.JsonElement
    public JsonNull deepCopy() {
        return INSTANCE;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof JsonNull);
    }

    public int hashCode() {
        return JsonNull.class.hashCode();
    }
}

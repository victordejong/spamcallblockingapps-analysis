package com.google.gson;
/* loaded from: classes4-dex2jar.jar:com/google/gson/JsonNull.class */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE = new JsonNull();

    @Override // com.google.gson.JsonElement
    public final JsonNull deepCopy() {
        return INSTANCE;
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof JsonNull);
    }

    public final int hashCode() {
        return JsonNull.class.hashCode();
    }
}

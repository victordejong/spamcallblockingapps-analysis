package com.google.gson;
/* renamed from: com.google.gson.i */
/* loaded from: classes4-dex2jar.jar:com/google/gson/i.class */
public enum EnumC15974i {
    DEFAULT { // from class: com.google.gson.i.1
        @Override // com.google.gson.EnumC15974i
        public final JsonElement serialize(Long l) {
            return new JsonPrimitive(l);
        }
    },
    STRING { // from class: com.google.gson.i.2
        @Override // com.google.gson.EnumC15974i
        public final JsonElement serialize(Long l) {
            return new JsonPrimitive(String.valueOf(l));
        }
    };

    public abstract JsonElement serialize(Long l);
}

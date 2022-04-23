package com.google.gson;
/* loaded from: classes4-dex2jar.jar:com/google/gson/i.class */
public enum i {
    DEFAULT { // from class: com.google.gson.i.1
        @Override // com.google.gson.i
        public final JsonElement serialize(Long l) {
            return new JsonPrimitive(l);
        }
    },
    STRING { // from class: com.google.gson.i.2
        @Override // com.google.gson.i
        public final JsonElement serialize(Long l) {
            return new JsonPrimitive(String.valueOf(l));
        }
    };

    public abstract JsonElement serialize(Long l);
}

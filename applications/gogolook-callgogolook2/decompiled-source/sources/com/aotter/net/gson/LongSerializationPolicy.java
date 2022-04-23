package com.aotter.net.gson;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/LongSerializationPolicy.class */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.aotter.net.gson.LongSerializationPolicy.1
        @Override // com.aotter.net.gson.LongSerializationPolicy
        public JsonElement serialize(Long l) {
            return new JsonPrimitive((Number) l);
        }
    },
    STRING { // from class: com.aotter.net.gson.LongSerializationPolicy.2
        @Override // com.aotter.net.gson.LongSerializationPolicy
        public JsonElement serialize(Long l) {
            return new JsonPrimitive(String.valueOf(l));
        }
    };

    public abstract JsonElement serialize(Long l);
}

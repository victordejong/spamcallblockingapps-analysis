package com.aotter.net.gson;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonDeserializer.class */
public interface JsonDeserializer<T> {
    T deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext);
}

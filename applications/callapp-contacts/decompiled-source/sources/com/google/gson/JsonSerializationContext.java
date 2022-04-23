package com.google.gson;

import java.lang.reflect.Type;
/* loaded from: classes4-dex2jar.jar:com/google/gson/JsonSerializationContext.class */
public interface JsonSerializationContext {
    JsonElement serialize(Object obj);

    JsonElement serialize(Object obj, Type type);
}

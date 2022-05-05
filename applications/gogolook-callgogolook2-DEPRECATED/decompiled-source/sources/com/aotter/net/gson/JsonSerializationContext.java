package com.aotter.net.gson;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonSerializationContext.class */
public interface JsonSerializationContext {
    JsonElement serialize(Object obj);

    JsonElement serialize(Object obj, Type type);
}

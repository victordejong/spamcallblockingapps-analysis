package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/TypeIdResolver.class */
public interface TypeIdResolver {
    String getDescForKnownTypeIds();

    JsonTypeInfo.EnumC10518Id getMechanism();

    String idFromBaseType();

    String idFromValue(Object obj);

    String idFromValueAndType(Object obj, Class<?> cls);

    void init(JavaType javaType);

    JavaType typeFromId(DatabindContext databindContext, String str) throws IOException;
}

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable.class */
public interface JsonFormatVisitable {
    void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException;
}

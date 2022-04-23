package com.fasterxml.jackson.databind;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/RuntimeJsonMappingException.class */
public class RuntimeJsonMappingException extends RuntimeException {
    public RuntimeJsonMappingException(JsonMappingException jsonMappingException) {
        super(jsonMappingException);
    }

    public RuntimeJsonMappingException(String str, JsonMappingException jsonMappingException) {
        super(str, jsonMappingException);
    }
}

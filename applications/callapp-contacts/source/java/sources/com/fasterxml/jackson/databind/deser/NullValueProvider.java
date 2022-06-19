package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/NullValueProvider.class */
public interface NullValueProvider {
    Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException;
}

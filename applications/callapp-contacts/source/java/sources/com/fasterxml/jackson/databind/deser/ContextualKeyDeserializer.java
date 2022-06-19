package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/ContextualKeyDeserializer.class */
public interface ContextualKeyDeserializer {
    KeyDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException;
}

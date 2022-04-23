package com.fasterxml.jackson.databind;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/InjectableValues.class */
public abstract class InjectableValues {
    public abstract Object findInjectableValue(Object obj, DeserializationContext deserializationContext, BeanProperty beanProperty, Object obj2) throws JsonMappingException;
}

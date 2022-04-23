package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.type.TypeFactory;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/MapProperty.class */
public class MapProperty extends PropertyWriter {
    public final BeanProperty _property;

    public MapProperty(TypeSerializer typeSerializer, BeanProperty beanProperty) {
        super(beanProperty == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : beanProperty.getMetadata());
        this._property = beanProperty;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        BeanProperty beanProperty = this._property;
        return beanProperty == null ? null : beanProperty.getMember();
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JavaType getType() {
        BeanProperty beanProperty = this._property;
        return beanProperty == null ? TypeFactory.unknownType() : beanProperty.getType();
    }

    public void reset(Object obj, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2) {
    }
}

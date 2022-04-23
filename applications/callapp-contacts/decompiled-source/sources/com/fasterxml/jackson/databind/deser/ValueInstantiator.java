package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/ValueInstantiator.class */
public abstract class ValueInstantiator {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/ValueInstantiator$Base.class */
    public static class Base extends ValueInstantiator implements Serializable {
        private static final long serialVersionUID = 1;
        protected final Class<?> _valueType;

        public Base(JavaType javaType) {
            this._valueType = javaType.getRawClass();
        }

        public Base(Class<?> cls) {
            this._valueType = cls;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Class<?> getValueClass() {
            return this._valueType;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public String getValueTypeDesc() {
            return this._valueType.getName();
        }
    }

    @Deprecated
    protected Object _createFromStringFallbacks(DeserializationContext deserializationContext, String str) throws IOException {
        if (str.isEmpty() && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
            return null;
        }
        if (canCreateFromBoolean() && deserializationContext.findCoercionAction(LogicalType.Boolean, Boolean.class, CoercionInputShape.String) == CoercionAction.TryConvert) {
            String trim = str.trim();
            if ("true".equals(trim)) {
                return createFromBoolean(deserializationContext, true);
            }
            if ("false".equals(trim)) {
                return createFromBoolean(deserializationContext, false);
            }
        }
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, deserializationContext.getParser(), "no String-argument constructor/factory method to deserialize from String value ('%s')", str);
    }

    public boolean canCreateFromBigDecimal() {
        return false;
    }

    public boolean canCreateFromBigInteger() {
        return false;
    }

    public boolean canCreateFromBoolean() {
        return false;
    }

    public boolean canCreateFromDouble() {
        return false;
    }

    public boolean canCreateFromInt() {
        return false;
    }

    public boolean canCreateFromLong() {
        return false;
    }

    public boolean canCreateFromObjectWith() {
        return false;
    }

    public boolean canCreateFromString() {
        return false;
    }

    public boolean canCreateUsingArrayDelegate() {
        return false;
    }

    public boolean canCreateUsingDefault() {
        return getDefaultCreator() != null;
    }

    public boolean canCreateUsingDelegate() {
        return false;
    }

    public boolean canInstantiate() {
        return canCreateUsingDefault() || canCreateUsingDelegate() || canCreateUsingArrayDelegate() || canCreateFromObjectWith() || canCreateFromString() || canCreateFromInt() || canCreateFromLong() || canCreateFromDouble() || canCreateFromBoolean();
    }

    public ValueInstantiator createContextual(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        return this;
    }

    public Object createFromBigDecimal(DeserializationContext deserializationContext, BigDecimal bigDecimal) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no BigDecimal/double/Double-argument constructor/factory method to deserialize from Number value (%s)", bigDecimal);
    }

    public Object createFromBigInteger(DeserializationContext deserializationContext, BigInteger bigInteger) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no BigInteger-argument constructor/factory method to deserialize from Number value (%s)", bigInteger);
    }

    public Object createFromBoolean(DeserializationContext deserializationContext, boolean z) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no boolean/Boolean-argument constructor/factory method to deserialize from boolean value (%s)", Boolean.valueOf(z));
    }

    public Object createFromDouble(DeserializationContext deserializationContext, double d2) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no double/Double-argument constructor/factory method to deserialize from Number value (%s)", Double.valueOf(d2));
    }

    public Object createFromInt(DeserializationContext deserializationContext, int i) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no int/Int-argument constructor/factory method to deserialize from Number value (%s)", Integer.valueOf(i));
    }

    public Object createFromLong(DeserializationContext deserializationContext, long j) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no long/Long-argument constructor/factory method to deserialize from Number value (%s)", Long.valueOf(j));
    }

    public Object createFromObjectWith(DeserializationContext deserializationContext, SettableBeanProperty[] settableBeanPropertyArr, PropertyValueBuffer propertyValueBuffer) throws IOException {
        return createFromObjectWith(deserializationContext, propertyValueBuffer.getParameters(settableBeanPropertyArr));
    }

    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no creator with arguments specified", new Object[0]);
    }

    public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, deserializationContext.getParser(), "no String-argument constructor/factory method to deserialize from String value ('%s')", str);
    }

    public Object createUsingArrayDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no array delegate creator specified", new Object[0]);
    }

    public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no default no-arguments constructor found", new Object[0]);
    }

    public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no delegate creator specified", new Object[0]);
    }

    public AnnotatedWithParams getArrayDelegateCreator() {
        return null;
    }

    public JavaType getArrayDelegateType(DeserializationConfig deserializationConfig) {
        return null;
    }

    public AnnotatedWithParams getDefaultCreator() {
        return null;
    }

    public AnnotatedWithParams getDelegateCreator() {
        return null;
    }

    public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
        return null;
    }

    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        return null;
    }

    public Class<?> getValueClass() {
        return Object.class;
    }

    public String getValueTypeDesc() {
        Class<?> valueClass = getValueClass();
        return valueClass == null ? "UNKNOWN" : valueClass.getName();
    }

    public AnnotatedWithParams getWithArgsCreator() {
        return null;
    }
}

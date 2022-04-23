package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.io.IOException;
import java.io.Serializable;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StdValueInstantiator.class */
public class StdValueInstantiator extends ValueInstantiator implements Serializable {
    public SettableBeanProperty[] _arrayDelegateArguments;
    public AnnotatedWithParams _arrayDelegateCreator;
    public JavaType _arrayDelegateType;
    public SettableBeanProperty[] _constructorArguments;
    public AnnotatedWithParams _defaultCreator;
    public SettableBeanProperty[] _delegateArguments;
    public AnnotatedWithParams _delegateCreator;
    public JavaType _delegateType;
    public AnnotatedWithParams _fromBooleanCreator;
    public AnnotatedWithParams _fromDoubleCreator;
    public AnnotatedWithParams _fromIntCreator;
    public AnnotatedWithParams _fromLongCreator;
    public AnnotatedWithParams _fromStringCreator;
    public AnnotatedParameter _incompleteParameter;
    public final String _valueTypeDesc;
    public AnnotatedWithParams _withArgsCreator;

    public StdValueInstantiator(DeserializationConfig deserializationConfig, JavaType javaType) {
        this._valueTypeDesc = javaType == null ? "UNKNOWN TYPE" : javaType.toString();
    }

    public final Object _createUsingDelegate(AnnotatedWithParams annotatedWithParams, SettableBeanProperty[] settableBeanPropertyArr, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (annotatedWithParams != null) {
            try {
                if (settableBeanPropertyArr == null) {
                    return annotatedWithParams.call1(obj);
                }
                int length = settableBeanPropertyArr.length;
                Object[] objArr = new Object[length];
                for (int i = 0; i < length; i++) {
                    SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i];
                    if (settableBeanProperty == null) {
                        objArr[i] = obj;
                    } else {
                        objArr[i] = deserializationContext.findInjectableValue(settableBeanProperty.getInjectableValueId(), settableBeanProperty, null);
                    }
                }
                return annotatedWithParams.call(objArr);
            } catch (Throwable th) {
                throw rewrapCtorProblem(deserializationContext, th);
            }
        } else {
            throw new IllegalStateException("No delegate constructor for " + getValueTypeDesc());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromBoolean() {
        return this._fromBooleanCreator != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromDouble() {
        return this._fromDoubleCreator != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromInt() {
        return this._fromIntCreator != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromLong() {
        return this._fromLongCreator != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromObjectWith() {
        return this._withArgsCreator != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromString() {
        return this._fromStringCreator != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateUsingArrayDelegate() {
        return this._arrayDelegateType != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateUsingDefault() {
        return this._defaultCreator != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateUsingDelegate() {
        return this._delegateType != null;
    }

    public void configureFromArraySettings(AnnotatedWithParams annotatedWithParams, JavaType javaType, SettableBeanProperty[] settableBeanPropertyArr) {
        this._arrayDelegateCreator = annotatedWithParams;
        this._arrayDelegateType = javaType;
        this._arrayDelegateArguments = settableBeanPropertyArr;
    }

    public void configureFromBooleanCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromBooleanCreator = annotatedWithParams;
    }

    public void configureFromDoubleCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromDoubleCreator = annotatedWithParams;
    }

    public void configureFromIntCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromIntCreator = annotatedWithParams;
    }

    public void configureFromLongCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromLongCreator = annotatedWithParams;
    }

    public void configureFromObjectSettings(AnnotatedWithParams annotatedWithParams, AnnotatedWithParams annotatedWithParams2, JavaType javaType, SettableBeanProperty[] settableBeanPropertyArr, AnnotatedWithParams annotatedWithParams3, SettableBeanProperty[] settableBeanPropertyArr2) {
        this._defaultCreator = annotatedWithParams;
        this._delegateCreator = annotatedWithParams2;
        this._delegateType = javaType;
        this._delegateArguments = settableBeanPropertyArr;
        this._withArgsCreator = annotatedWithParams3;
        this._constructorArguments = settableBeanPropertyArr2;
    }

    public void configureFromStringCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromStringCreator = annotatedWithParams;
    }

    public void configureIncompleteParameter(AnnotatedParameter annotatedParameter) {
        this._incompleteParameter = annotatedParameter;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromBoolean(DeserializationContext deserializationContext, boolean z) throws IOException {
        AnnotatedWithParams annotatedWithParams = this._fromBooleanCreator;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call1(Boolean.valueOf(z));
            } catch (Throwable th) {
                throw rewrapCtorProblem(deserializationContext, th);
            }
        } else {
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Boolean value (%s); no single-boolean/Boolean-arg constructor/factory method", getValueTypeDesc(), Boolean.valueOf(z));
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromDouble(DeserializationContext deserializationContext, double d) throws IOException {
        AnnotatedWithParams annotatedWithParams = this._fromDoubleCreator;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call1(Double.valueOf(d));
            } catch (Throwable th) {
                throw rewrapCtorProblem(deserializationContext, th);
            }
        } else {
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Floating-point number (%s); no one-double/Double-arg constructor/factory method", getValueTypeDesc(), Double.valueOf(d));
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromInt(DeserializationContext deserializationContext, int i) throws IOException {
        try {
            if (this._fromIntCreator != null) {
                return this._fromIntCreator.call1(Integer.valueOf(i));
            }
            if (this._fromLongCreator != null) {
                return this._fromLongCreator.call1(Long.valueOf(i));
            }
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Integral number (%s); no single-int-arg constructor/factory method", getValueTypeDesc(), Integer.valueOf(i));
        } catch (Throwable th) {
            throw rewrapCtorProblem(deserializationContext, th);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromLong(DeserializationContext deserializationContext, long j) throws IOException {
        AnnotatedWithParams annotatedWithParams = this._fromLongCreator;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call1(Long.valueOf(j));
            } catch (Throwable th) {
                throw rewrapCtorProblem(deserializationContext, th);
            }
        } else {
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Long integral number (%s); no single-long-arg constructor/factory method", getValueTypeDesc(), Long.valueOf(j));
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        AnnotatedWithParams annotatedWithParams = this._withArgsCreator;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call(objArr);
            } catch (Throwable th) {
                throw rewrapCtorProblem(deserializationContext, th);
            }
        } else {
            throw new IllegalStateException("No with-args constructor for " + getValueTypeDesc());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
        AnnotatedWithParams annotatedWithParams = this._fromStringCreator;
        if (annotatedWithParams == null) {
            return _createFromStringFallbacks(deserializationContext, str);
        }
        try {
            return annotatedWithParams.call1(str);
        } catch (Throwable th) {
            throw rewrapCtorProblem(deserializationContext, th);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createUsingArrayDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        AnnotatedWithParams annotatedWithParams = this._arrayDelegateCreator;
        return annotatedWithParams == null ? createUsingDelegate(deserializationContext, obj) : _createUsingDelegate(annotatedWithParams, this._arrayDelegateArguments, deserializationContext, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
        AnnotatedWithParams annotatedWithParams = this._defaultCreator;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call();
            } catch (Throwable th) {
                throw rewrapCtorProblem(deserializationContext, th);
            }
        } else {
            throw new IllegalStateException("No default constructor for " + getValueTypeDesc());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        return _createUsingDelegate(this._delegateCreator, this._delegateArguments, deserializationContext, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedWithParams getArrayDelegateCreator() {
        return this._arrayDelegateCreator;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public JavaType getArrayDelegateType(DeserializationConfig deserializationConfig) {
        return this._arrayDelegateType;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedWithParams getDefaultCreator() {
        return this._defaultCreator;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedWithParams getDelegateCreator() {
        return this._delegateCreator;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
        return this._delegateType;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        return this._constructorArguments;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedParameter getIncompleteParameter() {
        return this._incompleteParameter;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public String getValueTypeDesc() {
        return this._valueTypeDesc;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
        if ((r6 instanceof java.lang.reflect.InvocationTargetException) != false) goto L_0x0010;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonMappingException rewrapCtorProblem(com.fasterxml.jackson.databind.DeserializationContext r5, java.lang.Throwable r6) {
        /*
            r4 = this;
            r0 = r6
            boolean r0 = r0 instanceof java.lang.ExceptionInInitializerError
            if (r0 != 0) goto L_0x0010
            r0 = r6
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.lang.reflect.InvocationTargetException
            if (r0 == 0) goto L_0x0020
        L_0x0010:
            r0 = r6
            java.lang.Throwable r0 = r0.getCause()
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0020
            r0 = r8
            r7 = r0
        L_0x0020:
            r0 = r4
            r1 = r5
            r2 = r7
            com.fasterxml.jackson.databind.JsonMappingException r0 = r0.wrapAsJsonMappingException(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.StdValueInstantiator.rewrapCtorProblem(com.fasterxml.jackson.databind.DeserializationContext, java.lang.Throwable):com.fasterxml.jackson.databind.JsonMappingException");
    }

    public JsonMappingException wrapAsJsonMappingException(DeserializationContext deserializationContext, Throwable th) {
        return th instanceof JsonMappingException ? (JsonMappingException) th : JsonMappingException.from(deserializationContext.getParser(), String.format("Instantiation of %s value failed (%s): %s", getValueTypeDesc(), th.getClass().getName(), th.getMessage()), th);
    }
}

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/CreatorCandidate.class */
public final class CreatorCandidate {
    protected final AnnotatedWithParams _creator;
    protected final AnnotationIntrospector _intr;
    protected final int _paramCount;
    protected final Param[] _params;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param.class */
    public static final class Param {
        public final AnnotatedParameter annotated;
        public final JacksonInject.Value injection;
        public final BeanPropertyDefinition propDef;

        public Param(AnnotatedParameter annotatedParameter, BeanPropertyDefinition beanPropertyDefinition, JacksonInject.Value value) {
            this.annotated = annotatedParameter;
            this.propDef = beanPropertyDefinition;
            this.injection = value;
        }
    }

    protected CreatorCandidate(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, Param[] paramArr, int i) {
        this._intr = annotationIntrospector;
        this._creator = annotatedWithParams;
        this._params = paramArr;
        this._paramCount = i;
    }

    public static CreatorCandidate construct(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, BeanPropertyDefinition[] beanPropertyDefinitionArr) {
        int parameterCount = annotatedWithParams.getParameterCount();
        Param[] paramArr = new Param[parameterCount];
        for (int i = 0; i < parameterCount; i++) {
            AnnotatedParameter parameter = annotatedWithParams.getParameter(i);
            paramArr[i] = new Param(parameter, beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[i], annotationIntrospector.findInjectableValue(parameter));
        }
        return new CreatorCandidate(annotationIntrospector, annotatedWithParams, paramArr, parameterCount);
    }

    public final AnnotatedWithParams creator() {
        return this._creator;
    }

    public final PropertyName explicitParamName(int i) {
        BeanPropertyDefinition beanPropertyDefinition = this._params[i].propDef;
        if (beanPropertyDefinition == null || !beanPropertyDefinition.isExplicitlyNamed()) {
            return null;
        }
        return beanPropertyDefinition.getFullName();
    }

    public final PropertyName findImplicitParamName(int i) {
        String findImplicitPropertyName = this._intr.findImplicitPropertyName(this._params[i].annotated);
        if (findImplicitPropertyName == null || findImplicitPropertyName.isEmpty()) {
            return null;
        }
        return PropertyName.construct(findImplicitPropertyName);
    }

    public final int findOnlyParamWithoutInjection() {
        int i = 0;
        int i2 = -1;
        while (true) {
            int i3 = i2;
            if (i < this._paramCount) {
                int i4 = i3;
                if (this._params[i].injection == null) {
                    if (i3 >= 0) {
                        return -1;
                    }
                    i4 = i;
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    public final JacksonInject.Value injection(int i) {
        return this._params[i].injection;
    }

    public final int paramCount() {
        return this._paramCount;
    }

    public final PropertyName paramName(int i) {
        BeanPropertyDefinition beanPropertyDefinition = this._params[i].propDef;
        if (beanPropertyDefinition != null) {
            return beanPropertyDefinition.getFullName();
        }
        return null;
    }

    public final AnnotatedParameter parameter(int i) {
        return this._params[i].annotated;
    }

    public final BeanPropertyDefinition propertyDef(int i) {
        return this._params[i].propDef;
    }

    public final String toString() {
        return this._creator.toString();
    }
}

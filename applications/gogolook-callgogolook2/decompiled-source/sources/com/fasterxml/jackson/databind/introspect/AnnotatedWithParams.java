package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.annotation.Annotation;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedWithParams.class */
public abstract class AnnotatedWithParams extends AnnotatedMember {
    public final AnnotationMap[] _paramAnnotations;

    public AnnotatedWithParams(TypeResolutionContext typeResolutionContext, AnnotationMap annotationMap, AnnotationMap[] annotationMapArr) {
        super(typeResolutionContext, annotationMap);
        this._paramAnnotations = annotationMapArr;
    }

    public final void addOrOverrideParam(int i, Annotation annotation) {
        AnnotationMap annotationMap = this._paramAnnotations[i];
        AnnotationMap annotationMap2 = annotationMap;
        if (annotationMap == null) {
            annotationMap2 = new AnnotationMap();
            this._paramAnnotations[i] = annotationMap2;
        }
        annotationMap2.add(annotation);
    }

    public abstract Object call() throws Exception;

    public abstract Object call(Object[] objArr) throws Exception;

    public abstract Object call1(Object obj) throws Exception;

    public final AnnotatedParameter getParameter(int i) {
        return new AnnotatedParameter(this, getParameterType(i), getParameterAnnotations(i), i);
    }

    public final AnnotationMap getParameterAnnotations(int i) {
        AnnotationMap[] annotationMapArr = this._paramAnnotations;
        if (annotationMapArr == null || i < 0 || i >= annotationMapArr.length) {
            return null;
        }
        return annotationMapArr[i];
    }

    public abstract int getParameterCount();

    public abstract JavaType getParameterType(int i);

    public abstract Class<?> getRawParameterType(int i);

    public AnnotatedParameter replaceParameterAnnotations(int i, AnnotationMap annotationMap) {
        this._paramAnnotations[i] = annotationMap;
        return getParameter(i);
    }
}

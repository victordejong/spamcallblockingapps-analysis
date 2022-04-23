package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedWithParams.class */
public abstract class AnnotatedWithParams extends AnnotatedMember {
    protected final AnnotationMap[] _paramAnnotations;

    protected AnnotatedWithParams(AnnotatedWithParams annotatedWithParams, AnnotationMap[] annotationMapArr) {
        super(annotatedWithParams);
        this._paramAnnotations = annotationMapArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedWithParams(TypeResolutionContext typeResolutionContext, AnnotationMap annotationMap, AnnotationMap[] annotationMapArr) {
        super(typeResolutionContext, annotationMap);
        this._paramAnnotations = annotationMapArr;
    }

    public abstract Object call() throws Exception;

    public abstract Object call(Object[] objArr) throws Exception;

    public abstract Object call1(Object obj) throws Exception;

    public final AnnotatedParameter getParameter(int i) {
        return new AnnotatedParameter(this, getParameterType(i), this._typeContext, getParameterAnnotations(i), i);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedParameter replaceParameterAnnotations(int i, AnnotationMap annotationMap) {
        this._paramAnnotations[i] = annotationMap;
        return getParameter(i);
    }
}

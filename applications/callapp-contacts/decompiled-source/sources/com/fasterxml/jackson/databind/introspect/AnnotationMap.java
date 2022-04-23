package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationMap.class */
public final class AnnotationMap implements Annotations {
    protected HashMap<Class<?>, Annotation> _annotations;

    public AnnotationMap() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnnotationMap(HashMap<Class<?>, Annotation> hashMap) {
        this._annotations = hashMap;
    }

    public static AnnotationMap merge(AnnotationMap annotationMap, AnnotationMap annotationMap2) {
        HashMap<Class<?>, Annotation> hashMap;
        if (annotationMap == null || (hashMap = annotationMap._annotations) == null || hashMap.isEmpty()) {
            return annotationMap2;
        }
        AnnotationMap annotationMap3 = annotationMap;
        if (annotationMap2 != null) {
            HashMap<Class<?>, Annotation> hashMap2 = annotationMap2._annotations;
            annotationMap3 = annotationMap;
            if (hashMap2 != null) {
                if (hashMap2.isEmpty()) {
                    annotationMap3 = annotationMap;
                } else {
                    HashMap hashMap3 = new HashMap();
                    for (Annotation annotation : annotationMap2._annotations.values()) {
                        hashMap3.put(annotation.annotationType(), annotation);
                    }
                    for (Annotation annotation2 : annotationMap._annotations.values()) {
                        hashMap3.put(annotation2.annotationType(), annotation2);
                    }
                    annotationMap3 = new AnnotationMap(hashMap3);
                }
            }
        }
        return annotationMap3;
    }

    public static AnnotationMap of(Class<?> cls, Annotation annotation) {
        HashMap hashMap = new HashMap(4);
        hashMap.put(cls, annotation);
        return new AnnotationMap(hashMap);
    }

    protected final boolean _add(Annotation annotation) {
        if (this._annotations == null) {
            this._annotations = new HashMap<>();
        }
        Annotation put = this._annotations.put(annotation.annotationType(), annotation);
        return put == null || !put.equals(annotation);
    }

    public final boolean add(Annotation annotation) {
        return _add(annotation);
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public final <A extends Annotation> A get(Class<A> cls) {
        HashMap<Class<?>, Annotation> hashMap = this._annotations;
        if (hashMap == null) {
            return null;
        }
        return (A) hashMap.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public final boolean has(Class<?> cls) {
        HashMap<Class<?>, Annotation> hashMap = this._annotations;
        if (hashMap == null) {
            return false;
        }
        return hashMap.containsKey(cls);
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public final boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        if (this._annotations == null) {
            return false;
        }
        for (Class<? extends Annotation> cls : clsArr) {
            if (this._annotations.containsKey(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public final int size() {
        HashMap<Class<?>, Annotation> hashMap = this._annotations;
        if (hashMap == null) {
            return 0;
        }
        return hashMap.size();
    }

    public final String toString() {
        HashMap<Class<?>, Annotation> hashMap = this._annotations;
        return hashMap == null ? "[null]" : hashMap.toString();
    }
}

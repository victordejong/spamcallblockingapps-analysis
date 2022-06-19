package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.Annotations;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationCollector.class */
public abstract class AnnotationCollector {
    protected static final Annotations NO_ANNOTATIONS = new NoAnnotations();
    protected final Object _data;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector.class */
    public static class EmptyCollector extends AnnotationCollector {
        public static final EmptyCollector instance = new EmptyCollector(null);

        EmptyCollector(Object obj) {
            super(obj);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationCollector addOrOverride(Annotation annotation) {
            return new OneCollector(this._data, annotation.annotationType(), annotation);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationMap asAnnotationMap() {
            return new AnnotationMap();
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public Annotations asAnnotations() {
            return NO_ANNOTATIONS;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public boolean isPresent(Annotation annotation) {
            return false;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationCollector$NCollector.class */
    static class NCollector extends AnnotationCollector {
        protected final HashMap<Class<?>, Annotation> _annotations;

        public NCollector(Object obj, Class<?> cls, Annotation annotation, Class<?> cls2, Annotation annotation2) {
            super(obj);
            HashMap<Class<?>, Annotation> hashMap = new HashMap<>();
            this._annotations = hashMap;
            hashMap.put(cls, annotation);
            hashMap.put(cls2, annotation2);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationCollector addOrOverride(Annotation annotation) {
            this._annotations.put(annotation.annotationType(), annotation);
            return this;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationMap asAnnotationMap() {
            AnnotationMap annotationMap = new AnnotationMap();
            for (Annotation annotation : this._annotations.values()) {
                annotationMap.add(annotation);
            }
            return annotationMap;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public Annotations asAnnotations() {
            if (this._annotations.size() == 2) {
                Iterator<Map.Entry<Class<?>, Annotation>> it2 = this._annotations.entrySet().iterator();
                Map.Entry<Class<?>, Annotation> next = it2.next();
                Map.Entry<Class<?>, Annotation> next2 = it2.next();
                return new TwoAnnotations(next.getKey(), next.getValue(), next2.getKey(), next2.getValue());
            }
            return new AnnotationMap(this._annotations);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public boolean isPresent(Annotation annotation) {
            return this._annotations.containsKey(annotation.annotationType());
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations.class */
    public static class NoAnnotations implements Annotations, Serializable {
        NoAnnotations() {
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public <A extends Annotation> A get(Class<A> cls) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public boolean has(Class<?> cls) {
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public int size() {
            return 0;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation.class */
    public static class OneAnnotation implements Annotations, Serializable {
        private final Class<?> _type;
        private final Annotation _value;

        public OneAnnotation(Class<?> cls, Annotation annotation) {
            this._type = cls;
            this._value = annotation;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public <A extends Annotation> A get(Class<A> cls) {
            if (this._type == cls) {
                return (A) this._value;
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public boolean has(Class<?> cls) {
            return this._type == cls;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
            for (Class<? extends Annotation> cls : clsArr) {
                if (cls == this._type) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public int size() {
            return 1;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector.class */
    static class OneCollector extends AnnotationCollector {
        private Class<?> _type;
        private Annotation _value;

        public OneCollector(Object obj, Class<?> cls, Annotation annotation) {
            super(obj);
            this._type = cls;
            this._value = annotation;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationCollector addOrOverride(Annotation annotation) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            if (this._type == annotationType) {
                this._value = annotation;
                return this;
            }
            return new NCollector(this._data, this._type, this._value, annotationType, annotation);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationMap asAnnotationMap() {
            return AnnotationMap.m22656of(this._type, this._value);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public Annotations asAnnotations() {
            return new OneAnnotation(this._type, this._value);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public boolean isPresent(Annotation annotation) {
            return annotation.annotationType() == this._type;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations.class */
    public static class TwoAnnotations implements Annotations, Serializable {
        private final Class<?> _type1;
        private final Class<?> _type2;
        private final Annotation _value1;
        private final Annotation _value2;

        public TwoAnnotations(Class<?> cls, Annotation annotation, Class<?> cls2, Annotation annotation2) {
            this._type1 = cls;
            this._value1 = annotation;
            this._type2 = cls2;
            this._value2 = annotation2;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public <A extends Annotation> A get(Class<A> cls) {
            if (this._type1 == cls) {
                return (A) this._value1;
            }
            if (this._type2 != cls) {
                return null;
            }
            return (A) this._value2;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public boolean has(Class<?> cls) {
            return this._type1 == cls || this._type2 == cls;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
            for (Class<? extends Annotation> cls : clsArr) {
                if (cls == this._type1 || cls == this._type2) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.Annotations
        public int size() {
            return 2;
        }
    }

    protected AnnotationCollector(Object obj) {
        this._data = obj;
    }

    public static Annotations emptyAnnotations() {
        return NO_ANNOTATIONS;
    }

    public static AnnotationCollector emptyCollector() {
        return EmptyCollector.instance;
    }

    public abstract AnnotationCollector addOrOverride(Annotation annotation);

    public abstract AnnotationMap asAnnotationMap();

    public abstract Annotations asAnnotations();

    public abstract boolean isPresent(Annotation annotation);
}

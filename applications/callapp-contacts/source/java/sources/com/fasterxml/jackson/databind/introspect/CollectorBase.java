package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/CollectorBase.class */
class CollectorBase {
    protected final AnnotationIntrospector _intr;
    protected static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
    protected static final Annotation[] NO_ANNOTATIONS = new Annotation[0];

    public CollectorBase(AnnotationIntrospector annotationIntrospector) {
        this._intr = annotationIntrospector;
    }

    public static AnnotationMap _emptyAnnotationMap() {
        return new AnnotationMap();
    }

    public static AnnotationMap[] _emptyAnnotationMaps(int i) {
        if (i == 0) {
            return NO_ANNOTATION_MAPS;
        }
        AnnotationMap[] annotationMapArr = new AnnotationMap[i];
        for (int i2 = 0; i2 < i; i2++) {
            annotationMapArr[i2] = _emptyAnnotationMap();
        }
        return annotationMapArr;
    }

    protected static final boolean _ignorableAnnotation(Annotation annotation) {
        return (annotation instanceof Target) || (annotation instanceof Retention);
    }

    public final AnnotationCollector collectAnnotations(AnnotationCollector annotationCollector, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            AnnotationCollector addOrOverride = annotationCollector.addOrOverride(annotation);
            annotationCollector = addOrOverride;
            if (this._intr.isAnnotationBundle(annotation)) {
                annotationCollector = collectFromBundle(addOrOverride, annotation);
            }
        }
        return annotationCollector;
    }

    public final AnnotationCollector collectAnnotations(Annotation[] annotationArr) {
        AnnotationCollector emptyCollector = AnnotationCollector.emptyCollector();
        for (Annotation annotation : annotationArr) {
            AnnotationCollector addOrOverride = emptyCollector.addOrOverride(annotation);
            emptyCollector = addOrOverride;
            if (this._intr.isAnnotationBundle(annotation)) {
                emptyCollector = collectFromBundle(addOrOverride, annotation);
            }
        }
        return emptyCollector;
    }

    public final AnnotationCollector collectDefaultAnnotations(AnnotationCollector annotationCollector, Annotation[] annotationArr) {
        int length = annotationArr.length;
        int i = 0;
        while (true) {
            AnnotationCollector annotationCollector2 = annotationCollector;
            if (i < length) {
                Annotation annotation = annotationArr[i];
                annotationCollector = annotationCollector2;
                if (!annotationCollector2.isPresent(annotation)) {
                    AnnotationCollector addOrOverride = annotationCollector2.addOrOverride(annotation);
                    annotationCollector = addOrOverride;
                    if (this._intr.isAnnotationBundle(annotation)) {
                        annotationCollector = collectDefaultFromBundle(addOrOverride, annotation);
                    }
                }
                i++;
            } else {
                return annotationCollector2;
            }
        }
    }

    protected final AnnotationCollector collectDefaultFromBundle(AnnotationCollector annotationCollector, Annotation annotation) {
        Annotation[] findClassAnnotations = ClassUtil.findClassAnnotations(annotation.annotationType());
        int length = findClassAnnotations.length;
        int i = 0;
        while (true) {
            AnnotationCollector annotationCollector2 = annotationCollector;
            if (i < length) {
                Annotation annotation2 = findClassAnnotations[i];
                annotationCollector = annotationCollector2;
                if (!_ignorableAnnotation(annotation2)) {
                    annotationCollector = annotationCollector2;
                    if (!annotationCollector2.isPresent(annotation2)) {
                        AnnotationCollector addOrOverride = annotationCollector2.addOrOverride(annotation2);
                        annotationCollector = addOrOverride;
                        if (this._intr.isAnnotationBundle(annotation2)) {
                            annotationCollector = collectFromBundle(addOrOverride, annotation2);
                        }
                    }
                }
                i++;
            } else {
                return annotationCollector2;
            }
        }
    }

    protected final AnnotationCollector collectFromBundle(AnnotationCollector annotationCollector, Annotation annotation) {
        Annotation[] findClassAnnotations = ClassUtil.findClassAnnotations(annotation.annotationType());
        int length = findClassAnnotations.length;
        int i = 0;
        while (true) {
            AnnotationCollector annotationCollector2 = annotationCollector;
            if (i < length) {
                Annotation annotation2 = findClassAnnotations[i];
                annotationCollector = annotationCollector2;
                if (!_ignorableAnnotation(annotation2)) {
                    if (this._intr.isAnnotationBundle(annotation2)) {
                        annotationCollector = annotationCollector2;
                        if (!annotationCollector2.isPresent(annotation2)) {
                            annotationCollector = collectFromBundle(annotationCollector2.addOrOverride(annotation2), annotation2);
                        }
                    } else {
                        annotationCollector = annotationCollector2.addOrOverride(annotation2);
                    }
                }
                i++;
            } else {
                return annotationCollector2;
            }
        }
    }
}

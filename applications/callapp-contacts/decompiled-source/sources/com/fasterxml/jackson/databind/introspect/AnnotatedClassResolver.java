package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedClassResolver.class */
public class AnnotatedClassResolver {
    private final TypeBindings _bindings;
    private final Class<?> _class;
    private final boolean _collectAnnotations;
    private final MapperConfig<?> _config;
    private final AnnotationIntrospector _intr;
    private final ClassIntrospector.MixInResolver _mixInResolver;
    private final Class<?> _primaryMixin;
    private final JavaType _type;
    private static final Annotations NO_ANNOTATIONS = AnnotationCollector.emptyAnnotations();
    private static final Class<?> CLS_OBJECT = Object.class;
    private static final Class<?> CLS_ENUM = Enum.class;
    private static final Class<?> CLS_LIST = List.class;
    private static final Class<?> CLS_MAP = Map.class;

    AnnotatedClassResolver(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        this._config = mapperConfig;
        this._type = javaType;
        Class<?> rawClass = javaType.getRawClass();
        this._class = rawClass;
        this._mixInResolver = mixInResolver;
        this._bindings = javaType.getBindings();
        Class<?> cls = null;
        AnnotationIntrospector annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
        this._intr = annotationIntrospector;
        if (mixInResolver != null) {
            cls = mixInResolver.findMixInClassFor(rawClass);
        }
        this._primaryMixin = cls;
        this._collectAnnotations = annotationIntrospector != null && (!ClassUtil.isJDKClass(rawClass) || !javaType.isContainerType());
    }

    AnnotatedClassResolver(MapperConfig<?> mapperConfig, Class<?> cls, ClassIntrospector.MixInResolver mixInResolver) {
        Class<?> cls2;
        this._config = mapperConfig;
        this._type = null;
        this._class = cls;
        this._mixInResolver = mixInResolver;
        this._bindings = TypeBindings.emptyBindings();
        if (mapperConfig == null) {
            this._intr = null;
            cls2 = null;
        } else {
            this._intr = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
            cls2 = mixInResolver == null ? null : mixInResolver.findMixInClassFor(cls);
        }
        this._primaryMixin = cls2;
        this._collectAnnotations = this._intr != null;
    }

    private AnnotationCollector _addAnnotationsIfNotPresent(AnnotationCollector annotationCollector, Annotation[] annotationArr) {
        AnnotationCollector annotationCollector2 = annotationCollector;
        if (annotationArr != null) {
            int length = annotationArr.length;
            int i = 0;
            while (true) {
                annotationCollector2 = annotationCollector;
                if (i >= length) {
                    break;
                }
                Annotation annotation = annotationArr[i];
                annotationCollector = annotationCollector;
                if (!annotationCollector.isPresent(annotation)) {
                    AnnotationCollector addOrOverride = annotationCollector.addOrOverride(annotation);
                    annotationCollector = addOrOverride;
                    if (this._intr.isAnnotationBundle(annotation)) {
                        annotationCollector = _addFromBundleIfNotPresent(addOrOverride, annotation);
                    }
                }
                i++;
            }
        }
        return annotationCollector2;
    }

    private AnnotationCollector _addClassMixIns(AnnotationCollector annotationCollector, Class<?> cls, Class<?> cls2) {
        AnnotationCollector annotationCollector2 = annotationCollector;
        if (cls2 != null) {
            AnnotationCollector _addAnnotationsIfNotPresent = _addAnnotationsIfNotPresent(annotationCollector, ClassUtil.findClassAnnotations(cls2));
            Iterator<Class<?>> it2 = ClassUtil.findSuperClasses(cls2, cls, false).iterator();
            while (true) {
                annotationCollector2 = _addAnnotationsIfNotPresent;
                if (!it2.hasNext()) {
                    break;
                }
                _addAnnotationsIfNotPresent = _addAnnotationsIfNotPresent(_addAnnotationsIfNotPresent, ClassUtil.findClassAnnotations(it2.next()));
            }
        }
        return annotationCollector2;
    }

    private AnnotationCollector _addFromBundleIfNotPresent(AnnotationCollector annotationCollector, Annotation annotation) {
        Annotation[] findClassAnnotations;
        for (Annotation annotation2 : ClassUtil.findClassAnnotations(annotation.annotationType())) {
            annotationCollector = annotationCollector;
            if (!(annotation2 instanceof Target)) {
                annotationCollector = annotationCollector;
                if (!(annotation2 instanceof Retention)) {
                    annotationCollector = annotationCollector;
                    if (!annotationCollector.isPresent(annotation2)) {
                        AnnotationCollector addOrOverride = annotationCollector.addOrOverride(annotation2);
                        annotationCollector = addOrOverride;
                        if (this._intr.isAnnotationBundle(annotation2)) {
                            annotationCollector = _addFromBundleIfNotPresent(addOrOverride, annotation2);
                        }
                    }
                }
            }
        }
        return annotationCollector;
    }

    private static void _addSuperInterfaces(JavaType javaType, List<JavaType> list, boolean z) {
        Class<?> rawClass = javaType.getRawClass();
        if (z) {
            if (!_contains(list, rawClass)) {
                list.add(javaType);
                if (rawClass == CLS_LIST || rawClass == CLS_MAP) {
                    return;
                }
            } else {
                return;
            }
        }
        for (JavaType javaType2 : javaType.getInterfaces()) {
            _addSuperInterfaces(javaType2, list, true);
        }
    }

    private static void _addSuperTypes(JavaType javaType, List<JavaType> list, boolean z) {
        while (true) {
            Class<?> rawClass = javaType.getRawClass();
            if (rawClass != CLS_OBJECT && rawClass != CLS_ENUM) {
                if (z) {
                    if (!_contains(list, rawClass)) {
                        list.add(javaType);
                    } else {
                        return;
                    }
                }
                for (JavaType javaType2 : javaType.getInterfaces()) {
                    _addSuperInterfaces(javaType2, list, true);
                }
                javaType = javaType.getSuperClass();
                if (javaType != null) {
                    z = true;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static boolean _contains(List<JavaType> list, Class<?> cls) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).getRawClass() == cls) {
                return true;
            }
        }
        return false;
    }

    static AnnotatedClass createArrayType(MapperConfig<?> mapperConfig, Class<?> cls) {
        return new AnnotatedClass(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnnotatedClass createPrimordial(Class<?> cls) {
        return new AnnotatedClass(cls);
    }

    public static AnnotatedClass resolve(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return (!javaType.isArrayType() || !skippableArray(mapperConfig, javaType.getRawClass())) ? new AnnotatedClassResolver(mapperConfig, javaType, mixInResolver).resolveFully() : createArrayType(mapperConfig, javaType.getRawClass());
    }

    private Annotations resolveClassAnnotations(List<JavaType> list) {
        if (this._intr == null) {
            return NO_ANNOTATIONS;
        }
        ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
        boolean z = mixInResolver != null && (!(mixInResolver instanceof SimpleMixInResolver) || ((SimpleMixInResolver) mixInResolver).hasMixIns());
        if (!(z || this._collectAnnotations)) {
            return NO_ANNOTATIONS;
        }
        AnnotationCollector emptyCollector = AnnotationCollector.emptyCollector();
        Class<?> cls = this._primaryMixin;
        AnnotationCollector annotationCollector = emptyCollector;
        if (cls != null) {
            annotationCollector = _addClassMixIns(emptyCollector, this._class, cls);
        }
        AnnotationCollector annotationCollector2 = annotationCollector;
        if (this._collectAnnotations) {
            annotationCollector2 = _addAnnotationsIfNotPresent(annotationCollector, ClassUtil.findClassAnnotations(this._class));
        }
        for (JavaType javaType : list) {
            AnnotationCollector annotationCollector3 = annotationCollector2;
            if (z) {
                Class<?> rawClass = javaType.getRawClass();
                annotationCollector3 = _addClassMixIns(annotationCollector2, rawClass, this._mixInResolver.findMixInClassFor(rawClass));
            }
            annotationCollector2 = annotationCollector3;
            if (this._collectAnnotations) {
                annotationCollector2 = _addAnnotationsIfNotPresent(annotationCollector3, ClassUtil.findClassAnnotations(javaType.getRawClass()));
            }
        }
        AnnotationCollector annotationCollector4 = annotationCollector2;
        if (z) {
            annotationCollector4 = _addClassMixIns(annotationCollector2, Object.class, this._mixInResolver.findMixInClassFor(Object.class));
        }
        return annotationCollector4.asAnnotations();
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> mapperConfig, Class<?> cls) {
        return resolveWithoutSuperTypes(mapperConfig, cls, mapperConfig);
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> mapperConfig, Class<?> cls, ClassIntrospector.MixInResolver mixInResolver) {
        return (!cls.isArray() || !skippableArray(mapperConfig, cls)) ? new AnnotatedClassResolver(mapperConfig, cls, mixInResolver).resolveWithoutSuperTypes() : createArrayType(mapperConfig, cls);
    }

    private static boolean skippableArray(MapperConfig<?> mapperConfig, Class<?> cls) {
        return mapperConfig == null || mapperConfig.findMixInClassFor(cls) == null;
    }

    AnnotatedClass resolveFully() {
        ArrayList arrayList = new ArrayList(8);
        if (!this._type.hasRawClass(Object.class)) {
            if (this._type.isInterface()) {
                _addSuperInterfaces(this._type, arrayList, false);
            } else {
                _addSuperTypes(this._type, arrayList, false);
            }
        }
        return new AnnotatedClass(this._type, this._class, arrayList, this._primaryMixin, resolveClassAnnotations(arrayList), this._bindings, this._intr, this._mixInResolver, this._config.getTypeFactory(), this._collectAnnotations);
    }

    AnnotatedClass resolveWithoutSuperTypes() {
        List<JavaType> emptyList = Collections.emptyList();
        return new AnnotatedClass(null, this._class, emptyList, this._primaryMixin, resolveClassAnnotations(emptyList), this._bindings, this._intr, this._mixInResolver, this._config.getTypeFactory(), this._collectAnnotations);
    }
}

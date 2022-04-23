package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.util.Collection;
import java.util.Map;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Verbosity;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/AnnotationFactory.class */
class AnnotationFactory {
    private final Format format;
    private final boolean required;

    public AnnotationFactory(Detail detail, Support support) {
        this.required = detail.isRequired();
        this.format = support.getFormat();
    }

    private ClassLoader getClassLoader() throws Exception {
        return AnnotationFactory.class.getClassLoader();
    }

    private Annotation getInstance(Class cls) throws Exception {
        ClassLoader classLoader = getClassLoader();
        return cls.isArray() ? isPrimitive(cls.getComponentType()) ? getInstance(classLoader, Element.class) : getInstance(classLoader, ElementArray.class) : (!isPrimitive(cls) || !isAttribute()) ? getInstance(classLoader, Element.class) : getInstance(classLoader, Attribute.class);
    }

    private Annotation getInstance(ClassLoader classLoader, Class cls) throws Exception {
        return getInstance(classLoader, cls, false);
    }

    private Annotation getInstance(ClassLoader classLoader, Class cls, boolean z) throws Exception {
        return (Annotation) Proxy.newProxyInstance(classLoader, new Class[]{cls}, new AnnotationHandler(cls, this.required, z));
    }

    private boolean isAttribute() {
        Verbosity verbosity = this.format.getVerbosity();
        boolean z = false;
        if (verbosity != null) {
            z = false;
            if (verbosity == Verbosity.LOW) {
                z = true;
            }
        }
        return z;
    }

    private boolean isPrimitive(Class cls) {
        if (Number.class.isAssignableFrom(cls) || cls == Boolean.class || cls == Character.class) {
            return true;
        }
        return cls.isPrimitive();
    }

    private boolean isPrimitiveKey(Class[] clsArr) {
        if (clsArr == null || clsArr.length <= 0) {
            return false;
        }
        Class superclass = clsArr[0].getSuperclass();
        Class cls = clsArr[0];
        if (superclass == null || (!superclass.isEnum() && !cls.isEnum())) {
            return isPrimitive(cls);
        }
        return true;
    }

    public Annotation getInstance(Class cls, Class[] clsArr) throws Exception {
        ClassLoader classLoader = getClassLoader();
        return Map.class.isAssignableFrom(cls) ? (!isPrimitiveKey(clsArr) || !isAttribute()) ? getInstance(classLoader, ElementMap.class) : getInstance(classLoader, ElementMap.class, true) : Collection.class.isAssignableFrom(cls) ? getInstance(classLoader, ElementList.class) : getInstance(cls);
    }
}

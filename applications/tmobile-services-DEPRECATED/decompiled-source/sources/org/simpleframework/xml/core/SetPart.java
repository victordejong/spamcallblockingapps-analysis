package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/SetPart.class */
class SetPart implements MethodPart {
    private final Cache<Annotation> cache = new ConcurrentCache();
    private final Annotation label;
    private final Annotation[] list;
    private final Method method;
    private final String name;
    private final MethodType type;

    public SetPart(MethodName methodName, Annotation annotation, Annotation[] annotationArr) {
        this.method = methodName.getMethod();
        this.name = methodName.getName();
        this.type = methodName.getType();
        this.label = annotation;
        this.list = annotationArr;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        Annotation[] annotationArr;
        if (this.cache.isEmpty()) {
            for (Annotation annotation : this.list) {
                this.cache.cache(annotation.annotationType(), annotation);
            }
        }
        return (T) this.cache.fetch(cls);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getDeclaringClass() {
        return this.method.getDeclaringClass();
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getDependent() {
        return Reflector.getParameterDependent(this.method, 0);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class[] getDependents() {
        return Reflector.getParameterDependents(this.method, 0);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Method getMethod() {
        if (!this.method.isAccessible()) {
            this.method.setAccessible(true);
        }
        return this.method;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public MethodType getMethodType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getType() {
        return this.method.getParameterTypes()[0];
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public String toString() {
        return this.method.toGenericString();
    }
}

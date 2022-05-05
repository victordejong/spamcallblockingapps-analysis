package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/MethodDetail.class */
class MethodDetail {
    private final Annotation[] list;
    private final Method method;
    private final String name;

    public MethodDetail(Method method) {
        this.list = method.getDeclaredAnnotations();
        this.name = method.getName();
        this.method = method;
    }

    public Annotation[] getAnnotations() {
        return this.list;
    }

    public Method getMethod() {
        return this.method;
    }

    public String getName() {
        return this.name;
    }
}

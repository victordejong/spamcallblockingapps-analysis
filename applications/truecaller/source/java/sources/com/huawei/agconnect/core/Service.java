package com.huawei.agconnect.core;

import com.huawei.agconnect.annotation.Singleton;
import java.lang.reflect.Modifier;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/Service.class */
public class Service {

    /* renamed from: a */
    private final Class<?> f7152a;

    /* renamed from: b */
    private final Class<?> f7153b;

    /* renamed from: c */
    private final Object f7154c;

    /* renamed from: d */
    private boolean f7155d;

    /* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/Service$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public Class<?> f7156a;

        /* renamed from: b */
        public Class<?> f7157b;

        /* renamed from: c */
        public Object f7158c;

        /* renamed from: d */
        private boolean f7159d;

        public Service build() {
            Class<?> cls = this.f7156a;
            if (cls != null) {
                Class<?> cls2 = this.f7157b;
                if (cls2 != null) {
                    if (cls2.isInterface() || !Modifier.isPublic(this.f7157b.getModifiers())) {
                        throw new IllegalArgumentException("the clazz parameter cant be interface type or not public");
                    }
                    Service service = new Service((Class) this.f7156a, (Class) this.f7157b);
                    service.f7155d = this.f7159d;
                    return service;
                }
                Object obj = this.f7158c;
                if (obj == null) {
                    throw new IllegalArgumentException("the clazz or object parameter must set one");
                }
                Service service2 = new Service(cls, obj);
                service2.f7155d = this.f7159d;
                return service2;
            }
            throw new IllegalArgumentException("the interface parameter cannot be NULL");
        }

        public Builder isSingleton(boolean z) {
            this.f7159d = z;
            return this;
        }

        public Builder setClass(Class<?> cls) {
            this.f7157b = cls;
            return this;
        }

        public Builder setInterface(Class<?> cls) {
            this.f7156a = cls;
            return this;
        }

        public Builder setObject(Object obj) {
            this.f7158c = obj;
            return this;
        }
    }

    private Service(Class<?> cls, Class<?> cls2) {
        this.f7152a = cls;
        this.f7153b = cls2;
        this.f7154c = null;
    }

    private Service(Class<?> cls, Object obj) {
        this.f7152a = cls;
        this.f7153b = null;
        this.f7154c = obj;
    }

    public static Builder builder(Class<?> cls) {
        return new Builder().setInterface(cls).setClass(cls).isSingleton(cls.isAnnotationPresent(Singleton.class));
    }

    public static Builder builder(Class<?> cls, Class<?> cls2) {
        return new Builder().setInterface(cls).setClass(cls2).isSingleton(cls2.isAnnotationPresent(Singleton.class));
    }

    public static Builder builder(Class<?> cls, Object obj) {
        return new Builder().setInterface(cls).setObject(obj).isSingleton(true);
    }

    public Object getInstance() {
        return this.f7154c;
    }

    public Class<?> getInterface() {
        return this.f7152a;
    }

    public Class<?> getType() {
        return this.f7153b;
    }

    public boolean isSingleton() {
        return this.f7155d;
    }
}

package com.google.firebase.encoders;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/FieldDescriptor.class */
public final class FieldDescriptor {
    private final String name;
    private final Map<Class<?>, Object> properties;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/FieldDescriptor$Builder.class */
    public static final class Builder {
        private final String name;
        private Map<Class<?>, Object> properties = null;

        Builder(String str) {
            this.name = str;
        }

        public FieldDescriptor build() {
            return new FieldDescriptor(this.name, this.properties == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.properties)));
        }

        public <T extends Annotation> Builder withProperty(T t) {
            if (this.properties == null) {
                this.properties = new HashMap();
            }
            this.properties.put(t.annotationType(), t);
            return this;
        }
    }

    private FieldDescriptor(String str, Map<Class<?>, Object> map) {
        this.name = str;
        this.properties = map;
    }

    public static Builder builder(String str) {
        return new Builder(str);
    }

    /* renamed from: of */
    public static FieldDescriptor m1338of(String str) {
        return new FieldDescriptor(str, Collections.emptyMap());
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldDescriptor)) {
            return false;
        }
        FieldDescriptor fieldDescriptor = (FieldDescriptor) obj;
        if (!this.name.equals(fieldDescriptor.name) || !this.properties.equals(fieldDescriptor.properties)) {
            z = false;
        }
        return z;
    }

    public String getName() {
        return this.name;
    }

    public <T extends Annotation> T getProperty(Class<T> cls) {
        return (T) this.properties.get(cls);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.properties.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.name + ", properties=" + this.properties.values() + "}";
    }
}

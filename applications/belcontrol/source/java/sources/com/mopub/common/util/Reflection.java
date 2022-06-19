package com.mopub.common.util;

import com.mopub.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Reflection.class */
public class Reflection {

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Reflection$MethodBuilder.class */
    public static class MethodBuilder {

        /* renamed from: a */
        public final Object f4527a;

        /* renamed from: b */
        public final String f4528b;

        /* renamed from: c */
        public Class<?> f4529c;

        /* renamed from: d */
        public List<Class<?>> f4530d = new ArrayList();

        /* renamed from: e */
        public List<Object> f4531e = new ArrayList();

        /* renamed from: f */
        public boolean f4532f;

        /* renamed from: g */
        public boolean f4533g;

        public MethodBuilder(Object obj, String str) {
            Preconditions.checkNotNull(str);
            this.f4527a = obj;
            this.f4528b = str;
            this.f4529c = obj != null ? obj.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t) {
            Preconditions.checkNotNull(cls);
            this.f4530d.add(cls);
            this.f4531e.add(t);
            return this;
        }

        public MethodBuilder addParam(String str, Object obj) {
            Preconditions.checkNotNull(str);
            this.f4530d.add(Class.forName(str));
            this.f4531e.add(obj);
            return this;
        }

        public Object execute() {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.f4529c, this.f4528b, (Class[]) this.f4530d.toArray(new Class[this.f4530d.size()]));
            if (this.f4532f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            return declaredMethodWithTraversal.invoke(this.f4533g ? null : this.f4527a, this.f4531e.toArray());
        }

        public MethodBuilder setAccessible() {
            this.f4532f = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> cls) {
            Preconditions.checkNotNull(cls);
            this.f4533g = true;
            this.f4529c = cls;
            return this;
        }

        public MethodBuilder setStatic(String str) {
            Preconditions.checkNotNull(str);
            this.f4533g = true;
            this.f4529c = Class.forName(str);
            return this;
        }
    }

    public static boolean classFound(String str) {
        Preconditions.checkNotNull(str);
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String str, Class<?>... clsArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(clsArr);
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static Field getPrivateField(Class cls, String str) {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    public static <T> T instantiateClassWithConstructor(String str, Class<? extends T> cls, Class[] clsArr, Object[] objArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(clsArr);
        Preconditions.checkNotNull(objArr);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(clsArr);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(objArr);
    }

    public static <T> T instantiateClassWithEmptyConstructor(String str, Class<? extends T> cls) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }
}

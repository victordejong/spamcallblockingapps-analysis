package com.mopub.common.util;

import com.mopub.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Reflection.class */
public class Reflection {

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Reflection$MethodBuilder.class */
    public static class MethodBuilder {

        /* renamed from: a  reason: collision with root package name */
        private final Object f34002a;

        /* renamed from: b  reason: collision with root package name */
        private final String f34003b;

        /* renamed from: c  reason: collision with root package name */
        private Class<?> f34004c;

        /* renamed from: d  reason: collision with root package name */
        private List<Class<?>> f34005d = new ArrayList();
        private List<Object> e = new ArrayList();
        private boolean f;
        private boolean g;

        public MethodBuilder(Object obj, String str) {
            Preconditions.checkNotNull(str);
            this.f34002a = obj;
            this.f34003b = str;
            this.f34004c = obj != null ? obj.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t) {
            Preconditions.checkNotNull(cls);
            this.f34005d.add(cls);
            this.e.add(t);
            return this;
        }

        public MethodBuilder addParam(String str, Object obj) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.f34005d.add(Class.forName(str));
            this.e.add(obj);
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.f34004c, this.f34003b, (Class[]) this.f34005d.toArray(new Class[this.f34005d.size()]));
            if (this.f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.e.toArray();
            return this.g ? declaredMethodWithTraversal.invoke(null, array) : declaredMethodWithTraversal.invoke(this.f34002a, array);
        }

        public MethodBuilder setAccessible() {
            this.f = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> cls) {
            Preconditions.checkNotNull(cls);
            this.g = true;
            this.f34004c = cls;
            return this;
        }

        public MethodBuilder setStatic(String str) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.g = true;
            this.f34004c = Class.forName(str);
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

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
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

    public static Field getPrivateField(Class cls, String str) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    public static <T> T instantiateClassWithConstructor(String str, Class<? extends T> cls, Class[] clsArr, Object[] objArr) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(clsArr);
        Preconditions.checkNotNull(objArr);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(clsArr);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(objArr);
    }

    public static <T> T instantiateClassWithEmptyConstructor(String str, Class<? extends T> cls) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException, NullPointerException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }
}

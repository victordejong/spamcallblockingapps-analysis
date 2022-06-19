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

        /* renamed from: a */
        private final Object f59019a;

        /* renamed from: b */
        private final String f59020b;

        /* renamed from: c */
        private Class<?> f59021c;

        /* renamed from: d */
        private List<Class<?>> f59022d = new ArrayList();

        /* renamed from: e */
        private List<Object> f59023e = new ArrayList();

        /* renamed from: f */
        private boolean f59024f;

        /* renamed from: g */
        private boolean f59025g;

        public MethodBuilder(Object obj, String str) {
            Preconditions.checkNotNull(str);
            this.f59019a = obj;
            this.f59020b = str;
            this.f59021c = obj != null ? obj.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t) {
            Preconditions.checkNotNull(cls);
            this.f59022d.add(cls);
            this.f59023e.add(t);
            return this;
        }

        public MethodBuilder addParam(String str, Object obj) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.f59022d.add(Class.forName(str));
            this.f59023e.add(obj);
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.f59021c, this.f59020b, (Class[]) this.f59022d.toArray(new Class[this.f59022d.size()]));
            if (this.f59024f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.f59023e.toArray();
            return this.f59025g ? declaredMethodWithTraversal.invoke(null, array) : declaredMethodWithTraversal.invoke(this.f59019a, array);
        }

        public MethodBuilder setAccessible() {
            this.f59024f = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> cls) {
            Preconditions.checkNotNull(cls);
            this.f59025g = true;
            this.f59021c = cls;
            return this;
        }

        public MethodBuilder setStatic(String str) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.f59025g = true;
            this.f59021c = Class.forName(str);
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

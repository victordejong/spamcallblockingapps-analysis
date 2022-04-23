package com.mopub.common.util;

import com.mopub.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Reflection.class */
public class Reflection {

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Reflection$MethodBuilder.class */
    public static class MethodBuilder {

        /* renamed from: a */
        public final Object f33952a;

        /* renamed from: b */
        public final String f33953b;

        /* renamed from: c */
        public Class<?> f33954c;

        /* renamed from: d */
        public List<Class<?>> f33955d = new ArrayList();

        /* renamed from: e */
        public List<Object> f33956e = new ArrayList();

        /* renamed from: f */
        public boolean f33957f;

        /* renamed from: g */
        public boolean f33958g;

        public MethodBuilder(Object obj, String str) {
            Preconditions.checkNotNull(str);
            this.f33952a = obj;
            this.f33953b = str;
            this.f33954c = obj != null ? obj.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t) {
            Preconditions.checkNotNull(cls);
            this.f33955d.add(cls);
            this.f33956e.add(t);
            return this;
        }

        public MethodBuilder addParam(String str, Object obj) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.f33955d.add(Class.forName(str));
            this.f33956e.add(obj);
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.f33954c, this.f33953b, (Class[]) this.f33955d.toArray(new Class[this.f33955d.size()]));
            if (this.f33957f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.f33956e.toArray();
            return this.f33958g ? declaredMethodWithTraversal.invoke(null, array) : declaredMethodWithTraversal.invoke(this.f33952a, array);
        }

        public MethodBuilder setAccessible() {
            this.f33957f = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> cls) {
            Preconditions.checkNotNull(cls);
            this.f33958g = true;
            this.f33954c = cls;
            return this;
        }

        public MethodBuilder setStatic(String str) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.f33958g = true;
            this.f33954c = Class.forName(str);
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

package com.aotter.net.trek.common.util;

import androidx.annotation.NonNull;
import com.aotter.net.trek.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/Reflection.class */
public class Reflection {

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/Reflection$MethodBuilder.class */
    public class MethodBuilder {

        /* renamed from: a */
        public final Object f1536a;

        /* renamed from: b */
        public final String f1537b;

        /* renamed from: c */
        public Class<?> f1538c;

        /* renamed from: d */
        public List<Class<?>> f1539d = new ArrayList();

        /* renamed from: e */
        public List<Object> f1540e = new ArrayList();

        /* renamed from: f */
        public boolean f1541f;

        /* renamed from: g */
        public boolean f1542g;

        public MethodBuilder(Object obj, String str) {
            this.f1536a = obj;
            this.f1537b = str;
            this.f1538c = obj != null ? obj.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t) {
            this.f1539d.add(cls);
            this.f1540e.add(t);
            return this;
        }

        public Object execute() {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.f1538c, this.f1537b, (Class[]) this.f1539d.toArray(new Class[this.f1539d.size()]));
            if (this.f1541f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            return declaredMethodWithTraversal.invoke(this.f1542g ? null : this.f1536a, this.f1540e.toArray());
        }

        public MethodBuilder setAccessible() {
            this.f1541f = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> cls) {
            this.f1542g = true;
            this.f1538c = cls;
            return this;
        }
    }

    public static boolean classFound(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String str, Class<?>... clsArr) {
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static <T> T instantiateClassWithEmptyConstructor(@NonNull String str, @NonNull Class<? extends T> cls) {
        Preconditions.checkNotNull(str);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }
}

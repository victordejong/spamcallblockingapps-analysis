package com.e.b;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/e/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Field> f18874a = new HashMap();

    public static Object a(Object obj, String str) throws IllegalAccessException {
        d.a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field a2 = a(cls, str);
        d.a(a2 != null, "Cannot locate field %s on %s", str, cls);
        return a(a2, obj, false);
    }

    public static Object a(String str, String str2) throws IllegalAccessException {
        try {
            Class<?> cls = Class.forName(str);
            Field a2 = a(cls, str2);
            d.a(a2 != null, "Cannot locate field '%s' on %s", str2, cls);
            d.a(a2 != null, "The field must not be null", new Object[0]);
            d.a(Modifier.isStatic(a2.getModifiers()), "The field '%s' is not static", a2.getName());
            return a(a2, (Object) null, true);
        } catch (Throwable th) {
            c.a(th);
            return null;
        }
    }

    public static Object a(Field field, Object obj) throws IllegalAccessException {
        return a(field, obj, true);
    }

    public static Object a(Field field, Object obj, boolean z) throws IllegalAccessException {
        d.a(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            b.a((AccessibleObject) field);
        } else {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    private static Field a(Class<?> cls, String str) {
        Field field;
        d.a(cls != null, "The class must not be null", new Object[0]);
        d.a(!c.a(str), "The field name must not be blank/empty", new Object[0]);
        String str2 = cls.toString() + "#" + str;
        synchronized (f18874a) {
            field = f18874a.get(str2);
        }
        if (field != null) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                Field declaredField = cls2.getDeclaredField(str);
                if (!Modifier.isPublic(declaredField.getModifiers())) {
                    declaredField.setAccessible(true);
                }
                synchronized (f18874a) {
                    f18874a.put(str2, declaredField);
                }
                return declaredField;
            } catch (NoSuchFieldException e) {
            }
        }
        Field field2 = null;
        for (Class<?> cls3 : c.a(cls)) {
            try {
                field2 = cls3.getField(str);
                d.a(field2 == null, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.", str, cls);
            } catch (NoSuchFieldException e2) {
            }
        }
        synchronized (f18874a) {
            f18874a.put(str2, field2);
        }
        return field2;
    }

    private static Field a(Class<?> cls, String str, boolean z) {
        d.a(cls != null, "The class must not be null", new Object[0]);
        d.a(!c.a(str), "The field name must not be blank/empty", new Object[0]);
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (!b.a((Member) declaredField)) {
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    public static void a(Object obj, String str, Object obj2) throws IllegalAccessException {
        d.a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field a2 = a(cls, str);
        d.a(a2 != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        d.a(a2 != null, "The field must not be null", new Object[0]);
        if (!a2.isAccessible()) {
            a2.setAccessible(true);
        } else {
            b.a((AccessibleObject) a2);
        }
        a2.set(obj, obj2);
    }

    public static Field b(String str, String str2) {
        try {
            return a(Class.forName(str), str2, true);
        } catch (Throwable th) {
            c.a(th);
            return null;
        }
    }
}

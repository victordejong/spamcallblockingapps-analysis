package com.p269e.p272b;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.e.b.a */
/* loaded from: classes2-dex2jar.jar:com/e/b/a.class */
public final class C9341a {

    /* renamed from: a */
    private static Map<String, Field> f31967a = new HashMap();

    /* renamed from: a */
    public static Object m24679a(Object obj, String str) throws IllegalAccessException {
        C9344d.m24667a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field m24681a = m24681a(cls, str);
        C9344d.m24667a(m24681a != null, "Cannot locate field %s on %s", str, cls);
        return m24675a(m24681a, obj, false);
    }

    /* renamed from: a */
    public static Object m24677a(String str, String str2) throws IllegalAccessException {
        try {
            Class<?> cls = Class.forName(str);
            Field m24681a = m24681a(cls, str2);
            C9344d.m24667a(m24681a != null, "Cannot locate field '%s' on %s", str2, cls);
            C9344d.m24667a(m24681a != null, "The field must not be null", new Object[0]);
            C9344d.m24667a(Modifier.isStatic(m24681a.getModifiers()), "The field '%s' is not static", m24681a.getName());
            return m24675a(m24681a, (Object) null, true);
        } catch (Throwable th) {
            C9343c.m24668a(th);
            return null;
        }
    }

    /* renamed from: a */
    public static Object m24676a(Field field, Object obj) throws IllegalAccessException {
        return m24675a(field, obj, true);
    }

    /* renamed from: a */
    public static Object m24675a(Field field, Object obj, boolean z) throws IllegalAccessException {
        C9344d.m24667a(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            C9342b.m24673a((AccessibleObject) field);
        } else {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    /* renamed from: a */
    private static Field m24681a(Class<?> cls, String str) {
        Field field;
        C9344d.m24667a(cls != null, "The class must not be null", new Object[0]);
        C9344d.m24667a(!C9343c.m24671a(str), "The field name must not be blank/empty", new Object[0]);
        String str2 = cls.toString() + "#" + str;
        synchronized (f31967a) {
            field = f31967a.get(str2);
        }
        if (field != null) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        Class<?> cls2 = cls;
        while (true) {
            Class<?> cls3 = cls2;
            if (cls3 == null) {
                Field field2 = null;
                for (Class<?> cls4 : C9343c.m24670a(cls)) {
                    try {
                        Field field3 = cls4.getField(str);
                        C9344d.m24667a(field2 == null, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.", str, cls);
                        field2 = field3;
                    } catch (NoSuchFieldException e) {
                    }
                }
                synchronized (f31967a) {
                    f31967a.put(str2, field2);
                }
                return field2;
            }
            try {
                Field declaredField = cls3.getDeclaredField(str);
                if (!Modifier.isPublic(declaredField.getModifiers())) {
                    declaredField.setAccessible(true);
                }
                synchronized (f31967a) {
                    f31967a.put(str2, declaredField);
                }
                return declaredField;
            } catch (NoSuchFieldException e2) {
                cls2 = cls3.getSuperclass();
            }
        }
    }

    /* renamed from: a */
    private static Field m24680a(Class<?> cls, String str, boolean z) {
        C9344d.m24667a(cls != null, "The class must not be null", new Object[0]);
        C9344d.m24667a(!C9343c.m24671a(str), "The field name must not be blank/empty", new Object[0]);
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (!C9342b.m24672a((Member) declaredField)) {
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m24678a(Object obj, String str, Object obj2) throws IllegalAccessException {
        C9344d.m24667a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field m24681a = m24681a(cls, str);
        C9344d.m24667a(m24681a != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        C9344d.m24667a(m24681a != null, "The field must not be null", new Object[0]);
        if (!m24681a.isAccessible()) {
            m24681a.setAccessible(true);
        } else {
            C9342b.m24673a((AccessibleObject) m24681a);
        }
        m24681a.set(obj, obj2);
    }

    /* renamed from: b */
    public static Field m24674b(String str, String str2) {
        try {
            return m24680a(Class.forName(str), str2, true);
        } catch (Throwable th) {
            C9343c.m24668a(th);
            return null;
        }
    }
}

package p092e.p103f.p106b;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e.f.b.a */
/* loaded from: classes2-dex2jar.jar:e/f/b/a.class */
public class C3099a {

    /* renamed from: a */
    private static Map<String, Field> f12733a = new HashMap();

    /* renamed from: a */
    public static Field m237a(Class<?> cls, String str, boolean z) {
        C3102d.m217a(cls != null, "The class must not be null", new Object[0]);
        C3102d.m217a(!C3101c.m219c(str), "The field name must not be blank/empty", new Object[0]);
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (!C3100b.m224a(declaredField)) {
                if (!z) {
                    return null;
                }
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static Field m236b(String str, String str2, boolean z) {
        try {
            return m237a(Class.forName(str), str2, z);
        } catch (Throwable th) {
            C3101c.m218d(th);
            return null;
        }
    }

    /* renamed from: c */
    private static Field m235c(Class<?> cls, String str, boolean z) {
        Field field;
        Field declaredField;
        C3102d.m217a(cls != null, "The class must not be null", new Object[0]);
        C3102d.m217a(!C3101c.m219c(str), "The field name must not be blank/empty", new Object[0]);
        String d = m234d(cls, str);
        synchronized (f12733a) {
            try {
                field = f12733a.get(d);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (field != null) {
            if (z && !field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                declaredField = cls2.getDeclaredField(str);
            } catch (NoSuchFieldException e) {
            }
            if (!Modifier.isPublic(declaredField.getModifiers())) {
                if (z) {
                    declaredField.setAccessible(true);
                }
            }
            synchronized (f12733a) {
                f12733a.put(d, declaredField);
            }
            return declaredField;
        }
        Field field2 = null;
        for (Class<?> cls3 : C3101c.m221a(cls)) {
            try {
                field2 = cls3.getField(str);
                C3102d.m217a(field2 == null, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.", str, cls);
            } catch (NoSuchFieldException e2) {
            }
        }
        synchronized (f12733a) {
            f12733a.put(d, field2);
        }
        return field2;
    }

    /* renamed from: d */
    private static String m234d(Class<?> cls, String str) {
        return cls.toString() + "#" + str;
    }

    /* renamed from: e */
    public static Object m233e(Object obj, String str) {
        C3102d.m217a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field c = m235c(cls, str, true);
        C3102d.m217a(c != null, "Cannot locate field %s on %s", str, cls);
        return m231g(c, obj, false);
    }

    /* renamed from: f */
    public static Object m232f(Field field, Object obj) {
        return m231g(field, obj, true);
    }

    /* renamed from: g */
    public static Object m231g(Field field, Object obj, boolean z) {
        C3102d.m217a(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            C3100b.m222c(field);
        } else {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    /* renamed from: h */
    public static Object m230h(Class<?> cls, String str) {
        Field c = m235c(cls, str, true);
        C3102d.m217a(c != null, "Cannot locate field '%s' on %s", str, cls);
        return m228j(c, true);
    }

    /* renamed from: i */
    public static Object m229i(String str, String str2) {
        try {
            return m230h(Class.forName(str), str2);
        } catch (Throwable th) {
            C3101c.m218d(th);
            return null;
        }
    }

    /* renamed from: j */
    public static Object m228j(Field field, boolean z) {
        C3102d.m217a(field != null, "The field must not be null", new Object[0]);
        C3102d.m217a(Modifier.isStatic(field.getModifiers()), "The field '%s' is not static", field.getName());
        return m231g(field, null, z);
    }

    /* renamed from: k */
    public static void m227k(Object obj, String str, Object obj2) {
        m226l(obj, str, obj2, true);
    }

    /* renamed from: l */
    public static void m226l(Object obj, String str, Object obj2, boolean z) {
        C3102d.m217a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field c = m235c(cls, str, true);
        C3102d.m217a(c != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        m225m(c, obj, obj2, z);
    }

    /* renamed from: m */
    public static void m225m(Field field, Object obj, Object obj2, boolean z) {
        C3102d.m217a(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            C3100b.m222c(field);
        } else {
            field.setAccessible(true);
        }
        field.set(obj, obj2);
    }
}

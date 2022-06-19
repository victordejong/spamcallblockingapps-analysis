package p078c.p129e.p132b;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.e.b.a */
/* loaded from: classes2-dex2jar.jar:c/e/b/a.class */
public class C2080a {

    /* renamed from: a */
    private static Map<String, Field> f7203a = new HashMap();

    /* renamed from: a */
    public static Field m28097a(Class<?> cls, String str, boolean z) {
        C2083d.m28077a(cls != null, "The class must not be null", new Object[0]);
        C2083d.m28077a(!C2082c.m28079c(str), "The field name must not be blank/empty", new Object[0]);
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (!C2081b.m28084a(declaredField)) {
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
    public static Field m28096b(String str, String str2, boolean z) {
        try {
            return m28097a(Class.forName(str), str2, z);
        } catch (Throwable th) {
            C2082c.m28078d(th);
            return null;
        }
    }

    /* renamed from: c */
    private static Field m28095c(Class<?> cls, String str, boolean z) {
        Field field;
        Field declaredField;
        C2083d.m28077a(cls != null, "The class must not be null", new Object[0]);
        C2083d.m28077a(!C2082c.m28079c(str), "The field name must not be blank/empty", new Object[0]);
        String m28094d = m28094d(cls, str);
        synchronized (f7203a) {
            field = f7203a.get(m28094d);
        }
        if (field != null) {
            if (z && !field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        Class<?> cls2 = cls;
        while (true) {
            Class<?> cls3 = cls2;
            if (cls3 != null) {
                try {
                    declaredField = cls3.getDeclaredField(str);
                } catch (NoSuchFieldException e) {
                }
                if (!Modifier.isPublic(declaredField.getModifiers())) {
                    if (z) {
                        declaredField.setAccessible(true);
                    }
                    cls2 = cls3.getSuperclass();
                }
                synchronized (f7203a) {
                    f7203a.put(m28094d, declaredField);
                }
                return declaredField;
            }
            Field field2 = null;
            for (Class<?> cls4 : C2082c.m28081a(cls)) {
                try {
                    Field field3 = cls4.getField(str);
                    C2083d.m28077a(field2 == null, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.", str, cls);
                    field2 = field3;
                } catch (NoSuchFieldException e2) {
                }
            }
            synchronized (f7203a) {
                f7203a.put(m28094d, field2);
            }
            return field2;
        }
    }

    /* renamed from: d */
    private static String m28094d(Class<?> cls, String str) {
        return cls.toString() + "#" + str;
    }

    /* renamed from: e */
    public static Object m28093e(Object obj, String str) {
        C2083d.m28077a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field m28095c = m28095c(cls, str, true);
        C2083d.m28077a(m28095c != null, "Cannot locate field %s on %s", str, cls);
        return m28091g(m28095c, obj, false);
    }

    /* renamed from: f */
    public static Object m28092f(Field field, Object obj) {
        return m28091g(field, obj, true);
    }

    /* renamed from: g */
    public static Object m28091g(Field field, Object obj, boolean z) {
        C2083d.m28077a(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            C2081b.m28082c(field);
        } else {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    /* renamed from: h */
    public static Object m28090h(Class<?> cls, String str) {
        Field m28095c = m28095c(cls, str, true);
        C2083d.m28077a(m28095c != null, "Cannot locate field '%s' on %s", str, cls);
        return m28088j(m28095c, true);
    }

    /* renamed from: i */
    public static Object m28089i(String str, String str2) {
        try {
            return m28090h(Class.forName(str), str2);
        } catch (Throwable th) {
            C2082c.m28078d(th);
            return null;
        }
    }

    /* renamed from: j */
    public static Object m28088j(Field field, boolean z) {
        C2083d.m28077a(field != null, "The field must not be null", new Object[0]);
        C2083d.m28077a(Modifier.isStatic(field.getModifiers()), "The field '%s' is not static", field.getName());
        return m28091g(field, null, z);
    }

    /* renamed from: k */
    public static void m28087k(Object obj, String str, Object obj2) {
        m28086l(obj, str, obj2, true);
    }

    /* renamed from: l */
    public static void m28086l(Object obj, String str, Object obj2, boolean z) {
        C2083d.m28077a(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field m28095c = m28095c(cls, str, true);
        C2083d.m28077a(m28095c != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        m28085m(m28095c, obj, obj2, z);
    }

    /* renamed from: m */
    public static void m28085m(Field field, Object obj, Object obj2, boolean z) {
        C2083d.m28077a(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            C2081b.m28082c(field);
        } else {
            field.setAccessible(true);
        }
        field.set(obj, obj2);
    }
}

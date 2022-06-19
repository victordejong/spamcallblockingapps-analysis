package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.AbstractC9414i;
import com.esotericsoftware.kryo.p278c.AbstractC9388e;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.p274b.C9366a;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.HttpUrl;
/* renamed from: com.esotericsoftware.kryo.c.n */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/n.class */
public final class C9408n {

    /* renamed from: a */
    public static final boolean f32357a = "Dalvik".equals(System.getProperty("java.vm.name"));

    /* renamed from: b */
    public static final boolean f32358b;

    /* renamed from: c */
    private static final Map<Class<?>, Class<?>> f32359c;

    static {
        boolean z;
        if ("false".equals(System.getProperty("kryo.unsafe"))) {
            z = false;
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Unsafe is disabled.");
                z = false;
            }
        } else {
            try {
                z = false;
                if (Class.forName("com.esotericsoftware.kryo.unsafe.UnsafeUtil", true, FieldSerializer.class.getClassLoader()).getField("unsafe").get(null) != null) {
                    z = true;
                }
            } catch (Throwable th) {
                z = false;
                if (C9366a.f32190e) {
                    C9366a.m24493b("kryo", "Unsafe is unavailable.", th);
                    z = false;
                }
            }
        }
        f32358b = z;
        HashMap hashMap = new HashMap();
        f32359c = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Short.TYPE, Short.class);
    }

    /* renamed from: a */
    public static Class m24303a(Class cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        Class cls2 = cls;
        if (cls == Short.TYPE) {
            cls2 = Short.class;
        }
        return cls2;
    }

    /* renamed from: a */
    public static String m24304a(int i) {
        if (i == -1) {
            return "";
        }
        return " [" + i + "]";
    }

    /* renamed from: a */
    public static String m24302a(Class cls, AbstractC9388e.C9389a c9389a) {
        StringBuilder sb = new StringBuilder(32);
        sb.append((cls.isArray() ? m24289g(cls) : cls).getSimpleName());
        if (c9389a.f32297b != null) {
            sb.append('<');
            int length = c9389a.f32297b.length;
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(c9389a.f32297b[i].toString());
            }
            sb.append('>');
        }
        if (cls.isArray()) {
            int m24290f = m24290f(cls);
            for (int i2 = 0; i2 < m24290f; i2++) {
                sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m24300a(Object obj) {
        if (obj == null) {
            return JsonReaderKt.NULL;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            return m24292d(cls);
        }
        String m24292d = C9366a.f32190e ? m24292d(cls) : cls.getSimpleName();
        try {
            if (cls.getMethod("toString", new Class[0]).getDeclaringClass() == Object.class) {
                return m24292d;
            }
        } catch (Exception e) {
        }
        try {
            String str = String.valueOf(obj) + " (" + m24292d + ")";
            String str2 = str;
            if (str.length() > 97) {
                str2 = str.substring(0, 97) + "...";
            }
            return str2;
        } catch (Throwable th) {
            return m24292d + " (toString exception: " + th + ")";
        }
    }

    /* renamed from: a */
    public static void m24298a(String str, Object obj, int i) {
        if (obj == null) {
            if (!C9366a.f32190e) {
                return;
            }
            C9366a.m24494b("kryo", str + ": null" + m24304a(i));
            return;
        }
        Class<?> cls = obj.getClass();
        if (!cls.isPrimitive() && !m24297b(cls) && cls != String.class) {
            C9366a.m24496a("kryo", str + ": " + m24300a(obj) + m24304a(i));
        } else if (!C9366a.f32190e) {
        } else {
            C9366a.m24494b("kryo", str + ": " + m24300a(obj) + m24304a(i));
        }
    }

    /* renamed from: a */
    public static boolean m24301a(Class<?> cls, Class<?> cls2) {
        if (cls2 != Object.class && !cls2.isAssignableFrom(cls)) {
            if (cls.isPrimitive()) {
                return m24293c(cls2, cls);
            }
            if (!cls2.isPrimitive()) {
                return false;
            }
            return m24293c(cls, cls2);
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m24299a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception e) {
            C9366a.m24496a("kryo", "Class not available: ".concat(String.valueOf(str)));
            return false;
        }
    }

    /* renamed from: b */
    public static <T extends AbstractC9414i> T m24296b(Class<T> cls, Class<? extends AbstractC9413h> cls2) {
        try {
            if (cls2 != null) {
                try {
                    return cls.getConstructor(Class.class).newInstance(cls2);
                } catch (NoSuchMethodException e) {
                }
            }
            return cls.newInstance();
        } catch (Exception e2) {
            if (cls2 == null) {
                throw new IllegalArgumentException("Unable to create serializer factory: " + cls.getName(), e2);
            }
            throw new IllegalArgumentException("Unable to create serializer factory \"" + cls.getName() + "\" for serializer class: " + m24292d(cls2), e2);
        }
    }

    /* renamed from: b */
    public static boolean m24297b(Class cls) {
        return cls == Integer.class || cls == Float.class || cls == Boolean.class || cls == Byte.class || cls == Long.class || cls == Character.class || cls == Double.class || cls == Short.class;
    }

    /* renamed from: b */
    public static boolean m24295b(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m24294c(Class cls) {
        return Enum.class.isAssignableFrom(cls) && cls != Enum.class;
    }

    /* renamed from: c */
    private static boolean m24293c(Class<?> cls, Class<?> cls2) {
        if (cls2.isPrimitive()) {
            return f32359c.get(cls2) == cls;
        }
        throw new IllegalArgumentException("First argument has to be primitive type");
    }

    /* renamed from: d */
    public static String m24292d(Class cls) {
        if (cls == null) {
            return JsonReaderKt.NULL;
        }
        if (!cls.isArray()) {
            return (cls.isPrimitive() || cls == Object.class || cls == Boolean.class || cls == Byte.class || cls == Character.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class) ? cls.getSimpleName() : cls.getName();
        }
        Class m24289g = m24289g(cls);
        StringBuilder sb = new StringBuilder(16);
        int m24290f = m24290f(cls);
        for (int i = 0; i < m24290f; i++) {
            sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        return m24292d(m24289g) + ((Object) sb);
    }

    /* renamed from: e */
    public static String m24291e(Class cls) {
        if (cls == null) {
            return JsonReaderKt.NULL;
        }
        String canonicalName = cls.getCanonicalName();
        return canonicalName != null ? canonicalName : m24292d(cls);
    }

    /* renamed from: f */
    public static int m24290f(Class cls) {
        int i = 0;
        for (Class<?> componentType = cls.getComponentType(); componentType != null; componentType = componentType.getComponentType()) {
            i++;
        }
        return i;
    }

    /* renamed from: g */
    public static Class m24289g(Class cls) {
        while (cls.getComponentType() != null) {
            cls = cls.getComponentType();
        }
        return cls;
    }
}

package com.esotericsoftware.kryo.c;

import com.esotericsoftware.b.a;
import com.esotericsoftware.kryo.c.e;
import com.esotericsoftware.kryo.h;
import com.esotericsoftware.kryo.i;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f19036a = "Dalvik".equals(System.getProperty("java.vm.name"));

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f19037b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f19038c;

    static {
        boolean z;
        if ("false".equals(System.getProperty("kryo.unsafe"))) {
            z = false;
            if (a.e) {
                a.b("kryo", "Unsafe is disabled.");
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
                if (a.e) {
                    a.b("kryo", "Unsafe is unavailable.", th);
                    z = false;
                }
            }
        }
        f19037b = z;
        HashMap hashMap = new HashMap();
        f19038c = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Short.TYPE, Short.class);
    }

    public static Class a(Class cls) {
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

    public static String a(int i) {
        if (i == -1) {
            return "";
        }
        return " [" + i + "]";
    }

    public static String a(Class cls, e.a aVar) {
        StringBuilder sb = new StringBuilder(32);
        sb.append((cls.isArray() ? g(cls) : cls).getSimpleName());
        if (aVar.f18994b != null) {
            sb.append('<');
            int length = aVar.f18994b.length;
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(aVar.f18994b[i].toString());
            }
            sb.append('>');
        }
        if (cls.isArray()) {
            int f = f(cls);
            for (int i2 = 0; i2 < f; i2++) {
                sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            }
        }
        return sb.toString();
    }

    public static String a(Object obj) {
        if (obj == null) {
            return JsonReaderKt.NULL;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            return d(cls);
        }
        String d2 = a.e ? d(cls) : cls.getSimpleName();
        try {
            if (cls.getMethod("toString", new Class[0]).getDeclaringClass() == Object.class) {
                return d2;
            }
        } catch (Exception e) {
        }
        try {
            String str = String.valueOf(obj) + " (" + d2 + ")";
            String str2 = str;
            if (str.length() > 97) {
                str2 = str.substring(0, 97) + "...";
            }
            return str2;
        } catch (Throwable th) {
            return d2 + " (toString exception: " + th + ")";
        }
    }

    public static void a(String str, Object obj, int i) {
        if (obj != null) {
            Class<?> cls = obj.getClass();
            if (!cls.isPrimitive() && !b(cls) && cls != String.class) {
                a.a("kryo", str + ": " + a(obj) + a(i));
            } else if (a.e) {
                a.b("kryo", str + ": " + a(obj) + a(i));
            }
        } else if (a.e) {
            a.b("kryo", str + ": null" + a(i));
        }
    }

    public static boolean a(Class<?> cls, Class<?> cls2) {
        if (cls2 == Object.class || cls2.isAssignableFrom(cls)) {
            return true;
        }
        if (cls.isPrimitive()) {
            return c(cls2, cls);
        }
        if (cls2.isPrimitive()) {
            return c(cls, cls2);
        }
        return false;
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception e) {
            a.a("kryo", "Class not available: ".concat(String.valueOf(str)));
            return false;
        }
    }

    public static <T extends i> T b(Class<T> cls, Class<? extends h> cls2) {
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
            throw new IllegalArgumentException("Unable to create serializer factory \"" + cls.getName() + "\" for serializer class: " + d(cls2), e2);
        }
    }

    public static boolean b(Class cls) {
        return cls == Integer.class || cls == Float.class || cls == Boolean.class || cls == Byte.class || cls == Long.class || cls == Character.class || cls == Double.class || cls == Short.class;
    }

    public static boolean b(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(Class cls) {
        return Enum.class.isAssignableFrom(cls) && cls != Enum.class;
    }

    private static boolean c(Class<?> cls, Class<?> cls2) {
        if (cls2.isPrimitive()) {
            return f19038c.get(cls2) == cls;
        }
        throw new IllegalArgumentException("First argument has to be primitive type");
    }

    public static String d(Class cls) {
        if (cls == null) {
            return JsonReaderKt.NULL;
        }
        if (!cls.isArray()) {
            return (cls.isPrimitive() || cls == Object.class || cls == Boolean.class || cls == Byte.class || cls == Character.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class) ? cls.getSimpleName() : cls.getName();
        }
        Class g = g(cls);
        StringBuilder sb = new StringBuilder(16);
        int f = f(cls);
        for (int i = 0; i < f; i++) {
            sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        return d(g) + ((Object) sb);
    }

    public static String e(Class cls) {
        if (cls == null) {
            return JsonReaderKt.NULL;
        }
        String canonicalName = cls.getCanonicalName();
        return canonicalName != null ? canonicalName : d(cls);
    }

    public static int f(Class cls) {
        int i = 0;
        for (Class<?> componentType = cls.getComponentType(); componentType != null; componentType = componentType.getComponentType()) {
            i++;
        }
        return i;
    }

    public static Class g(Class cls) {
        while (cls.getComponentType() != null) {
            cls = cls.getComponentType();
        }
        return cls;
    }
}

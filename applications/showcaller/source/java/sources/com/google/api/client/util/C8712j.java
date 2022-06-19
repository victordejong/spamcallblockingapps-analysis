package com.google.api.client.util;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.api.client.util.j */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/j.class */
public class C8712j {

    /* renamed from: a */
    public static final Boolean f38517a;

    /* renamed from: b */
    public static final String f38518b;

    /* renamed from: c */
    public static final Character f38519c;

    /* renamed from: d */
    public static final Byte f38520d;

    /* renamed from: e */
    public static final Short f38521e;

    /* renamed from: f */
    public static final Integer f38522f;

    /* renamed from: g */
    public static final Float f38523g;

    /* renamed from: h */
    public static final Long f38524h;

    /* renamed from: i */
    public static final Double f38525i;

    /* renamed from: j */
    public static final BigInteger f38526j;

    /* renamed from: k */
    public static final BigDecimal f38527k;

    /* renamed from: l */
    public static final DateTime f38528l;

    /* renamed from: m */
    private static final ConcurrentHashMap<Class<?>, Object> f38529m;

    static {
        Boolean bool = new Boolean(true);
        f38517a = bool;
        String str = new String();
        f38518b = str;
        Character ch = new Character((char) 0);
        f38519c = ch;
        Byte b = new Byte((byte) 0);
        f38520d = b;
        Short sh = new Short((short) 0);
        f38521e = sh;
        Integer num = new Integer(0);
        f38522f = num;
        Float f = new Float(0.0f);
        f38523g = f;
        Long l = new Long(0L);
        f38524h = l;
        Double d = new Double(0.0d);
        f38525i = d;
        BigInteger bigInteger = new BigInteger("0");
        f38526j = bigInteger;
        BigDecimal bigDecimal = new BigDecimal("0");
        f38527k = bigDecimal;
        DateTime dateTime = new DateTime(0L);
        f38528l = dateTime;
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        f38529m = concurrentHashMap;
        concurrentHashMap.put(Boolean.class, bool);
        concurrentHashMap.put(String.class, str);
        concurrentHashMap.put(Character.class, ch);
        concurrentHashMap.put(Byte.class, b);
        concurrentHashMap.put(Short.class, sh);
        concurrentHashMap.put(Integer.class, num);
        concurrentHashMap.put(Float.class, f);
        concurrentHashMap.put(Long.class, l);
        concurrentHashMap.put(Double.class, d);
        concurrentHashMap.put(BigInteger.class, bigInteger);
        concurrentHashMap.put(BigDecimal.class, bigDecimal);
        concurrentHashMap.put(DateTime.class, dateTime);
    }

    /* renamed from: a */
    public static <T> T m2883a(T t) {
        C8684a c8684a;
        if (t == null || m2879e(t.getClass())) {
            return t;
        }
        if (t instanceof GenericData) {
            return (T) ((GenericData) t).clone();
        }
        Class<?> cls = t.getClass();
        if (cls.isArray()) {
            c8684a = Array.newInstance(cls.getComponentType(), Array.getLength(t));
        } else if (t instanceof C8684a) {
            c8684a = ((C8684a) t).clone();
        } else if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
            Object[] array = ((List) t).toArray();
            m2881c(array, array);
            return (T) Arrays.asList(array);
        } else {
            c8684a = C8695d0.m2915m(cls);
        }
        m2881c(t, c8684a);
        return (T) c8684a;
    }

    /* renamed from: b */
    private static Object m2882b(Class<?> cls) {
        Class<?> componentType;
        int i;
        int i2 = 0;
        if (!cls.isArray()) {
            if (!cls.isEnum()) {
                return C8695d0.m2915m(cls);
            }
            C8717l m2889b = C8710i.m2886e(cls).m2889b(null);
            C8731w.m2834f(m2889b, "enum missing constant with @NullValue annotation: %s", cls);
            return m2889b.m2866a();
        }
        do {
            componentType = cls.getComponentType();
            i = i2 + 1;
            i2 = i;
            cls = componentType;
        } while (componentType.isArray());
        return Array.newInstance(componentType, new int[i]);
    }

    /* renamed from: c */
    public static void m2881c(Object obj, Object obj2) {
        Class<?> cls = obj.getClass();
        C8731w.m2839a(cls == obj2.getClass());
        if (cls.isArray()) {
            C8731w.m2839a(Array.getLength(obj) == Array.getLength(obj2));
            int i = 0;
            for (Object obj3 : C8695d0.m2916l(obj)) {
                Array.set(obj2, i, m2883a(obj3));
                i++;
            }
        } else if (Collection.class.isAssignableFrom(cls)) {
            Collection<Object> collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            for (Object obj4 : collection) {
                collection2.add(m2883a(obj4));
            }
        } else {
            boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
            if (isAssignableFrom || !Map.class.isAssignableFrom(cls)) {
                C8710i m2886e = isAssignableFrom ? ((GenericData) obj).classInfo : C8710i.m2886e(cls);
                for (String str : m2886e.f38515f) {
                    C8717l m2889b = m2886e.m2889b(str);
                    if (!m2889b.m2859h() && (!isAssignableFrom || !m2889b.m2858i())) {
                        Object m2860g = m2889b.m2860g(obj);
                        if (m2860g != null) {
                            m2889b.m2854m(obj2, m2883a(m2860g));
                        }
                    }
                }
            } else if (!C8684a.class.isAssignableFrom(cls)) {
                Map map = (Map) obj2;
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    map.put(entry.getKey(), m2883a(entry.getValue()));
                }
            } else {
                C8684a c8684a = (C8684a) obj2;
                C8684a c8684a2 = (C8684a) obj;
                int size = c8684a2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    c8684a.m2943m(i2, m2883a(c8684a2.m2946i(i2)));
                }
            }
        }
    }

    /* renamed from: d */
    public static boolean m2880d(Object obj) {
        return obj != null && obj == f38529m.get(obj.getClass());
    }

    /* renamed from: e */
    public static boolean m2879e(Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = C8695d0.m2925c((WildcardType) type);
        }
        boolean z = false;
        if (!(type2 instanceof Class)) {
            return false;
        }
        Class cls = (Class) type2;
        if (cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == DateTime.class || cls == Boolean.class) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    public static boolean m2878f(Object obj) {
        return obj == null || m2879e(obj.getClass());
    }

    /* renamed from: g */
    public static Map<String, Object> m2877g(Object obj) {
        return (obj == null || m2880d(obj)) ? Collections.emptyMap() : obj instanceof Map ? (Map) obj : new C8713k(obj, false);
    }

    /* renamed from: h */
    public static Collection<Object> m2876h(Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = C8695d0.m2925c((WildcardType) type);
        }
        Type type3 = type2;
        if (type2 instanceof ParameterizedType) {
            type3 = ((ParameterizedType) type2).getRawType();
        }
        Class cls = type3 instanceof Class ? (Class) type3 : null;
        if (type3 == null || (type3 instanceof GenericArrayType) || (cls != null && (cls.isArray() || cls.isAssignableFrom(ArrayList.class)))) {
            return new ArrayList();
        }
        if (cls != null) {
            return cls.isAssignableFrom(HashSet.class) ? new HashSet() : cls.isAssignableFrom(TreeSet.class) ? new TreeSet() : (Collection) C8695d0.m2915m(cls);
        }
        throw new IllegalArgumentException("unable to create new instance of type: " + type3);
    }

    /* renamed from: i */
    public static Map<String, Object> m2875i(Class<?> cls) {
        return (cls == null || cls.isAssignableFrom(C8684a.class)) ? C8684a.m2951b() : cls.isAssignableFrom(TreeMap.class) ? new TreeMap() : (Map) C8695d0.m2915m(cls);
    }

    /* renamed from: j */
    public static <T> T m2874j(Class<T> cls) {
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = f38529m;
        Object obj = concurrentHashMap.get(cls);
        Object obj2 = obj;
        if (obj == null) {
            obj2 = m2882b(cls);
            Object putIfAbsent = concurrentHashMap.putIfAbsent(cls, obj2);
            if (putIfAbsent != null) {
                obj2 = putIfAbsent;
            }
        }
        return (T) obj2;
    }

    /* renamed from: k */
    public static Object m2873k(Type type, String str) {
        Class cls = type instanceof Class ? (Class) type : null;
        if (type == null || cls != null) {
            if (cls == Void.class) {
                return null;
            }
            if (str == null || cls == null || cls.isAssignableFrom(String.class)) {
                return str;
            }
            if (cls == Character.class || cls == Character.TYPE) {
                if (str.length() == 1) {
                    return Character.valueOf(str.charAt(0));
                }
                throw new IllegalArgumentException("expected type Character/char but got " + cls);
            } else if (cls == Boolean.class || cls == Boolean.TYPE) {
                return Boolean.valueOf(str);
            } else {
                if (cls == Byte.class || cls == Byte.TYPE) {
                    return Byte.valueOf(str);
                }
                if (cls == Short.class || cls == Short.TYPE) {
                    return Short.valueOf(str);
                }
                if (cls == Integer.class || cls == Integer.TYPE) {
                    return Integer.valueOf(str);
                }
                if (cls == Long.class || cls == Long.TYPE) {
                    return Long.valueOf(str);
                }
                if (cls == Float.class || cls == Float.TYPE) {
                    return Float.valueOf(str);
                }
                if (cls == Double.class || cls == Double.TYPE) {
                    return Double.valueOf(str);
                }
                if (cls == DateTime.class) {
                    return DateTime.parseRfc3339(str);
                }
                if (cls == BigInteger.class) {
                    return new BigInteger(str);
                }
                if (cls == BigDecimal.class) {
                    return new BigDecimal(str);
                }
                if (cls.isEnum()) {
                    if (!C8710i.m2886e(cls).f38515f.contains(str)) {
                        throw new IllegalArgumentException(String.format("given enum name %s not part of enumeration", str));
                    }
                    return C8710i.m2886e(cls).m2889b(str).m2866a();
                }
            }
        }
        throw new IllegalArgumentException("expected primitive class, but got: " + type);
    }

    /* renamed from: l */
    public static Type m2872l(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = C8695d0.m2925c((WildcardType) type);
        }
        while (type2 instanceof TypeVariable) {
            Type m2914n = C8695d0.m2914n(list, (TypeVariable) type2);
            Type type3 = type2;
            if (m2914n != null) {
                type3 = m2914n;
            }
            type2 = type3;
            if (type3 instanceof TypeVariable) {
                type2 = ((TypeVariable) type3).getBounds()[0];
            }
        }
        return type2;
    }
}

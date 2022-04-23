package com.google.api.client.a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.base.m;
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
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final Boolean f31626a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f31627b;
    public static final Float g;
    public static final Double i;
    public static final BigInteger j;
    public static final BigDecimal k;
    public static final l l;
    private static final ConcurrentHashMap<Class<?>, Object> m;

    /* renamed from: c  reason: collision with root package name */
    public static final Character f31628c = (char) 0;

    /* renamed from: d  reason: collision with root package name */
    public static final Byte f31629d = (byte) 0;
    public static final Short e = (short) 0;
    public static final Integer f = 0;
    public static final Long h = 0L;

    static {
        Boolean bool = Boolean.TRUE;
        f31626a = bool;
        String str = new String();
        f31627b = str;
        Float valueOf = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        g = valueOf;
        Double valueOf2 = Double.valueOf(0.0d);
        i = valueOf2;
        BigInteger bigInteger = new BigInteger("0");
        j = bigInteger;
        BigDecimal bigDecimal = new BigDecimal("0");
        k = bigDecimal;
        l lVar = new l(0L);
        l = lVar;
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        m = concurrentHashMap;
        concurrentHashMap.put(Boolean.class, bool);
        concurrentHashMap.put(String.class, str);
        concurrentHashMap.put(Character.class, (char) 0);
        concurrentHashMap.put(Byte.class, (byte) 0);
        concurrentHashMap.put(Short.class, (short) 0);
        concurrentHashMap.put(Integer.class, 0);
        concurrentHashMap.put(Float.class, valueOf);
        concurrentHashMap.put(Long.class, 0L);
        concurrentHashMap.put(Double.class, valueOf2);
        concurrentHashMap.put(BigInteger.class, bigInteger);
        concurrentHashMap.put(BigDecimal.class, bigDecimal);
        concurrentHashMap.put(l.class, lVar);
    }

    public static <T> T a(Class<T> cls) {
        Class<?> componentType;
        int i2;
        Object obj = m.get(cls);
        T t = (T) obj;
        if (obj == null) {
            int i3 = 0;
            if (cls.isArray()) {
                Class<T> cls2 = cls;
                do {
                    componentType = cls2.getComponentType();
                    i2 = i3 + 1;
                    cls2 = componentType;
                    i3 = i2;
                } while (componentType.isArray());
                t = (T) Array.newInstance(componentType, new int[i2]);
            } else if (cls.isEnum()) {
                m a2 = h.a((Class<?>) cls).a((String) null);
                m.a(a2, "enum missing constant with @NullValue annotation: %s", cls);
                t = (T) a2.b();
            } else {
                t = (T) ag.a((Class<Object>) cls);
            }
            Object putIfAbsent = m.putIfAbsent(cls, t);
            if (putIfAbsent != null) {
                t = putIfAbsent;
            }
        }
        return t;
    }

    public static Object a(Type type, String str) {
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
                throw new IllegalArgumentException("expected type Character/char but got ".concat(String.valueOf(cls)));
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
                if (cls == l.class) {
                    return l.a(str);
                }
                if (cls == BigInteger.class) {
                    return new BigInteger(str);
                }
                if (cls == BigDecimal.class) {
                    return new BigDecimal(str);
                }
                if (cls.isEnum()) {
                    if (h.a(cls).f31623c.contains(str)) {
                        return h.a(cls).a(str).b();
                    }
                    throw new IllegalArgumentException(String.format("given enum name %s not part of enumeration", str));
                }
            }
        }
        throw new IllegalArgumentException("expected primitive class, but got: ".concat(String.valueOf(type)));
    }

    public static Type a(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ag.a((WildcardType) type);
        }
        while (type2 instanceof TypeVariable) {
            Type a2 = ag.a(list, (TypeVariable<?>) type2);
            Type type3 = type2;
            if (a2 != null) {
                type3 = a2;
            }
            type2 = type3;
            if (type3 instanceof TypeVariable) {
                type2 = ((TypeVariable) type3).getBounds()[0];
            }
        }
        return type2;
    }

    public static void a(Object obj, Object obj2) {
        Class<?> cls = obj.getClass();
        boolean z = true;
        int i2 = 0;
        m.a(cls == obj2.getClass());
        if (cls.isArray()) {
            if (Array.getLength(obj) != Array.getLength(obj2)) {
                z = false;
            }
            m.a(z);
            for (Object obj3 : ag.a(obj)) {
                Array.set(obj2, i2, c(obj3));
                i2++;
            }
        } else if (Collection.class.isAssignableFrom(cls)) {
            Collection<Object> collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            for (Object obj4 : collection) {
                collection2.add(c(obj4));
            }
        } else {
            boolean isAssignableFrom = n.class.isAssignableFrom(cls);
            if (isAssignableFrom || !Map.class.isAssignableFrom(cls)) {
                h a2 = isAssignableFrom ? ((n) obj).classInfo : h.a(cls);
                for (String str : a2.f31623c) {
                    m a3 = a2.a(str);
                    if (!a3.a() && (!isAssignableFrom || !a3.f31649a)) {
                        Object a4 = a3.a(obj);
                        if (a4 != null) {
                            a3.a(obj2, c(a4));
                        }
                    }
                }
            } else if (a.class.isAssignableFrom(cls)) {
                a aVar = (a) obj2;
                a aVar2 = (a) obj;
                int size = aVar2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    aVar.a(i3, c(aVar2.a(i3)));
                }
            } else {
                Map map = (Map) obj2;
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    map.put(entry.getKey(), c(entry.getValue()));
                }
            }
        }
    }

    public static boolean a(Object obj) {
        return obj != null && obj == m.get(obj.getClass());
    }

    public static boolean a(Type type) {
        if (!(type instanceof Class)) {
            return false;
        }
        Class cls = (Class) type;
        return cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == l.class || cls == Boolean.class;
    }

    public static Collection<Object> b(Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ag.a((WildcardType) type);
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
            return cls.isAssignableFrom(HashSet.class) ? new HashSet() : cls.isAssignableFrom(TreeSet.class) ? new TreeSet() : (Collection) ag.a((Class<Object>) cls);
        }
        throw new IllegalArgumentException("unable to create new instance of type: ".concat(String.valueOf(type3)));
    }

    public static Map<String, Object> b(Class<?> cls) {
        return (cls == null || cls.isAssignableFrom(a.class)) ? a.a() : cls.isAssignableFrom(TreeMap.class) ? new TreeMap() : (Map) ag.a((Class<Object>) cls);
    }

    public static Map<String, Object> b(Object obj) {
        return (obj == null || a(obj)) ? Collections.emptyMap() : obj instanceof Map ? (Map) obj : new k(obj, false);
    }

    public static <T> T c(T t) {
        T t2;
        if (t == null || a((Type) t.getClass())) {
            return t;
        }
        if (t instanceof n) {
            return (T) ((n) t).clone();
        }
        Class<?> cls = t.getClass();
        if (cls.isArray()) {
            t2 = (T) Array.newInstance(cls.getComponentType(), Array.getLength(t));
        } else if (t instanceof a) {
            t2 = (T) ((a) t).clone();
        } else if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
            Object[] array = ((List) t).toArray();
            a(array, array);
            return (T) Arrays.asList(array);
        } else {
            t2 = (T) ag.a((Class<Object>) cls);
        }
        a(t, t2);
        return t2;
    }

    public static boolean d(Object obj) {
        return obj == null || a((Type) obj.getClass());
    }
}

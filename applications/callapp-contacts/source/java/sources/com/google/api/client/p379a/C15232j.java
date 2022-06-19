package com.google.api.client.p379a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.base.C15391m;
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
/* renamed from: com.google.api.client.a.j */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/j.class */
public final class C15232j {

    /* renamed from: a */
    public static final Boolean f55078a;

    /* renamed from: b */
    public static final String f55079b;

    /* renamed from: g */
    public static final Float f55084g;

    /* renamed from: i */
    public static final Double f55086i;

    /* renamed from: j */
    public static final BigInteger f55087j;

    /* renamed from: k */
    public static final BigDecimal f55088k;

    /* renamed from: l */
    public static final C15237l f55089l;

    /* renamed from: m */
    private static final ConcurrentHashMap<Class<?>, Object> f55090m;

    /* renamed from: c */
    public static final Character f55080c = (char) 0;

    /* renamed from: d */
    public static final Byte f55081d = (byte) 0;

    /* renamed from: e */
    public static final Short f55082e = (short) 0;

    /* renamed from: f */
    public static final Integer f55083f = 0;

    /* renamed from: h */
    public static final Long f55085h = 0L;

    static {
        Boolean bool = Boolean.TRUE;
        f55078a = bool;
        String str = new String();
        f55079b = str;
        Float valueOf = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        f55084g = valueOf;
        Double valueOf2 = Double.valueOf(0.0d);
        f55086i = valueOf2;
        BigInteger bigInteger = new BigInteger("0");
        f55087j = bigInteger;
        BigDecimal bigDecimal = new BigDecimal("0");
        f55088k = bigDecimal;
        C15237l c15237l = new C15237l(0L);
        f55089l = c15237l;
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        f55090m = concurrentHashMap;
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
        concurrentHashMap.put(C15237l.class, c15237l);
    }

    /* renamed from: a */
    public static <T> T m9242a(Class<T> cls) {
        Class<?> componentType;
        int i;
        Object obj = f55090m.get(cls);
        Enum r9 = obj;
        if (obj == null) {
            int i2 = 0;
            if (cls.isArray()) {
                Class<T> cls2 = cls;
                do {
                    componentType = cls2.getComponentType();
                    i = i2 + 1;
                    cls2 = componentType;
                    i2 = i;
                } while (componentType.isArray());
                r9 = Array.newInstance(componentType, new int[i]);
            } else if (cls.isEnum()) {
                C15240m m9244a = C15228h.m9246a((Class<?>) cls).m9244a((String) null);
                C15391m.m8944a(m9244a, "enum missing constant with @NullValue annotation: %s", cls);
                r9 = m9244a.m9216b();
            } else {
                r9 = C15214ag.m9270a((Class<Object>) cls);
            }
            Object putIfAbsent = f55090m.putIfAbsent(cls, r9);
            if (putIfAbsent != null) {
                r9 = putIfAbsent;
            }
        }
        return (T) r9;
    }

    /* renamed from: a */
    public static Object m9238a(Type type, String str) {
        Class cls = type instanceof Class ? (Class) type : null;
        if (type == null || cls != null) {
            if (cls == Void.class) {
                return null;
            }
            if (str == null || cls == null || cls.isAssignableFrom(String.class)) {
                return str;
            }
            if (cls == Character.class || cls == Character.TYPE) {
                if (str.length() != 1) {
                    throw new IllegalArgumentException("expected type Character/char but got ".concat(String.valueOf(cls)));
                }
                return Character.valueOf(str.charAt(0));
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
                if (cls == C15237l.class) {
                    return C15237l.m9227a(str);
                }
                if (cls == BigInteger.class) {
                    return new BigInteger(str);
                }
                if (cls == BigDecimal.class) {
                    return new BigDecimal(str);
                }
                if (cls.isEnum()) {
                    if (!C15228h.m9246a(cls).f55074c.contains(str)) {
                        throw new IllegalArgumentException(String.format("given enum name %s not part of enumeration", str));
                    }
                    return C15228h.m9246a(cls).m9244a(str).m9216b();
                }
            }
        }
        throw new IllegalArgumentException("expected primitive class, but got: ".concat(String.valueOf(type)));
    }

    /* renamed from: a */
    public static Type m9237a(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = C15214ag.m9262a((WildcardType) type);
        }
        while (type2 instanceof TypeVariable) {
            Type m9259a = C15214ag.m9259a(list, (TypeVariable<?>) type2);
            Type type3 = type2;
            if (m9259a != null) {
                type3 = m9259a;
            }
            type2 = type3;
            if (type3 instanceof TypeVariable) {
                type2 = ((TypeVariable) type3).getBounds()[0];
            }
        }
        return type2;
    }

    /* renamed from: a */
    public static void m9240a(Object obj, Object obj2) {
        Class<?> cls = obj.getClass();
        C15391m.m8943a(cls == obj2.getClass());
        if (cls.isArray()) {
            C15391m.m8943a(Array.getLength(obj) == Array.getLength(obj2));
            int i = 0;
            for (Object obj3 : C15214ag.m9267a(obj)) {
                Array.set(obj2, i, m9233c(obj3));
                i++;
            }
        } else if (Collection.class.isAssignableFrom(cls)) {
            Collection<Object> collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            for (Object obj4 : collection) {
                collection2.add(m9233c(obj4));
            }
        } else {
            boolean isAssignableFrom = C15241n.class.isAssignableFrom(cls);
            if (isAssignableFrom || !Map.class.isAssignableFrom(cls)) {
                C15228h m9246a = isAssignableFrom ? ((C15241n) obj).classInfo : C15228h.m9246a(cls);
                for (String str : m9246a.f55074c) {
                    C15240m m9244a = m9246a.m9244a(str);
                    if (!m9244a.m9223a() && (!isAssignableFrom || !m9244a.f55114a)) {
                        Object m9221a = m9244a.m9221a(obj);
                        if (m9221a != null) {
                            m9244a.m9220a(obj2, m9233c(m9221a));
                        }
                    }
                }
            } else if (!C15197a.class.isAssignableFrom(cls)) {
                Map map = (Map) obj2;
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    map.put(entry.getKey(), m9233c(entry.getValue()));
                }
            } else {
                C15197a c15197a = (C15197a) obj2;
                C15197a c15197a2 = (C15197a) obj;
                int size = c15197a2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    c15197a.m9304a(i2, m9233c(c15197a2.m9305a(i2)));
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m9241a(Object obj) {
        return obj != null && obj == f55090m.get(obj.getClass());
    }

    /* renamed from: a */
    public static boolean m9239a(Type type) {
        if (!(type instanceof Class)) {
            return false;
        }
        Class cls = (Class) type;
        return cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == C15237l.class || cls == Boolean.class;
    }

    /* renamed from: b */
    public static Collection<Object> m9234b(Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = C15214ag.m9262a((WildcardType) type);
        }
        Type type3 = type2;
        if (type2 instanceof ParameterizedType) {
            type3 = ((ParameterizedType) type2).getRawType();
        }
        Class cls = type3 instanceof Class ? (Class) type3 : null;
        if (type3 == null || (type3 instanceof GenericArrayType) || (cls != null && (cls.isArray() || cls.isAssignableFrom(ArrayList.class)))) {
            return new ArrayList();
        }
        if (cls == null) {
            throw new IllegalArgumentException("unable to create new instance of type: ".concat(String.valueOf(type3)));
        }
        return cls.isAssignableFrom(HashSet.class) ? new HashSet() : cls.isAssignableFrom(TreeSet.class) ? new TreeSet() : (Collection) C15214ag.m9270a((Class<Object>) cls);
    }

    /* renamed from: b */
    public static Map<String, Object> m9236b(Class<?> cls) {
        return (cls == null || cls.isAssignableFrom(C15197a.class)) ? C15197a.m9306a() : cls.isAssignableFrom(TreeMap.class) ? new TreeMap() : (Map) C15214ag.m9270a((Class<Object>) cls);
    }

    /* renamed from: b */
    public static Map<String, Object> m9235b(Object obj) {
        return (obj == null || m9241a(obj)) ? Collections.emptyMap() : obj instanceof Map ? (Map) obj : new C15233k(obj, false);
    }

    /* renamed from: c */
    public static <T> T m9233c(T t) {
        C15197a c15197a;
        if (t == null || m9239a((Type) t.getClass())) {
            return t;
        }
        if (t instanceof C15241n) {
            return (T) ((C15241n) t).clone();
        }
        Class<?> cls = t.getClass();
        if (cls.isArray()) {
            c15197a = Array.newInstance(cls.getComponentType(), Array.getLength(t));
        } else if (t instanceof C15197a) {
            c15197a = ((C15197a) t).clone();
        } else if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
            Object[] array = ((List) t).toArray();
            m9240a(array, array);
            return (T) Arrays.asList(array);
        } else {
            c15197a = C15214ag.m9270a((Class<Object>) cls);
        }
        m9240a(t, c15197a);
        return (T) c15197a;
    }

    /* renamed from: d */
    public static boolean m9232d(Object obj) {
        return obj == null || m9239a((Type) obj.getClass());
    }
}

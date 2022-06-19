package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbt.class */
public final class zzbt {
    private static final Boolean zzes = new Boolean(true);
    private static final String zzet = new String();
    private static final Character zzeu = new Character(0);
    private static final Byte zzev = new Byte((byte) 0);
    private static final Short zzew = new Short((short) 0);
    private static final Integer zzex = new Integer(0);
    private static final Float zzey = new Float((float) FlexItem.FLEX_GROW_DEFAULT);
    private static final Long zzez = new Long(0);
    private static final Double zzfa = new Double((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
    private static final BigInteger zzfb = new BigInteger("0");
    private static final BigDecimal zzfc = new BigDecimal("0");
    private static final zzbw zzfd = new zzbw(0);
    private static final ConcurrentHashMap<Class<?>, Object> zzfe;

    static {
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        zzfe = concurrentHashMap;
        concurrentHashMap.put(Boolean.class, zzes);
        zzfe.put(String.class, zzet);
        zzfe.put(Character.class, zzeu);
        zzfe.put(Byte.class, zzev);
        zzfe.put(Short.class, zzew);
        zzfe.put(Integer.class, zzex);
        zzfe.put(Float.class, zzey);
        zzfe.put(Long.class, zzez);
        zzfe.put(Double.class, zzfa);
        zzfe.put(BigInteger.class, zzfb);
        zzfe.put(BigDecimal.class, zzfc);
        zzfe.put(zzbw.class, zzfd);
    }

    public static <T> T clone(T t) {
        zzbl zzblVar;
        if (t == null || zza(t.getClass())) {
            return t;
        }
        if (t instanceof zzby) {
            return (T) ((zzby) ((zzby) t).clone());
        }
        Class<?> cls = t.getClass();
        if (cls.isArray()) {
            zzblVar = Array.newInstance(cls.getComponentType(), Array.getLength(t));
        } else if (t instanceof zzbl) {
            zzblVar = (zzbl) ((zzbl) t).clone();
        } else if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
            Object[] array = ((List) t).toArray();
            zza(array, array);
            return (T) Arrays.asList(array);
        } else {
            zzblVar = zzco.zzf((Class<Object>) cls);
        }
        zza(t, zzblVar);
        return (T) zzblVar;
    }

    public static boolean isNull(Object obj) {
        return obj != null && obj == zzfe.get(obj.getClass());
    }

    public static Object zza(Type type, String str) {
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
                String valueOf = String.valueOf(cls);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 37);
                sb.append("expected type Character/char but got ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
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
                if (cls == zzbw.class) {
                    return zzbw.zzaf(str);
                }
                if (cls == BigInteger.class) {
                    return new BigInteger(str);
                }
                if (cls == BigDecimal.class) {
                    return new BigDecimal(str);
                }
                if (cls.isEnum()) {
                    if (!zzbr.zzc(cls).zzer.contains(str)) {
                        throw new IllegalArgumentException(String.format("given enum name %s not part of enumeration", str));
                    }
                    return zzbr.zzc(cls).zzae(str).zzcb();
                }
            }
        }
        String valueOf2 = String.valueOf(type);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 35);
        sb2.append("expected primitive class, but got: ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static Type zza(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = zzco.zza((WildcardType) type);
        }
        while (type2 instanceof TypeVariable) {
            Type zza = zzco.zza(list, (TypeVariable) type2);
            Type type3 = type2;
            if (zza != null) {
                type3 = zza;
            }
            type2 = type3;
            if (type3 instanceof TypeVariable) {
                type2 = ((TypeVariable) type3).getBounds()[0];
            }
        }
        return type2;
    }

    public static void zza(Object obj, Object obj2) {
        Class<?> cls = obj.getClass();
        if (cls == obj2.getClass()) {
            if (cls.isArray()) {
                if (!(Array.getLength(obj) == Array.getLength(obj2))) {
                    throw new IllegalArgumentException();
                }
                int i = 0;
                for (Object obj3 : zzco.zzi(obj)) {
                    Array.set(obj2, i, clone(obj3));
                    i++;
                }
                return;
            } else if (Collection.class.isAssignableFrom(cls)) {
                Collection<Object> collection = (Collection) obj;
                if (ArrayList.class.isAssignableFrom(cls)) {
                    ((ArrayList) obj2).ensureCapacity(collection.size());
                }
                Collection collection2 = (Collection) obj2;
                for (Object obj4 : collection) {
                    collection2.add(clone(obj4));
                }
                return;
            } else {
                boolean isAssignableFrom = zzby.class.isAssignableFrom(cls);
                if (isAssignableFrom || !Map.class.isAssignableFrom(cls)) {
                    zzbr zzc = isAssignableFrom ? ((zzby) obj).zzay : zzbr.zzc(cls);
                    for (String str : zzc.zzer) {
                        zzbz zzae = zzc.zzae(str);
                        if (!zzae.zzca() && (!isAssignableFrom || !zzae.isPrimitive())) {
                            Object zzh = zzae.zzh(obj);
                            if (zzh != null) {
                                zzae.zzb(obj2, clone(zzh));
                            }
                        }
                    }
                    return;
                } else if (!zzbl.class.isAssignableFrom(cls)) {
                    Map map = (Map) obj2;
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        map.put((String) entry.getKey(), clone(entry.getValue()));
                    }
                    return;
                } else {
                    zzbl zzblVar = (zzbl) obj2;
                    zzbl zzblVar2 = (zzbl) obj;
                    int size = zzblVar2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        zzblVar.set(i2, clone(zzblVar2.zzg(i2)));
                    }
                    return;
                }
            }
        }
        throw new IllegalArgumentException();
    }

    public static boolean zza(Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = zzco.zza((WildcardType) type);
        }
        if (!(type2 instanceof Class)) {
            return false;
        }
        Class cls = (Class) type2;
        return cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == zzbw.class || cls == Boolean.class;
    }

    public static Collection<Object> zzb(Type type) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = zzco.zza((WildcardType) type);
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
            return cls.isAssignableFrom(HashSet.class) ? new HashSet() : cls.isAssignableFrom(TreeSet.class) ? new TreeSet() : (Collection) zzco.zzf((Class<Object>) cls);
        }
        String valueOf = String.valueOf(type3);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39);
        sb.append("unable to create new instance of type: ");
        sb.append(valueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    public static <T> T zzd(Class<?> cls) {
        Class<?> componentType;
        int i;
        Object obj = zzfe.get(cls);
        Enum r9 = obj;
        if (obj == null) {
            synchronized (zzfe) {
                Object obj2 = zzfe.get(cls);
                r9 = obj2;
                if (obj2 == null) {
                    int i2 = 0;
                    if (cls.isArray()) {
                        Class<?> cls2 = cls;
                        do {
                            componentType = cls2.getComponentType();
                            i = i2 + 1;
                            cls2 = componentType;
                            i2 = i;
                        } while (componentType.isArray());
                        r9 = Array.newInstance(componentType, new int[i]);
                    } else if (cls.isEnum()) {
                        zzbz zzae = zzbr.zzc(cls).zzae(null);
                        if (zzae == null) {
                            throw new NullPointerException(zzdy.zza("enum missing constant with @NullValue annotation: %s", cls));
                        }
                        r9 = zzae.zzcb();
                    } else {
                        r9 = zzco.zzf((Class<Object>) cls);
                    }
                    zzfe.put(cls, r9);
                }
            }
        }
        return (T) r9;
    }

    public static Map<String, Object> zze(Class<?> cls) {
        return (cls == null || cls.isAssignableFrom(zzbl.class)) ? new zzbl() : cls.isAssignableFrom(TreeMap.class) ? new TreeMap() : (Map) zzco.zzf((Class<Object>) cls);
    }

    public static Map<String, Object> zzf(Object obj) {
        return (obj == null || isNull(obj)) ? Collections.emptyMap() : obj instanceof Map ? (Map) obj : new zzbs(obj, false);
    }

    public static boolean zzg(Object obj) {
        return obj == null || zza(obj.getClass());
    }
}

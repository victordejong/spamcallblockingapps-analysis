package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzco.class */
public final class zzco {
    public static Class<?> zza(ParameterizedType parameterizedType) {
        return (Class) parameterizedType.getRawType();
    }

    private static IllegalArgumentException zza(Exception exc, Class<?> cls) {
        StringBuilder sb = new StringBuilder("unable to create new instance of class ");
        sb.append(cls.getName());
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (cls.isArray()) {
            arrayList.add("because it is an array");
        } else if (cls.isPrimitive()) {
            arrayList.add("because it is primitive");
        } else if (cls == Void.class) {
            arrayList.add("because it is void");
        } else {
            if (Modifier.isInterface(cls.getModifiers())) {
                arrayList.add("because it is an interface");
            } else if (Modifier.isAbstract(cls.getModifiers())) {
                arrayList.add("because it is abstract");
            }
            if (cls.getEnclosingClass() != null && !Modifier.isStatic(cls.getModifiers())) {
                arrayList.add("because it is not static");
            }
            if (!Modifier.isPublic(cls.getModifiers())) {
                arrayList.add("possibly because it is not public");
            } else {
                try {
                    cls.getConstructor(new Class[0]);
                } catch (NoSuchMethodException e) {
                    arrayList.add("because it has no accessible default constructor");
                }
            }
        }
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        boolean z = false;
        while (i < size) {
            i++;
            String str = (String) arrayList2.get(i);
            if (z) {
                sb.append(" and");
            } else {
                z = true;
            }
            sb.append(" ");
            sb.append(str);
        }
        return new IllegalArgumentException(sb.toString(), exc);
    }

    public static Object zza(Collection<?> collection, Class<?> cls) {
        if (cls.isPrimitive()) {
            Object newInstance = Array.newInstance(cls, collection.size());
            int i = 0;
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                Array.set(newInstance, i, it.next());
                i++;
            }
            return newInstance;
        }
        return collection.toArray((Object[]) Array.newInstance(cls, collection.size()));
    }

    private static ParameterizedType zza(Type type, Class<?> cls) {
        Class<?> cls2;
        Type[] genericInterfaces;
        Type type2 = type;
        if (!(type instanceof Class)) {
            if (!(type instanceof ParameterizedType)) {
                return null;
            }
            type2 = type;
        }
        while (type2 != null && type2 != Object.class) {
            if (type2 instanceof Class) {
                cls2 = (Class) type2;
            } else {
                ParameterizedType parameterizedType = (ParameterizedType) type2;
                Class<?> zza = zza(parameterizedType);
                if (zza == cls) {
                    return parameterizedType;
                }
                if (cls.isInterface()) {
                    for (Type type3 : zza.getGenericInterfaces()) {
                        if (cls.isAssignableFrom(type3 instanceof Class ? (Class) type3 : zza((ParameterizedType) type3))) {
                            type2 = type3;
                            break;
                        }
                    }
                }
                cls2 = zza;
            }
            type2 = cls2.getGenericSuperclass();
        }
        return null;
    }

    private static Type zza(Type type, Class<?> cls, int i) {
        Type zza;
        ParameterizedType zza2 = zza(type, cls);
        if (zza2 == null) {
            return null;
        }
        Type type2 = zza2.getActualTypeArguments()[i];
        return (!(type2 instanceof TypeVariable) || (zza = zza(Arrays.asList(type), (TypeVariable) type2)) == null) ? type2 : zza;
    }

    public static Type zza(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length != 0 ? lowerBounds[0] : wildcardType.getUpperBounds()[0];
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.reflect.GenericDeclaration] */
    public static Type zza(List<Type> list, TypeVariable<?> typeVariable) {
        ParameterizedType parameterizedType;
        Type zza;
        ?? genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            Class cls = (Class) genericDeclaration;
            int size = list.size();
            ParameterizedType parameterizedType2 = null;
            while (true) {
                parameterizedType = parameterizedType2;
                if (parameterizedType != null) {
                    break;
                }
                size--;
                if (size < 0) {
                    break;
                }
                parameterizedType2 = zza(list.get(size), cls);
            }
            if (parameterizedType == null) {
                return null;
            }
            TypeVariable<?>[] typeParameters = genericDeclaration.getTypeParameters();
            int i = 0;
            while (i < typeParameters.length && !typeParameters[i].equals(typeVariable)) {
                i++;
            }
            Type type = parameterizedType.getActualTypeArguments()[i];
            return (!(type instanceof TypeVariable) || (zza = zza(list, (TypeVariable) type)) == null) ? type : zza;
        }
        return null;
    }

    public static boolean zza(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }

    public static Class<?> zzb(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof TypeVariable) {
            type2 = zza(list, (TypeVariable) type);
        }
        if (type2 instanceof GenericArrayType) {
            return Array.newInstance(zzb(list, zzd(type2)), 0).getClass();
        }
        if (type2 instanceof Class) {
            return (Class) type2;
        }
        if (type2 instanceof ParameterizedType) {
            return zza((ParameterizedType) type2);
        }
        zzch.checkArgument(type2 == null, "wildcard type is not supported: %s", type2);
        return Object.class;
    }

    public static boolean zzc(Type type) {
        if (!(type instanceof GenericArrayType)) {
            return (type instanceof Class) && ((Class) type).isArray();
        }
        return true;
    }

    public static Type zzd(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    public static Type zze(Type type) {
        return zza(type, Iterable.class, 0);
    }

    public static <T> T zzf(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw zza((Exception) e, (Class<?>) cls);
        } catch (InstantiationException e2) {
            throw zza((Exception) e2, (Class<?>) cls);
        }
    }

    public static Type zzf(Type type) {
        return zza(type, Map.class, 1);
    }

    public static <T> Iterable<T> zzi(Object obj) {
        if (obj instanceof Iterable) {
            return (Iterable) obj;
        }
        Class<?> cls = obj.getClass();
        zzch.checkArgument(cls.isArray(), "not an array or Iterable: %s", cls);
        return !cls.getComponentType().isPrimitive() ? Arrays.asList((Object[]) obj) : new zzcn(obj);
    }
}

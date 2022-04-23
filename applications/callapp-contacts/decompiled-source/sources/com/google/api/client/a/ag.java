package com.google.api.client.a;

import com.google.common.base.m;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
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
import java.util.NoSuchElementException;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/ag.class */
public final class ag {
    private ag() {
    }

    public static Class<?> a(ParameterizedType parameterizedType) {
        return (Class) parameterizedType.getRawType();
    }

    public static Class<?> a(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof TypeVariable) {
            type2 = a(list, (TypeVariable<?>) type);
        }
        if (type2 instanceof GenericArrayType) {
            return Array.newInstance(a(list, b(type2)), 0).getClass();
        }
        if (type2 instanceof Class) {
            return (Class) type2;
        }
        if (type2 instanceof ParameterizedType) {
            return a((ParameterizedType) type2);
        }
        m.a(type2 == null, "wildcard type is not supported: %s", type2);
        return Object.class;
    }

    private static IllegalArgumentException a(Exception exc, Class<?> cls) {
        StringBuilder sb = new StringBuilder("unable to create new instance of class ");
        sb.append(cls.getName());
        ArrayList arrayList = new ArrayList();
        boolean z = false;
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
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (z) {
                sb.append(" and");
            } else {
                z = true;
            }
            sb.append(StringUtils.SPACE);
            sb.append(str);
        }
        return new IllegalArgumentException(sb.toString(), exc);
    }

    public static <T> Iterable<T> a(final Object obj) {
        if (obj instanceof Iterable) {
            return (Iterable) obj;
        }
        Class<?> cls = obj.getClass();
        m.a(cls.isArray(), "not an array or Iterable: %s", cls);
        return !cls.getComponentType().isPrimitive() ? Arrays.asList((Object[]) obj) : new Iterable<T>() { // from class: com.google.api.client.a.ag.1
            @Override // java.lang.Iterable
            public final Iterator<T> iterator() {
                return new Iterator<T>() { // from class: com.google.api.client.a.ag.1.1

                    /* renamed from: a  reason: collision with root package name */
                    final int f31605a;

                    /* renamed from: b  reason: collision with root package name */
                    int f31606b = 0;

                    {
                        this.f31605a = Array.getLength(obj);
                    }

                    @Override // java.util.Iterator
                    public final boolean hasNext() {
                        return this.f31606b < this.f31605a;
                    }

                    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
                    @Override // java.util.Iterator
                    public final T next() {
                        if (hasNext()) {
                            Object obj2 = obj;
                            int i = this.f31606b;
                            this.f31606b = i + 1;
                            return Array.get(obj2, i);
                        }
                        throw new NoSuchElementException();
                    }

                    @Override // java.util.Iterator
                    public final void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }
        };
    }

    public static <T> T a(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw a((Exception) e, (Class<?>) cls);
        } catch (InstantiationException e2) {
            throw a((Exception) e2, (Class<?>) cls);
        }
    }

    public static Object a(Collection<?> collection, Class<?> cls) {
        if (!cls.isPrimitive()) {
            return collection.toArray((Object[]) Array.newInstance(cls, collection.size()));
        }
        Object newInstance = Array.newInstance(cls, collection.size());
        int i = 0;
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            Array.set(newInstance, i, it2.next());
            i++;
        }
        return newInstance;
    }

    private static ParameterizedType a(Type type, Class<?> cls) {
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
                Class<?> a2 = a(parameterizedType);
                if (a2 == cls) {
                    return parameterizedType;
                }
                if (cls.isInterface()) {
                    for (Type type3 : a2.getGenericInterfaces()) {
                        if (cls.isAssignableFrom(type3 instanceof Class ? (Class) type3 : a((ParameterizedType) type3))) {
                            type2 = type3;
                            break;
                        }
                    }
                }
                cls2 = a2;
            }
            type2 = cls2.getGenericSuperclass();
        }
        return null;
    }

    public static Type a(Type type, Class<?> cls, int i) {
        Type a2;
        ParameterizedType a3 = a(type, cls);
        if (a3 == null) {
            return null;
        }
        Type type2 = a3.getActualTypeArguments()[i];
        return (!(type2 instanceof TypeVariable) || (a2 = a((List<Type>) Arrays.asList(type), (TypeVariable<?>) ((TypeVariable) type2))) == null) ? type2 : a2;
    }

    public static Type a(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length != 0 ? lowerBounds[0] : wildcardType.getUpperBounds()[0];
    }

    public static Type a(List<Type> list, TypeVariable<?> typeVariable) {
        Type a2;
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (!(genericDeclaration instanceof Class)) {
            return null;
        }
        Class cls = (Class) genericDeclaration;
        int size = list.size();
        ParameterizedType parameterizedType = null;
        while (parameterizedType == null) {
            size--;
            if (size < 0) {
                break;
            }
            parameterizedType = a(list.get(size), cls);
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
        return (!(type instanceof TypeVariable) || (a2 = a(list, (TypeVariable<?>) ((TypeVariable) type))) == null) ? type : a2;
    }

    public static boolean a(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }

    public static boolean a(Type type) {
        if (!(type instanceof GenericArrayType)) {
            return (type instanceof Class) && ((Class) type).isArray();
        }
        return true;
    }

    public static Type b(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }
}

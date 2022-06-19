package com.google.api.client.util;

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
import java.util.NoSuchElementException;
/* renamed from: com.google.api.client.util.d0 */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/d0.class */
public class C8695d0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.util.d0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/d0$a.class */
    public static final class C8696a implements Iterable<T> {

        /* renamed from: d */
        final /* synthetic */ Object f38490d;

        /* renamed from: com.google.api.client.util.d0$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/d0$a$a.class */
        class C8697a implements Iterator<T> {

            /* renamed from: d */
            final int f38491d;

            /* renamed from: e */
            int f38492e = 0;

            C8697a() {
                C8696a.this = r4;
                this.f38491d = Array.getLength(r4.f38490d);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f38492e < this.f38491d;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
            @Override // java.util.Iterator
            public T next() {
                if (hasNext()) {
                    Object obj = C8696a.this.f38490d;
                    int i = this.f38492e;
                    this.f38492e = i + 1;
                    return Array.get(obj, i);
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        C8696a(Object obj) {
            this.f38490d = obj;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C8697a();
        }
    }

    /* renamed from: a */
    private static Type m2927a(Type type, Class<?> cls, int i) {
        Type m2914n;
        ParameterizedType m2920h = m2920h(type, cls);
        if (m2920h == null) {
            return null;
        }
        Type type2 = m2920h.getActualTypeArguments()[i];
        return (!(type2 instanceof TypeVariable) || (m2914n = m2914n(Arrays.asList(type), (TypeVariable) type2)) == null) ? type2 : m2914n;
    }

    /* renamed from: b */
    public static Type m2926b(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    /* renamed from: c */
    public static Type m2925c(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length != 0 ? lowerBounds[0] : wildcardType.getUpperBounds()[0];
    }

    /* renamed from: d */
    public static Type m2924d(Type type) {
        return m2927a(type, Iterable.class, 0);
    }

    /* renamed from: e */
    public static Type m2923e(Type type) {
        return m2927a(type, Map.class, 1);
    }

    /* renamed from: f */
    public static Class<?> m2922f(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof TypeVariable) {
            type2 = m2914n(list, (TypeVariable) type);
        }
        if (type2 instanceof GenericArrayType) {
            return Array.newInstance(m2922f(list, m2926b(type2)), 0).getClass();
        }
        if (type2 instanceof Class) {
            return (Class) type2;
        }
        if (type2 instanceof ParameterizedType) {
            return m2921g((ParameterizedType) type2);
        }
        C8731w.m2837c(type2 == null, "wildcard type is not supported: %s", type2);
        return Object.class;
    }

    /* renamed from: g */
    public static Class<?> m2921g(ParameterizedType parameterizedType) {
        return (Class) parameterizedType.getRawType();
    }

    /* renamed from: h */
    public static ParameterizedType m2920h(Type type, Class<?> cls) {
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
                Class<?> m2921g = m2921g(parameterizedType);
                if (m2921g == cls) {
                    return parameterizedType;
                }
                if (cls.isInterface()) {
                    for (Type type3 : m2921g.getGenericInterfaces()) {
                        if (cls.isAssignableFrom(type3 instanceof Class ? (Class) type3 : m2921g((ParameterizedType) type3))) {
                            type2 = type3;
                            break;
                        }
                    }
                }
                cls2 = m2921g;
            }
            type2 = cls2.getGenericSuperclass();
        }
        return null;
    }

    /* renamed from: i */
    private static IllegalArgumentException m2919i(Exception exc, Class<?> cls) {
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
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
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

    /* renamed from: j */
    public static boolean m2918j(Type type) {
        return (type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray());
    }

    /* renamed from: k */
    public static boolean m2917k(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }

    /* renamed from: l */
    public static <T> Iterable<T> m2916l(Object obj) {
        if (obj instanceof Iterable) {
            return (Iterable) obj;
        }
        Class<?> cls = obj.getClass();
        C8731w.m2837c(cls.isArray(), "not an array or Iterable: %s", cls);
        return !cls.getComponentType().isPrimitive() ? Arrays.asList((Object[]) obj) : new C8696a(obj);
    }

    /* renamed from: m */
    public static <T> T m2915m(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw m2919i(e, cls);
        } catch (InstantiationException e2) {
            throw m2919i(e2, cls);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.reflect.GenericDeclaration] */
    /* renamed from: n */
    public static Type m2914n(List<Type> list, TypeVariable<?> typeVariable) {
        ParameterizedType parameterizedType;
        Type m2914n;
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
                parameterizedType2 = m2920h(list.get(size), cls);
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
            return (!(type instanceof TypeVariable) || (m2914n = m2914n(list, (TypeVariable) type)) == null) ? type : m2914n;
        }
        return null;
    }

    /* renamed from: o */
    public static Object m2913o(Collection<?> collection, Class<?> cls) {
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
}

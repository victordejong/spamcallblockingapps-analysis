package com.google.api.client.p379a;

import com.google.common.base.C15391m;
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
import java.util.NoSuchElementException;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.api.client.a.ag */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/ag.class */
public final class C15214ag {
    private C15214ag() {
    }

    /* renamed from: a */
    public static Class<?> m9266a(ParameterizedType parameterizedType) {
        return (Class) parameterizedType.getRawType();
    }

    /* renamed from: a */
    public static Class<?> m9260a(List<Type> list, Type type) {
        Type type2 = type;
        if (type instanceof TypeVariable) {
            type2 = m9259a(list, (TypeVariable<?>) type);
        }
        if (type2 instanceof GenericArrayType) {
            return Array.newInstance(m9260a(list, m9258b(type2)), 0).getClass();
        }
        if (type2 instanceof Class) {
            return (Class) type2;
        }
        if (type2 instanceof ParameterizedType) {
            return m9266a((ParameterizedType) type2);
        }
        C15391m.m8936a(type2 == null, "wildcard type is not supported: %s", type2);
        return Object.class;
    }

    /* renamed from: a */
    private static IllegalArgumentException m9268a(Exception exc, Class<?> cls) {
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

    /* renamed from: a */
    public static <T> Iterable<T> m9267a(final Object obj) {
        if (obj instanceof Iterable) {
            return (Iterable) obj;
        }
        Class<?> cls = obj.getClass();
        C15391m.m8936a(cls.isArray(), "not an array or Iterable: %s", cls);
        return !cls.getComponentType().isPrimitive() ? Arrays.asList((Object[]) obj) : new Iterable<T>() { // from class: com.google.api.client.a.ag.1
            @Override // java.lang.Iterable
            public final Iterator<T> iterator() {
                return new Iterator<T>() { // from class: com.google.api.client.a.ag.1.1

                    /* renamed from: a */
                    final int f55055a;

                    /* renamed from: b */
                    int f55056b = 0;

                    {
                        C152151.this = this;
                        this.f55055a = Array.getLength(obj);
                    }

                    @Override // java.util.Iterator
                    public final boolean hasNext() {
                        return this.f55056b < this.f55055a;
                    }

                    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
                    @Override // java.util.Iterator
                    public final T next() {
                        if (hasNext()) {
                            Object obj2 = obj;
                            int i = this.f55056b;
                            this.f55056b = i + 1;
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

    /* renamed from: a */
    public static <T> T m9270a(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw m9268a((Exception) e, (Class<?>) cls);
        } catch (InstantiationException e2) {
            throw m9268a((Exception) e2, (Class<?>) cls);
        }
    }

    /* renamed from: a */
    public static Object m9261a(Collection<?> collection, Class<?> cls) {
        if (cls.isPrimitive()) {
            Object newInstance = Array.newInstance(cls, collection.size());
            int i = 0;
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                Array.set(newInstance, i, it2.next());
                i++;
            }
            return newInstance;
        }
        return collection.toArray((Object[]) Array.newInstance(cls, collection.size()));
    }

    /* renamed from: a */
    private static ParameterizedType m9264a(Type type, Class<?> cls) {
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
                Class<?> m9266a = m9266a(parameterizedType);
                if (m9266a == cls) {
                    return parameterizedType;
                }
                if (cls.isInterface()) {
                    for (Type type3 : m9266a.getGenericInterfaces()) {
                        if (cls.isAssignableFrom(type3 instanceof Class ? (Class) type3 : m9266a((ParameterizedType) type3))) {
                            type2 = type3;
                            break;
                        }
                    }
                }
                cls2 = m9266a;
            }
            type2 = cls2.getGenericSuperclass();
        }
        return null;
    }

    /* renamed from: a */
    public static Type m9263a(Type type, Class<?> cls, int i) {
        Type m9259a;
        ParameterizedType m9264a = m9264a(type, cls);
        if (m9264a == null) {
            return null;
        }
        Type type2 = m9264a.getActualTypeArguments()[i];
        return (!(type2 instanceof TypeVariable) || (m9259a = m9259a((List<Type>) Arrays.asList(type), (TypeVariable<?>) ((TypeVariable) type2))) == null) ? type2 : m9259a;
    }

    /* renamed from: a */
    public static Type m9262a(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length != 0 ? lowerBounds[0] : wildcardType.getUpperBounds()[0];
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.reflect.GenericDeclaration] */
    /* renamed from: a */
    public static Type m9259a(List<Type> list, TypeVariable<?> typeVariable) {
        ParameterizedType parameterizedType;
        Type m9259a;
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
                parameterizedType2 = m9264a(list.get(size), cls);
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
            return (!(type instanceof TypeVariable) || (m9259a = m9259a(list, (TypeVariable<?>) ((TypeVariable) type))) == null) ? type : m9259a;
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m9269a(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }

    /* renamed from: a */
    public static boolean m9265a(Type type) {
        if (!(type instanceof GenericArrayType)) {
            return (type instanceof Class) && ((Class) type).isArray();
        }
        return true;
    }

    /* renamed from: b */
    public static Type m9258b(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }
}

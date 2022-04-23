package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;
import okhttp3.HttpUrl;
/* renamed from: com.google.gson.internal.$Gson$Types  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/$Gson$Types.class */
public final class C$Gson$Types {

    /* renamed from: a */
    static final Type[] f11962a = new Type[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl.class */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: f */
        private final Type f11963f;

        public GenericArrayTypeImpl(Type type) {
            this.f11963f = C$Gson$Types.m8364b(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C$Gson$Types.m8360f(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f11963f;
        }

        public int hashCode() {
            return this.f11963f.hashCode();
        }

        public String toString() {
            return C$Gson$Types.m8345u(this.f11963f) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.gson.internal.$Gson$Types$ParameterizedTypeImpl */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl.class */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: f */
        private final Type f11964f;

        /* renamed from: g */
        private final Type f11965g;

        /* renamed from: h */
        private final Type[] f11966h;

        public ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                C$Gson$Preconditions.m8367a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f11964f = type == null ? null : C$Gson$Types.m8364b(type);
            this.f11965g = C$Gson$Types.m8364b(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f11966h = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                C$Gson$Preconditions.m8366b(this.f11966h[i]);
                C$Gson$Types.m8363c(this.f11966h[i]);
                Type[] typeArr3 = this.f11966h;
                typeArr3[i] = C$Gson$Types.m8364b(typeArr3[i]);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C$Gson$Types.m8360f(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f11966h.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f11964f;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f11965g;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.f11966h) ^ this.f11965g.hashCode()) ^ C$Gson$Types.m8353m(this.f11964f);
        }

        public String toString() {
            int length = this.f11966h.length;
            if (length == 0) {
                return C$Gson$Types.m8345u(this.f11965g);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(C$Gson$Types.m8345u(this.f11965g));
            sb.append("<");
            sb.append(C$Gson$Types.m8345u(this.f11966h[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(C$Gson$Types.m8345u(this.f11966h[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.gson.internal.$Gson$Types$WildcardTypeImpl */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/$Gson$Types$WildcardTypeImpl.class */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: f */
        private final Type f11967f;

        /* renamed from: g */
        private final Type f11968g;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            C$Gson$Preconditions.m8367a(typeArr2.length <= 1);
            C$Gson$Preconditions.m8367a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                C$Gson$Preconditions.m8366b(typeArr2[0]);
                C$Gson$Types.m8363c(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                C$Gson$Preconditions.m8367a(z);
                this.f11968g = C$Gson$Types.m8364b(typeArr2[0]);
                this.f11967f = Object.class;
                return;
            }
            C$Gson$Preconditions.m8366b(typeArr[0]);
            C$Gson$Types.m8363c(typeArr[0]);
            this.f11968g = null;
            this.f11967f = C$Gson$Types.m8364b(typeArr[0]);
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C$Gson$Types.m8360f(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f11968g;
            return type != null ? new Type[]{type} : C$Gson$Types.f11962a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f11967f};
        }

        public int hashCode() {
            Type type = this.f11968g;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f11967f.hashCode() + 31);
        }

        public String toString() {
            if (this.f11968g != null) {
                return "? super " + C$Gson$Types.m8345u(this.f11968g);
            } else if (this.f11967f == Object.class) {
                return "?";
            } else {
                return "? extends " + C$Gson$Types.m8345u(this.f11967f);
            }
        }
    }

    private C$Gson$Types() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static GenericArrayType m8365a(Type type) {
        return new GenericArrayTypeImpl(type);
    }

    /* renamed from: b */
    public static Type m8364b(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Type type2 = cls;
            if (cls.isArray()) {
                type2 = new GenericArrayTypeImpl(m8364b(cls.getComponentType()));
            }
            return type2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new ParameterizedTypeImpl(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new GenericArrayTypeImpl(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new WildcardTypeImpl(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    /* renamed from: c */
    static void m8363c(Type type) {
        C$Gson$Preconditions.m8367a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    /* renamed from: d */
    private static Class<?> m8362d(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    /* renamed from: e */
    static boolean m8361e(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: f */
    public static boolean m8360f(Type type, Type type2) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            if (!m8361e(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                z3 = false;
            }
            return z3;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return m8360f(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (!Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) || !Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                z = false;
            }
            return z;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (typeVariable.getGenericDeclaration() != typeVariable2.getGenericDeclaration() || !typeVariable.getName().equals(typeVariable2.getName())) {
                z2 = false;
            }
            return z2;
        }
    }

    /* renamed from: g */
    public static Type m8359g(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    /* renamed from: h */
    public static Type m8358h(Type type, Class<?> cls) {
        Type l = m8354l(type, cls, Collection.class);
        Type type2 = l;
        if (l instanceof WildcardType) {
            type2 = ((WildcardType) l).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: i */
    static Type m8357i(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                if (interfaces[i] == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(interfaces[i])) {
                    return m8357i(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return m8357i(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* renamed from: j */
    public static Type[] m8356j(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type l = m8354l(type, cls, Map.class);
        return l instanceof ParameterizedType ? ((ParameterizedType) l).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    /* renamed from: k */
    public static Class<?> m8355k(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            C$Gson$Preconditions.m8367a(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(m8355k(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return m8355k(((WildcardType) type).getUpperBounds()[0]);
            }
            String name = type == null ? "null" : type.getClass().getName();
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    /* renamed from: l */
    static Type m8354l(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        C$Gson$Preconditions.m8367a(cls2.isAssignableFrom(cls));
        return m8350p(type2, cls, m8357i(type2, cls, cls2));
    }

    /* renamed from: m */
    static int m8353m(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: n */
    private static int m8352n(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    /* renamed from: o */
    public static ParameterizedType m8351o(Type type, Type type2, Type... typeArr) {
        return new ParameterizedTypeImpl(type, type2, typeArr);
    }

    /* renamed from: p */
    public static Type m8350p(Type type, Class<?> cls, Type type2) {
        return m8349q(type, cls, type2, new HashSet());
    }

    /* renamed from: q */
    private static Type m8349q(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        while (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            Type r = m8348r(type, cls, typeVariable);
            type2 = r;
            if (r == typeVariable) {
                return r;
            }
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type q = m8349q(type, cls, componentType, collection);
                return componentType == q ? cls2 : m8365a(q);
            }
        }
        if (type2 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type2;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type q2 = m8349q(type, cls, genericComponentType, collection);
            return genericComponentType == q2 ? genericArrayType : m8365a(q2);
        }
        if (type2 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type q3 = m8349q(type, cls, ownerType, collection);
            boolean z = q3 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i = 0; i < length; i++) {
                Type q4 = m8349q(type, cls, actualTypeArguments[i], collection);
                z = z;
                actualTypeArguments = actualTypeArguments;
                if (q4 != actualTypeArguments[i]) {
                    z = z;
                    actualTypeArguments = actualTypeArguments;
                    if (!z) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z = true;
                    }
                    actualTypeArguments[i] = q4;
                }
            }
            ParameterizedType parameterizedType2 = parameterizedType;
            if (z) {
                parameterizedType2 = m8351o(q3, parameterizedType.getRawType(), actualTypeArguments);
            }
            return parameterizedType2;
        }
        WildcardType wildcardType = type2;
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type2;
            Type[] lowerBounds = wildcardType2.getLowerBounds();
            Type[] upperBounds = wildcardType2.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type q5 = m8349q(type, cls, lowerBounds[0], collection);
                wildcardType = wildcardType2;
                if (q5 != lowerBounds[0]) {
                    return m8346t(q5);
                }
            } else {
                wildcardType = wildcardType2;
                if (upperBounds.length == 1) {
                    Type q6 = m8349q(type, cls, upperBounds[0], collection);
                    wildcardType = wildcardType2;
                    if (q6 != upperBounds[0]) {
                        return m8347s(q6);
                    }
                }
            }
        }
        return wildcardType;
    }

    /* renamed from: r */
    static Type m8348r(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> d = m8362d(typeVariable);
        if (d == null) {
            return typeVariable;
        }
        Type i = m8357i(type, cls, d);
        if (!(i instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) i).getActualTypeArguments()[m8352n(d.getTypeParameters(), typeVariable)];
    }

    /* renamed from: s */
    public static WildcardType m8347s(Type type) {
        return new WildcardTypeImpl(type instanceof WildcardType ? ((WildcardType) type).getUpperBounds() : new Type[]{type}, f11962a);
    }

    /* renamed from: t */
    public static WildcardType m8346t(Type type) {
        return new WildcardTypeImpl(new Type[]{Object.class}, type instanceof WildcardType ? ((WildcardType) type).getLowerBounds() : new Type[]{type});
    }

    /* renamed from: u */
    public static String m8345u(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}

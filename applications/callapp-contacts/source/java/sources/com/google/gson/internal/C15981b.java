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
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.HttpUrl;
/* renamed from: com.google.gson.internal.b */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b.class */
public final class C15981b {

    /* renamed from: a */
    static final Type[] f56642a = new Type[0];

    /* renamed from: com.google.gson.internal.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b$a.class */
    public static final class C15982a implements Serializable, GenericArrayType {

        /* renamed from: a */
        private final Type f56643a;

        public C15982a(Type type) {
            this.f56643a = C15981b.m7947a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C15981b.m7942a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f56643a;
        }

        public final int hashCode() {
            return this.f56643a.hashCode();
        }

        public final String toString() {
            return C15981b.m7937c(this.f56643a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* renamed from: com.google.gson.internal.b$b */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b$b.class */
    public static final class C15983b implements Serializable, ParameterizedType {

        /* renamed from: a */
        private final Type f56644a;

        /* renamed from: b */
        private final Type f56645b;

        /* renamed from: c */
        private final Type[] f56646c;

        public C15983b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                C15977a.m7954a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f56644a = type == null ? null : C15981b.m7947a(type);
            this.f56645b = C15981b.m7947a(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f56646c = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                C15977a.m7955a(this.f56646c[i]);
                C15981b.m7935e(this.f56646c[i]);
                Type[] typeArr3 = this.f56646c;
                typeArr3[i] = C15981b.m7947a(typeArr3[i]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C15981b.m7942a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f56646c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f56644a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f56645b;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.f56646c) ^ this.f56645b.hashCode()) ^ C15981b.m7948a((Object) this.f56644a);
        }

        public final String toString() {
            int length = this.f56646c.length;
            if (length == 0) {
                return C15981b.m7937c(this.f56645b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(C15981b.m7937c(this.f56645b));
            sb.append("<");
            sb.append(C15981b.m7937c(this.f56646c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(C15981b.m7937c(this.f56646c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: com.google.gson.internal.b$c */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b$c.class */
    public static final class C15984c implements Serializable, WildcardType {

        /* renamed from: a */
        private final Type f56647a;

        /* renamed from: b */
        private final Type f56648b;

        public C15984c(Type[] typeArr, Type[] typeArr2) {
            C15977a.m7954a(typeArr2.length <= 1);
            C15977a.m7954a(typeArr.length == 1);
            if (typeArr2.length != 1) {
                C15977a.m7955a(typeArr[0]);
                C15981b.m7935e(typeArr[0]);
                this.f56648b = null;
                this.f56647a = C15981b.m7947a(typeArr[0]);
                return;
            }
            C15977a.m7955a(typeArr2[0]);
            C15981b.m7935e(typeArr2[0]);
            C15977a.m7954a(typeArr[0] == Object.class);
            this.f56648b = C15981b.m7947a(typeArr2[0]);
            this.f56647a = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C15981b.m7942a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f56648b;
            return type != null ? new Type[]{type} : C15981b.f56642a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f56647a};
        }

        public final int hashCode() {
            Type type = this.f56648b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f56647a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f56648b != null) {
                return "? super " + C15981b.m7937c(this.f56648b);
            } else if (this.f56647a == Object.class) {
                return "?";
            } else {
                return "? extends " + C15981b.m7937c(this.f56647a);
            }
        }
    }

    private C15981b() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    static int m7948a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    /* renamed from: a */
    public static ParameterizedType m7941a(Type type, Type type2, Type... typeArr) {
        return new C15983b(type, type2, typeArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [com.google.gson.internal.b$a] */
    /* renamed from: a */
    public static Type m7947a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Class cls2 = cls;
            if (cls.isArray()) {
                cls2 = new C15982a(m7947a((Type) cls.getComponentType()));
            }
            return cls2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C15983b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new C15982a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new C15984c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    /* renamed from: a */
    public static Type m7946a(Type type, Class<?> cls) {
        Type m7938b = m7938b(type, cls, Collection.class);
        Type type2 = m7938b;
        if (m7938b instanceof WildcardType) {
            type2 = ((WildcardType) m7938b).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: a */
    private static Type m7945a(Type type, Class<?> cls, Class<?> cls2) {
        loop0: while (cls2 != cls) {
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    if (interfaces[i] == cls2) {
                        return cls.getGenericInterfaces()[i];
                    }
                    if (cls2.isAssignableFrom(interfaces[i])) {
                        type = cls.getGenericInterfaces()[i];
                        cls = interfaces[i];
                        break;
                    }
                }
            }
            if (!cls.isInterface()) {
                while (true) {
                    Class<?> cls3 = cls;
                    if (cls3 == Object.class) {
                        break loop0;
                    }
                    cls = cls3.getSuperclass();
                    if (cls == cls2) {
                        return cls3.getGenericSuperclass();
                    }
                    if (cls2.isAssignableFrom(cls)) {
                        type = cls3.getGenericSuperclass();
                        break;
                    }
                }
            }
            return cls2;
        }
        return type;
    }

    /* renamed from: a */
    public static Type m7944a(Type type, Class<?> cls, Type type2) {
        return m7943a(type, cls, type2, new HashSet());
    }

    /* renamed from: a */
    private static Type m7943a(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        TypeVariable typeVariable;
        TypeVariable typeVariable2;
        do {
            int i = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (type2 instanceof Class) {
                    Class cls2 = (Class) type2;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type m7943a = m7943a(type, cls, componentType, collection);
                        return componentType == m7943a ? cls2 : m7934f(m7943a);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type m7943a2 = m7943a(type, cls, genericComponentType, collection);
                    return genericComponentType == m7943a2 ? genericArrayType : m7934f(m7943a2);
                } else if (!(type2 instanceof ParameterizedType)) {
                    WildcardType wildcardType = type2;
                    if (type2 instanceof WildcardType) {
                        WildcardType wildcardType2 = (WildcardType) type2;
                        Type[] lowerBounds = wildcardType2.getLowerBounds();
                        Type[] upperBounds = wildcardType2.getUpperBounds();
                        if (lowerBounds.length == 1) {
                            Type m7943a3 = m7943a(type, cls, lowerBounds[0], collection);
                            wildcardType = wildcardType2;
                            if (m7943a3 != lowerBounds[0]) {
                                return new C15984c(new Type[]{Object.class}, m7943a3 instanceof WildcardType ? ((WildcardType) m7943a3).getLowerBounds() : new Type[]{m7943a3});
                            }
                        } else {
                            wildcardType = wildcardType2;
                            if (upperBounds.length == 1) {
                                Type m7943a4 = m7943a(type, cls, upperBounds[0], collection);
                                wildcardType = wildcardType2;
                                if (m7943a4 != upperBounds[0]) {
                                    return new C15984c(m7943a4 instanceof WildcardType ? ((WildcardType) m7943a4).getUpperBounds() : new Type[]{m7943a4}, f56642a);
                                }
                            }
                        }
                    }
                    return wildcardType;
                } else {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type m7943a5 = m7943a(type, cls, ownerType, collection);
                    boolean z = m7943a5 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i < length) {
                        Type m7943a6 = m7943a(type, cls, actualTypeArguments[i], collection);
                        boolean z2 = z;
                        Type[] typeArr = actualTypeArguments;
                        if (m7943a6 != actualTypeArguments[i]) {
                            z2 = z;
                            typeArr = actualTypeArguments;
                            if (!z) {
                                typeArr = (Type[]) actualTypeArguments.clone();
                                z2 = true;
                            }
                            typeArr[i] = m7943a6;
                        }
                        i++;
                        z = z2;
                        actualTypeArguments = typeArr;
                    }
                    return z ? m7941a(m7943a5, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
            }
            typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 != null) {
                Type m7945a = m7945a(type, cls, (Class<?>) cls3);
                if (m7945a instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    int length2 = typeParameters.length;
                    for (int i2 = 0; i2 < length2; i2++) {
                        if (typeVariable.equals(typeParameters[i2])) {
                            typeVariable2 = ((ParameterizedType) m7945a).getActualTypeArguments()[i2];
                            type2 = typeVariable2;
                        }
                    }
                    throw new NoSuchElementException();
                }
            }
            typeVariable2 = typeVariable;
            type2 = typeVariable2;
        } while (typeVariable2 != typeVariable);
        return typeVariable2;
    }

    /* renamed from: a */
    public static boolean m7942a(Type type, Type type2) {
        while (type != type2) {
            if (type instanceof Class) {
                return type.equals(type2);
            }
            if (type instanceof ParameterizedType) {
                if (!(type2 instanceof ParameterizedType)) {
                    return false;
                }
                ParameterizedType parameterizedType = (ParameterizedType) type;
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type ownerType = parameterizedType.getOwnerType();
                Type ownerType2 = parameterizedType2.getOwnerType();
                return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            } else if (!(type instanceof GenericArrayType)) {
                if (type instanceof WildcardType) {
                    if (!(type2 instanceof WildcardType)) {
                        return false;
                    }
                    WildcardType wildcardType = (WildcardType) type;
                    WildcardType wildcardType2 = (WildcardType) type2;
                    return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
                } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
                    return false;
                } else {
                    TypeVariable typeVariable = (TypeVariable) type;
                    TypeVariable typeVariable2 = (TypeVariable) type2;
                    return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
                }
            } else if (!(type2 instanceof GenericArrayType)) {
                return false;
            } else {
                type = ((GenericArrayType) type).getGenericComponentType();
                type2 = ((GenericArrayType) type2).getGenericComponentType();
            }
        }
        return true;
    }

    /* renamed from: b */
    public static Class<?> m7940b(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                C15977a.m7954a(rawType instanceof Class);
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(m7940b(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            } else {
                if (type instanceof TypeVariable) {
                    return Object.class;
                }
                if (!(type instanceof WildcardType)) {
                    String name = type == null ? JsonReaderKt.NULL : type.getClass().getName();
                    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
                }
                type = ((WildcardType) type).getUpperBounds()[0];
            }
        }
        return (Class) type;
    }

    /* renamed from: b */
    private static Type m7938b(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        C15977a.m7954a(cls2.isAssignableFrom(cls));
        return m7944a(type2, cls, m7945a(type2, cls, cls2));
    }

    /* renamed from: b */
    public static Type[] m7939b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type m7938b = m7938b(type, cls, Map.class);
        return m7938b instanceof ParameterizedType ? ((ParameterizedType) m7938b).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    /* renamed from: c */
    public static String m7937c(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: d */
    public static Type m7936d(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    /* renamed from: e */
    static void m7935e(Type type) {
        C15977a.m7954a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    /* renamed from: f */
    private static GenericArrayType m7934f(Type type) {
        return new C15982a(type);
    }
}

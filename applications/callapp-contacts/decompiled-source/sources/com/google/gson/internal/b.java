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
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f32686a = new Type[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b$a.class */
    public static final class a implements Serializable, GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f32687a;

        public a(Type type) {
            this.f32687a = b.a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && b.a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f32687a;
        }

        public final int hashCode() {
            return this.f32687a.hashCode();
        }

        public final String toString() {
            return b.c(this.f32687a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b$b.class */
    public static final class C0524b implements Serializable, ParameterizedType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f32688a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f32689b;

        /* renamed from: c  reason: collision with root package name */
        private final Type[] f32690c;

        public C0524b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                com.google.gson.internal.a.a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f32688a = type == null ? null : b.a(type);
            this.f32689b = b.a(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f32690c = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                com.google.gson.internal.a.a(this.f32690c[i]);
                b.e(this.f32690c[i]);
                Type[] typeArr3 = this.f32690c;
                typeArr3[i] = b.a(typeArr3[i]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && b.a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f32690c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f32688a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f32689b;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.f32690c) ^ this.f32689b.hashCode()) ^ b.a((Object) this.f32688a);
        }

        public final String toString() {
            int length = this.f32690c.length;
            if (length == 0) {
                return b.c(this.f32689b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(b.c(this.f32689b));
            sb.append("<");
            sb.append(b.c(this.f32690c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(b.c(this.f32690c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/b$c.class */
    public static final class c implements Serializable, WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f32691a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f32692b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            com.google.gson.internal.a.a(typeArr2.length <= 1);
            com.google.gson.internal.a.a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                com.google.gson.internal.a.a(typeArr2[0]);
                b.e(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                com.google.gson.internal.a.a(z);
                this.f32692b = b.a(typeArr2[0]);
                this.f32691a = Object.class;
                return;
            }
            com.google.gson.internal.a.a(typeArr[0]);
            b.e(typeArr[0]);
            this.f32692b = null;
            this.f32691a = b.a(typeArr[0]);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && b.a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f32692b;
            return type != null ? new Type[]{type} : b.f32686a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f32691a};
        }

        public final int hashCode() {
            Type type = this.f32692b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f32691a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f32692b != null) {
                return "? super " + b.c(this.f32692b);
            } else if (this.f32691a == Object.class) {
                return "?";
            } else {
                return "? extends " + b.c(this.f32691a);
            }
        }
    }

    private b() {
        throw new UnsupportedOperationException();
    }

    static int a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static ParameterizedType a(Type type, Type type2, Type... typeArr) {
        return new C0524b(type, type2, typeArr);
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Type type2 = cls;
            if (cls.isArray()) {
                type2 = new a(a((Type) cls.getComponentType()));
            }
            return type2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C0524b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    public static Type a(Type type, Class<?> cls) {
        Type b2 = b(type, cls, Collection.class);
        Type type2 = b2;
        if (b2 instanceof WildcardType) {
            type2 = ((WildcardType) b2).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    private static Type a(Type type, Class<?> cls, Class<?> cls2) {
        while (cls2 != cls) {
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
                while (cls != Object.class) {
                    cls = cls.getSuperclass();
                    if (cls == cls2) {
                        return cls.getGenericSuperclass();
                    }
                    if (cls2.isAssignableFrom(cls)) {
                        type = cls.getGenericSuperclass();
                    }
                }
            }
            return cls2;
        }
        return type;
    }

    public static Type a(Type type, Class<?> cls, Type type2) {
        return a(type, cls, type2, new HashSet());
    }

    private static Type a(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        TypeVariable typeVariable;
        TypeVariable typeVariable2;
        do {
            if (type2 instanceof TypeVariable) {
                typeVariable = (TypeVariable) type2;
                if (collection.contains(typeVariable)) {
                    return type2;
                }
                collection.add(typeVariable);
                GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
                Class cls2 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
                if (cls2 != null) {
                    Type a2 = a(type, cls, (Class<?>) cls2);
                    if (a2 instanceof ParameterizedType) {
                        TypeVariable[] typeParameters = cls2.getTypeParameters();
                        int length = typeParameters.length;
                        for (int i = 0; i < length; i++) {
                            if (typeVariable.equals(typeParameters[i])) {
                                typeVariable2 = ((ParameterizedType) a2).getActualTypeArguments()[i];
                                type2 = typeVariable2;
                            }
                        }
                        throw new NoSuchElementException();
                    }
                }
                typeVariable2 = typeVariable;
                type2 = typeVariable2;
            } else {
                if (type2 instanceof Class) {
                    Class cls3 = (Class) type2;
                    if (cls3.isArray()) {
                        Class<?> componentType = cls3.getComponentType();
                        Type a3 = a(type, cls, componentType, collection);
                        return componentType == a3 ? cls3 : f(a3);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type a4 = a(type, cls, genericComponentType, collection);
                    return genericComponentType == a4 ? genericArrayType : f(a4);
                } else if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type a5 = a(type, cls, ownerType, collection);
                    boolean z = a5 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length2 = actualTypeArguments.length;
                    for (int i2 = 0; i2 < length2; i2++) {
                        Type a6 = a(type, cls, actualTypeArguments[i2], collection);
                        z = z;
                        actualTypeArguments = actualTypeArguments;
                        if (a6 != actualTypeArguments[i2]) {
                            z = z;
                            actualTypeArguments = actualTypeArguments;
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i2] = a6;
                        }
                    }
                    return z ? a(a5, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                } else {
                    WildcardType wildcardType = type2;
                    if (type2 instanceof WildcardType) {
                        WildcardType wildcardType2 = (WildcardType) type2;
                        Type[] lowerBounds = wildcardType2.getLowerBounds();
                        Type[] upperBounds = wildcardType2.getUpperBounds();
                        if (lowerBounds.length == 1) {
                            Type a7 = a(type, cls, lowerBounds[0], collection);
                            wildcardType = wildcardType2;
                            if (a7 != lowerBounds[0]) {
                                return new c(new Type[]{Object.class}, a7 instanceof WildcardType ? ((WildcardType) a7).getLowerBounds() : new Type[]{a7});
                            }
                        } else {
                            wildcardType = wildcardType2;
                            if (upperBounds.length == 1) {
                                Type a8 = a(type, cls, upperBounds[0], collection);
                                wildcardType = wildcardType2;
                                if (a8 != upperBounds[0]) {
                                    return new c(a8 instanceof WildcardType ? ((WildcardType) a8).getUpperBounds() : new Type[]{a8}, f32686a);
                                }
                            }
                        }
                    }
                    return wildcardType;
                }
            }
        } while (typeVariable2 != typeVariable);
        return typeVariable2;
    }

    public static boolean a(Type type, Type type2) {
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
            } else if (type instanceof GenericArrayType) {
                if (!(type2 instanceof GenericArrayType)) {
                    return false;
                }
                type = ((GenericArrayType) type).getGenericComponentType();
                type2 = ((GenericArrayType) type2).getGenericComponentType();
            } else if (type instanceof WildcardType) {
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
        }
        return true;
    }

    public static Class<?> b(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                com.google.gson.internal.a.a(rawType instanceof Class);
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(b(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            } else {
                if (type instanceof TypeVariable) {
                    return Object.class;
                }
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                } else {
                    String name = type == null ? JsonReaderKt.NULL : type.getClass().getName();
                    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
                }
            }
        }
        return (Class) type;
    }

    private static Type b(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        com.google.gson.internal.a.a(cls2.isAssignableFrom(cls));
        return a(type2, cls, a(type2, cls, cls2));
    }

    public static Type[] b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type b2 = b(type, cls, Map.class);
        return b2 instanceof ParameterizedType ? ((ParameterizedType) b2).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    public static String c(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type d(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    static void e(Type type) {
        com.google.gson.internal.a.a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    private static GenericArrayType f(Type type) {
        return new a(type);
    }
}

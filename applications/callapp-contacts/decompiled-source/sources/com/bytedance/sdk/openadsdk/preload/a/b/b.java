package com.bytedance.sdk.openadsdk.preload.a.b;

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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f9985a = new Type[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b$a.class */
    public static final class a implements Serializable, GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f9986a;

        public a(Type type) {
            this.f9986a = b.d(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && b.a((Type) this, (Type) ((GenericArrayType) obj));
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f9986a;
        }

        public final int hashCode() {
            return this.f9986a.hashCode();
        }

        public final String toString() {
            return b.f(this.f9986a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b$b.class */
    public static final class C0183b implements Serializable, ParameterizedType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f9987a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f9988b;

        /* renamed from: c  reason: collision with root package name */
        private final Type[] f9989c;

        public C0183b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                com.bytedance.sdk.openadsdk.preload.a.b.a.a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f9987a = type == null ? null : b.d(type);
            this.f9988b = b.d(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f9989c = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                com.bytedance.sdk.openadsdk.preload.a.b.a.a(this.f9989c[i]);
                b.h(this.f9989c[i]);
                Type[] typeArr3 = this.f9989c;
                typeArr3[i] = b.d(typeArr3[i]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && b.a((Type) this, (Type) ((ParameterizedType) obj));
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f9989c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f9987a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f9988b;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.f9989c) ^ this.f9988b.hashCode()) ^ b.a((Object) this.f9987a);
        }

        public final String toString() {
            int length = this.f9989c.length;
            if (length == 0) {
                return b.f(this.f9988b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(b.f(this.f9988b));
            sb.append("<");
            sb.append(b.f(this.f9989c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(b.f(this.f9989c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b$c.class */
    public static final class c implements Serializable, WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f9991a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f9992b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            com.bytedance.sdk.openadsdk.preload.a.b.a.a(typeArr2.length <= 1);
            com.bytedance.sdk.openadsdk.preload.a.b.a.a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                com.bytedance.sdk.openadsdk.preload.a.b.a.a(typeArr2[0]);
                b.h(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                com.bytedance.sdk.openadsdk.preload.a.b.a.a(z);
                this.f9992b = b.d(typeArr2[0]);
                this.f9991a = Object.class;
                return;
            }
            com.bytedance.sdk.openadsdk.preload.a.b.a.a(typeArr[0]);
            b.h(typeArr[0]);
            this.f9992b = null;
            this.f9991a = b.d(typeArr[0]);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && b.a((Type) this, (Type) ((WildcardType) obj));
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f9992b;
            return type != null ? new Type[]{type} : b.f9985a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f9991a};
        }

        public final int hashCode() {
            Type type = this.f9992b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f9991a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f9992b != null) {
                return "? super " + b.f(this.f9992b);
            } else if (this.f9991a == Object.class) {
                return "?";
            } else {
                return "? extends " + b.f(this.f9991a);
            }
        }
    }

    static int a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    private static int a(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    private static Class<?> a(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    public static GenericArrayType a(Type type) {
        return new a(type);
    }

    public static ParameterizedType a(Type type, Type type2, Type... typeArr) {
        return new C0183b(type, type2, typeArr);
    }

    public static Type a(Type type, Class<?> cls) {
        Type b2 = b(type, cls, Collection.class);
        Type type2 = b2;
        if (b2 instanceof WildcardType) {
            type2 = ((WildcardType) b2).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    static Type a(Type type, Class<?> cls, Class<?> cls2) {
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
        while (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            Type a2 = a(type, cls, (TypeVariable<?>) typeVariable);
            type2 = a2;
            if (a2 == typeVariable) {
                return a2;
            }
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type a3 = a(type, cls, componentType, collection);
                return componentType == a3 ? cls2 : a(a3);
            }
        }
        if (type2 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type2;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type a4 = a(type, cls, genericComponentType, collection);
            return genericComponentType == a4 ? genericArrayType : a(a4);
        }
        if (type2 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type a5 = a(type, cls, ownerType, collection);
            boolean z = a5 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i = 0; i < length; i++) {
                Type a6 = a(type, cls, actualTypeArguments[i], collection);
                z = z;
                actualTypeArguments = actualTypeArguments;
                if (a6 != actualTypeArguments[i]) {
                    z = z;
                    actualTypeArguments = actualTypeArguments;
                    if (!z) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z = true;
                    }
                    actualTypeArguments[i] = a6;
                }
            }
            return z ? a(a5, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        }
        WildcardType wildcardType = type2;
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type2;
            Type[] lowerBounds = wildcardType2.getLowerBounds();
            Type[] upperBounds = wildcardType2.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type a7 = a(type, cls, lowerBounds[0], collection);
                wildcardType = wildcardType2;
                if (a7 != lowerBounds[0]) {
                    return c(a7);
                }
            } else {
                wildcardType = wildcardType2;
                if (upperBounds.length == 1) {
                    Type a8 = a(type, cls, upperBounds[0], collection);
                    wildcardType = wildcardType2;
                    if (a8 != upperBounds[0]) {
                        return b(a8);
                    }
                }
            }
        }
        return wildcardType;
    }

    static Type a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> a2 = a(typeVariable);
        if (a2 == null) {
            return typeVariable;
        }
        Type a3 = a(type, cls, a2);
        if (!(a3 instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) a3).getActualTypeArguments()[a((Object[]) a2.getTypeParameters(), (Object) typeVariable)];
    }

    static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
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
                return a((Object) parameterizedType.getOwnerType(), (Object) parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
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

    static Type b(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        com.bytedance.sdk.openadsdk.preload.a.b.a.a(cls2.isAssignableFrom(cls));
        return a(type2, cls, a(type2, cls, cls2));
    }

    public static WildcardType b(Type type) {
        return new c(type instanceof WildcardType ? ((WildcardType) type).getUpperBounds() : new Type[]{type}, f9985a);
    }

    public static Type[] b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type b2 = b(type, cls, Map.class);
        return b2 instanceof ParameterizedType ? ((ParameterizedType) b2).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    public static WildcardType c(Type type) {
        return new c(new Type[]{Object.class}, type instanceof WildcardType ? ((WildcardType) type).getLowerBounds() : new Type[]{type});
    }

    public static Type d(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Type type2 = cls;
            if (cls.isArray()) {
                type2 = new a(d(cls.getComponentType()));
            }
            return type2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C0183b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
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

    public static Class<?> e(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                com.bytedance.sdk.openadsdk.preload.a.b.a.a(rawType instanceof Class);
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
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

    public static String f(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type g(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    static void h(Type type) {
        com.bytedance.sdk.openadsdk.preload.a.b.a.a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }
}

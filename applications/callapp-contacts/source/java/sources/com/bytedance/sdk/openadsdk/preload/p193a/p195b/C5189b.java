package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
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
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b.class */
public final class C5189b {

    /* renamed from: a */
    static final Type[] f18522a = new Type[0];

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b$a.class */
    public static final class C5190a implements Serializable, GenericArrayType {

        /* renamed from: a */
        private final Type f18523a;

        public C5190a(Type type) {
            this.f18523a = C5189b.m32866d(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C5189b.m32874a((Type) this, (Type) ((GenericArrayType) obj));
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f18523a;
        }

        public final int hashCode() {
            return this.f18523a.hashCode();
        }

        public final String toString() {
            return C5189b.m32864f(this.f18523a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b$b.class */
    public static final class C5191b implements Serializable, ParameterizedType {

        /* renamed from: a */
        private final Type f18524a;

        /* renamed from: b */
        private final Type f18525b;

        /* renamed from: c */
        private final Type[] f18526c;

        public C5191b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                C5118a.m32986a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f18524a = type == null ? null : C5189b.m32866d(type);
            this.f18525b = C5189b.m32866d(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f18526c = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                C5118a.m32987a(this.f18526c[i]);
                C5189b.m32862h(this.f18526c[i]);
                Type[] typeArr3 = this.f18526c;
                typeArr3[i] = C5189b.m32866d(typeArr3[i]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C5189b.m32874a((Type) this, (Type) ((ParameterizedType) obj));
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f18526c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f18524a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f18525b;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.f18526c) ^ this.f18525b.hashCode()) ^ C5189b.m32882a((Object) this.f18524a);
        }

        public final String toString() {
            int length = this.f18526c.length;
            if (length == 0) {
                return C5189b.m32864f(this.f18525b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(C5189b.m32864f(this.f18525b));
            sb.append("<");
            sb.append(C5189b.m32864f(this.f18526c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(C5189b.m32864f(this.f18526c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b$c.class */
    public static final class C5192c implements Serializable, WildcardType {

        /* renamed from: a */
        private final Type f18527a;

        /* renamed from: b */
        private final Type f18528b;

        public C5192c(Type[] typeArr, Type[] typeArr2) {
            C5118a.m32986a(typeArr2.length <= 1);
            C5118a.m32986a(typeArr.length == 1);
            if (typeArr2.length != 1) {
                C5118a.m32987a(typeArr[0]);
                C5189b.m32862h(typeArr[0]);
                this.f18528b = null;
                this.f18527a = C5189b.m32866d(typeArr[0]);
                return;
            }
            C5118a.m32987a(typeArr2[0]);
            C5189b.m32862h(typeArr2[0]);
            C5118a.m32986a(typeArr[0] == Object.class);
            this.f18528b = C5189b.m32866d(typeArr2[0]);
            this.f18527a = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C5189b.m32874a((Type) this, (Type) ((WildcardType) obj));
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f18528b;
            return type != null ? new Type[]{type} : C5189b.f18522a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f18527a};
        }

        public final int hashCode() {
            Type type = this.f18528b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f18527a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f18528b != null) {
                return "? super " + C5189b.m32864f(this.f18528b);
            } else if (this.f18527a == Object.class) {
                return "?";
            } else {
                return "? extends " + C5189b.m32864f(this.f18527a);
            }
        }
    }

    /* renamed from: a */
    static int m32882a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    /* renamed from: a */
    private static int m32871a(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    /* renamed from: a */
    private static Class<?> m32872a(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    /* renamed from: a */
    public static GenericArrayType m32880a(Type type) {
        return new C5190a(type);
    }

    /* renamed from: a */
    public static ParameterizedType m32873a(Type type, Type type2, Type... typeArr) {
        return new C5191b(type, type2, typeArr);
    }

    /* renamed from: a */
    public static Type m32879a(Type type, Class<?> cls) {
        Type m32868b = m32868b(type, cls, Collection.class);
        Type type2 = m32868b;
        if (m32868b instanceof WildcardType) {
            type2 = ((WildcardType) m32868b).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: a */
    static Type m32878a(Type type, Class<?> cls, Class<?> cls2) {
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
    public static Type m32877a(Type type, Class<?> cls, Type type2) {
        return m32876a(type, cls, type2, new HashSet());
    }

    /* renamed from: a */
    private static Type m32876a(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        while (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            Type m32875a = m32875a(type, cls, (TypeVariable<?>) typeVariable);
            type2 = m32875a;
            if (m32875a == typeVariable) {
                return m32875a;
            }
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type m32876a = m32876a(type, cls, componentType, collection);
                return componentType == m32876a ? cls2 : m32880a(m32876a);
            }
        }
        if (type2 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type2;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type m32876a2 = m32876a(type, cls, genericComponentType, collection);
            return genericComponentType == m32876a2 ? genericArrayType : m32880a(m32876a2);
        }
        int i = 0;
        if (!(type2 instanceof ParameterizedType)) {
            WildcardType wildcardType = type2;
            if (type2 instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type2;
                Type[] lowerBounds = wildcardType2.getLowerBounds();
                Type[] upperBounds = wildcardType2.getUpperBounds();
                if (lowerBounds.length == 1) {
                    Type m32876a3 = m32876a(type, cls, lowerBounds[0], collection);
                    wildcardType = wildcardType2;
                    if (m32876a3 != lowerBounds[0]) {
                        return m32867c(m32876a3);
                    }
                } else {
                    wildcardType = wildcardType2;
                    if (upperBounds.length == 1) {
                        Type m32876a4 = m32876a(type, cls, upperBounds[0], collection);
                        wildcardType = wildcardType2;
                        if (m32876a4 != upperBounds[0]) {
                            return m32870b(m32876a4);
                        }
                    }
                }
            }
            return wildcardType;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type2;
        Type ownerType = parameterizedType.getOwnerType();
        Type m32876a5 = m32876a(type, cls, ownerType, collection);
        boolean z = m32876a5 != ownerType;
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int length = actualTypeArguments.length;
        while (i < length) {
            Type m32876a6 = m32876a(type, cls, actualTypeArguments[i], collection);
            boolean z2 = z;
            Type[] typeArr = actualTypeArguments;
            if (m32876a6 != actualTypeArguments[i]) {
                z2 = z;
                typeArr = actualTypeArguments;
                if (!z) {
                    typeArr = (Type[]) actualTypeArguments.clone();
                    z2 = true;
                }
                typeArr[i] = m32876a6;
            }
            i++;
            z = z2;
            actualTypeArguments = typeArr;
        }
        return z ? m32873a(m32876a5, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
    }

    /* renamed from: a */
    static Type m32875a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> m32872a = m32872a(typeVariable);
        if (m32872a == null) {
            return typeVariable;
        }
        Type m32878a = m32878a(type, cls, m32872a);
        if (!(m32878a instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) m32878a).getActualTypeArguments()[m32871a((Object[]) m32872a.getTypeParameters(), (Object) typeVariable)];
    }

    /* renamed from: a */
    static boolean m32881a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m32874a(Type type, Type type2) {
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
                return m32881a((Object) parameterizedType.getOwnerType(), (Object) parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
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
    static Type m32868b(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        C5118a.m32986a(cls2.isAssignableFrom(cls));
        return m32877a(type2, cls, m32878a(type2, cls, cls2));
    }

    /* renamed from: b */
    public static WildcardType m32870b(Type type) {
        return new C5192c(type instanceof WildcardType ? ((WildcardType) type).getUpperBounds() : new Type[]{type}, f18522a);
    }

    /* renamed from: b */
    public static Type[] m32869b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type m32868b = m32868b(type, cls, Map.class);
        return m32868b instanceof ParameterizedType ? ((ParameterizedType) m32868b).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    /* renamed from: c */
    public static WildcardType m32867c(Type type) {
        return new C5192c(new Type[]{Object.class}, type instanceof WildcardType ? ((WildcardType) type).getLowerBounds() : new Type[]{type});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [com.bytedance.sdk.openadsdk.preload.a.b.b$a] */
    /* renamed from: d */
    public static Type m32866d(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Class cls2 = cls;
            if (cls.isArray()) {
                cls2 = new C5190a(m32866d(cls.getComponentType()));
            }
            return cls2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C5191b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new C5190a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new C5192c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    /* renamed from: e */
    public static Class<?> m32865e(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                C5118a.m32986a(rawType instanceof Class);
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(m32865e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
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

    /* renamed from: f */
    public static String m32864f(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: g */
    public static Type m32863g(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    /* renamed from: h */
    static void m32862h(Type type) {
        C5118a.m32986a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }
}

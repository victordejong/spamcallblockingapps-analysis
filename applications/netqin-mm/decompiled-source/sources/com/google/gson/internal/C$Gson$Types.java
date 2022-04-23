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
import p131c.p161d.p354f.p356t.C6137a;
/* renamed from: com.google.gson.internal.$Gson$Types  reason: invalid class name */
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/$Gson$Types.class */
public final class C$Gson$Types {

    /* renamed from: a */
    public static final Type[] f31058a = new Type[0];

    /* renamed from: com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl.class */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        public static final long serialVersionUID = 0;
        public final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = C$Gson$Types.m7121b(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C$Gson$Types.m7125a((Type) this, (Type) ((GenericArrayType) obj));
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return C$Gson$Types.m7113h(this.componentType) + "[]";
        }
    }

    /* renamed from: com.google.gson.internal.$Gson$Types$ParameterizedTypeImpl */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl.class */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        public static final long serialVersionUID = 0;
        public final Type ownerType;
        public final Type rawType;
        public final Type[] typeArguments;

        public ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                C6137a.m21940a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.ownerType = type == null ? null : C$Gson$Types.m7121b(type);
            this.rawType = C$Gson$Types.m7121b(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.typeArguments = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                C6137a.m21941a(this.typeArguments[i]);
                C$Gson$Types.m7118c(this.typeArguments[i]);
                Type[] typeArr3 = this.typeArguments;
                typeArr3[i] = C$Gson$Types.m7121b(typeArr3[i]);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C$Gson$Types.m7125a((Type) this, (Type) ((ParameterizedType) obj));
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.ownerType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode()) ^ C$Gson$Types.m7133a((Object) this.ownerType);
        }

        public String toString() {
            int length = this.typeArguments.length;
            if (length == 0) {
                return C$Gson$Types.m7113h(this.rawType);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(C$Gson$Types.m7113h(this.rawType));
            sb.append("<");
            sb.append(C$Gson$Types.m7113h(this.typeArguments[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(C$Gson$Types.m7113h(this.typeArguments[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: com.google.gson.internal.$Gson$Types$WildcardTypeImpl */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/$Gson$Types$WildcardTypeImpl.class */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        public static final long serialVersionUID = 0;
        public final Type lowerBound;
        public final Type upperBound;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            C6137a.m21940a(typeArr2.length <= 1);
            C6137a.m21940a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                C6137a.m21941a(typeArr2[0]);
                C$Gson$Types.m7118c(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                C6137a.m21940a(z);
                this.lowerBound = C$Gson$Types.m7121b(typeArr2[0]);
                this.upperBound = Object.class;
                return;
            }
            C6137a.m21941a(typeArr[0]);
            C$Gson$Types.m7118c(typeArr[0]);
            this.lowerBound = null;
            this.upperBound = C$Gson$Types.m7121b(typeArr[0]);
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C$Gson$Types.m7125a((Type) this, (Type) ((WildcardType) obj));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.lowerBound;
            return type != null ? new Type[]{type} : C$Gson$Types.f31058a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        public int hashCode() {
            Type type = this.lowerBound;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.upperBound.hashCode() + 31);
        }

        public String toString() {
            if (this.lowerBound != null) {
                return "? super " + C$Gson$Types.m7113h(this.lowerBound);
            } else if (this.upperBound == Object.class) {
                return "?";
            } else {
                return "? extends " + C$Gson$Types.m7113h(this.upperBound);
            }
        }
    }

    /* renamed from: a */
    public static int m7133a(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: a */
    public static int m7122a(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    /* renamed from: a */
    public static Class<?> m7123a(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    /* renamed from: a */
    public static GenericArrayType m7131a(Type type) {
        return new GenericArrayTypeImpl(type);
    }

    /* renamed from: a */
    public static ParameterizedType m7124a(Type type, Type type2, Type... typeArr) {
        return new ParameterizedTypeImpl(type, type2, typeArr);
    }

    /* renamed from: a */
    public static Type m7130a(Type type, Class<?> cls) {
        Type b = m7119b(type, cls, Collection.class);
        Type type2 = b;
        if (b instanceof WildcardType) {
            type2 = ((WildcardType) b).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: a */
    public static Type m7129a(Type type, Class<?> cls, Class<?> cls2) {
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
                    return m7129a(cls.getGenericInterfaces()[i], interfaces[i], cls2);
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
                    return m7129a(cls.getGenericSuperclass(), (Class<?>) superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* renamed from: a */
    public static Type m7128a(Type type, Class<?> cls, Type type2) {
        return m7127a(type, cls, type2, new HashSet());
    }

    /* renamed from: a */
    public static Type m7127a(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        while (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            Type a = m7126a(type, cls, (TypeVariable<?>) typeVariable);
            type2 = a;
            if (a == typeVariable) {
                return a;
            }
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type a2 = m7127a(type, cls, componentType, collection);
                return componentType == a2 ? cls2 : m7131a(a2);
            }
        }
        if (type2 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type2;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type a3 = m7127a(type, cls, genericComponentType, collection);
            return genericComponentType == a3 ? genericArrayType : m7131a(a3);
        }
        if (type2 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type a4 = m7127a(type, cls, ownerType, collection);
            boolean z = a4 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i = 0; i < length; i++) {
                Type a5 = m7127a(type, cls, actualTypeArguments[i], collection);
                z = z;
                actualTypeArguments = actualTypeArguments;
                if (a5 != actualTypeArguments[i]) {
                    z = z;
                    actualTypeArguments = actualTypeArguments;
                    if (!z) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z = true;
                    }
                    actualTypeArguments[i] = a5;
                }
            }
            ParameterizedType parameterizedType2 = parameterizedType;
            if (z) {
                parameterizedType2 = m7124a(a4, parameterizedType.getRawType(), actualTypeArguments);
            }
            return parameterizedType2;
        }
        WildcardType wildcardType = type2;
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type2;
            Type[] lowerBounds = wildcardType2.getLowerBounds();
            Type[] upperBounds = wildcardType2.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type a6 = m7127a(type, cls, lowerBounds[0], collection);
                wildcardType = wildcardType2;
                if (a6 != lowerBounds[0]) {
                    return m7114g(a6);
                }
            } else {
                wildcardType = wildcardType2;
                if (upperBounds.length == 1) {
                    Type a7 = m7127a(type, cls, upperBounds[0], collection);
                    wildcardType = wildcardType2;
                    if (a7 != upperBounds[0]) {
                        return m7115f(a7);
                    }
                }
            }
        }
        return wildcardType;
    }

    /* renamed from: a */
    public static Type m7126a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> a = m7123a(typeVariable);
        if (a == null) {
            return typeVariable;
        }
        Type a2 = m7129a(type, cls, a);
        if (!(a2 instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) a2).getActualTypeArguments()[m7122a((Object[]) a.getTypeParameters(), (Object) typeVariable)];
    }

    /* renamed from: a */
    public static boolean m7132a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: a */
    public static boolean m7125a(Type type, Type type2) {
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
            if (!m7132a((Object) parameterizedType.getOwnerType(), (Object) parameterizedType2.getOwnerType()) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                z3 = false;
            }
            return z3;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return m7125a(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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

    /* renamed from: b */
    public static Type m7121b(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Type type2 = cls;
            if (cls.isArray()) {
                type2 = new GenericArrayTypeImpl(m7121b(cls.getComponentType()));
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

    /* renamed from: b */
    public static Type m7119b(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        C6137a.m21940a(cls2.isAssignableFrom(cls));
        return m7128a(type2, cls, m7129a(type2, cls, cls2));
    }

    /* renamed from: b */
    public static Type[] m7120b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type b = m7119b(type, cls, Map.class);
        return b instanceof ParameterizedType ? ((ParameterizedType) b).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    /* renamed from: c */
    public static void m7118c(Type type) {
        C6137a.m21940a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    /* renamed from: d */
    public static Type m7117d(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    /* renamed from: e */
    public static Class<?> m7116e(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            C6137a.m21940a(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(m7116e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return m7116e(((WildcardType) type).getUpperBounds()[0]);
            }
            String name = type == null ? "null" : type.getClass().getName();
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    /* renamed from: f */
    public static WildcardType m7115f(Type type) {
        return new WildcardTypeImpl(type instanceof WildcardType ? ((WildcardType) type).getUpperBounds() : new Type[]{type}, f31058a);
    }

    /* renamed from: g */
    public static WildcardType m7114g(Type type) {
        return new WildcardTypeImpl(new Type[]{Object.class}, type instanceof WildcardType ? ((WildcardType) type).getLowerBounds() : new Type[]{type});
    }

    /* renamed from: h */
    public static String m7113h(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}

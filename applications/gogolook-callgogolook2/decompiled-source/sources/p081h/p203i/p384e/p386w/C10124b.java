package p081h.p203i.p384e.p386w;

import gogolook.callgogolook2.gson.UserProfile;
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
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.e.w.b */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/b.class */
public final class C10124b {

    /* renamed from: a */
    public static final Type[] f22838a = new Type[0];

    /* renamed from: h.i.e.w.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/b$a.class */
    public static final class C10125a implements GenericArrayType, Serializable {

        /* renamed from: a */
        public final Type f22839a;

        public C10125a(Type type) {
            this.f22839a = C10124b.m13341b(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C10124b.m13345a((Type) this, (Type) ((GenericArrayType) obj));
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f22839a;
        }

        public int hashCode() {
            return this.f22839a.hashCode();
        }

        public String toString() {
            return C10124b.m13333h(this.f22839a) + "[]";
        }
    }

    /* renamed from: h.i.e.w.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/b$b.class */
    public static final class C10126b implements ParameterizedType, Serializable {

        /* renamed from: a */
        public final Type f22840a;

        /* renamed from: b */
        public final Type f22841b;

        /* renamed from: c */
        public final Type[] f22842c;

        public C10126b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                C10123a.m13354a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f22840a = type == null ? null : C10124b.m13341b(type);
            this.f22841b = C10124b.m13341b(type2);
            this.f22842c = (Type[]) typeArr.clone();
            int length = this.f22842c.length;
            for (int i = 0; i < length; i++) {
                C10123a.m13355a(this.f22842c[i]);
                C10124b.m13338c(this.f22842c[i]);
                Type[] typeArr2 = this.f22842c;
                typeArr2[i] = C10124b.m13341b(typeArr2[i]);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C10124b.m13345a((Type) this, (Type) ((ParameterizedType) obj));
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f22842c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f22840a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f22841b;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.f22842c) ^ this.f22841b.hashCode()) ^ C10124b.m13353a((Object) this.f22840a);
        }

        public String toString() {
            int length = this.f22842c.length;
            if (length == 0) {
                return C10124b.m13333h(this.f22841b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(C10124b.m13333h(this.f22841b));
            sb.append("<");
            sb.append(C10124b.m13333h(this.f22842c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                sb.append(C10124b.m13333h(this.f22842c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: h.i.e.w.b$c */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/b$c.class */
    public static final class C10127c implements WildcardType, Serializable {

        /* renamed from: a */
        public final Type f22843a;

        /* renamed from: b */
        public final Type f22844b;

        public C10127c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            C10123a.m13354a(typeArr2.length <= 1);
            C10123a.m13354a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                C10123a.m13355a(typeArr2[0]);
                C10124b.m13338c(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                C10123a.m13354a(z);
                this.f22844b = C10124b.m13341b(typeArr2[0]);
                this.f22843a = Object.class;
                return;
            }
            C10123a.m13355a(typeArr[0]);
            C10124b.m13338c(typeArr[0]);
            this.f22844b = null;
            this.f22843a = C10124b.m13341b(typeArr[0]);
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C10124b.m13345a((Type) this, (Type) ((WildcardType) obj));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f22844b;
            return type != null ? new Type[]{type} : C10124b.f22838a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f22843a};
        }

        public int hashCode() {
            Type type = this.f22844b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f22843a.hashCode() + 31);
        }

        public String toString() {
            if (this.f22844b != null) {
                return "? super " + C10124b.m13333h(this.f22844b);
            } else if (this.f22843a == Object.class) {
                return "?";
            } else {
                return "? extends " + C10124b.m13333h(this.f22843a);
            }
        }
    }

    /* renamed from: a */
    public static int m13353a(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: a */
    public static int m13342a(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    /* renamed from: a */
    public static Class<?> m13343a(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    /* renamed from: a */
    public static GenericArrayType m13351a(Type type) {
        return new C10125a(type);
    }

    /* renamed from: a */
    public static ParameterizedType m13344a(Type type, Type type2, Type... typeArr) {
        return new C10126b(type, type2, typeArr);
    }

    /* renamed from: a */
    public static Type m13350a(Type type, Class<?> cls) {
        Type b = m13339b(type, cls, Collection.class);
        Type type2 = b;
        if (b instanceof WildcardType) {
            type2 = ((WildcardType) b).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: a */
    public static Type m13349a(Type type, Class<?> cls, Class<?> cls2) {
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
                    return m13349a(cls.getGenericInterfaces()[i], interfaces[i], cls2);
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
                    return m13349a(cls.getGenericSuperclass(), (Class<?>) superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* renamed from: a */
    public static Type m13348a(Type type, Class<?> cls, Type type2) {
        return m13347a(type, cls, type2, new HashSet());
    }

    /* renamed from: a */
    public static Type m13347a(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        while (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            Type a = m13346a(type, cls, (TypeVariable<?>) typeVariable);
            type2 = a;
            if (a == typeVariable) {
                return a;
            }
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type a2 = m13347a(type, cls, componentType, collection);
                return componentType == a2 ? cls2 : m13351a(a2);
            }
        }
        if (type2 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type2;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type a3 = m13347a(type, cls, genericComponentType, collection);
            return genericComponentType == a3 ? genericArrayType : m13351a(a3);
        }
        if (type2 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type a4 = m13347a(type, cls, ownerType, collection);
            boolean z = a4 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i = 0; i < length; i++) {
                Type a5 = m13347a(type, cls, actualTypeArguments[i], collection);
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
                parameterizedType2 = m13344a(a4, parameterizedType.getRawType(), actualTypeArguments);
            }
            return parameterizedType2;
        }
        WildcardType wildcardType = type2;
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type2;
            Type[] lowerBounds = wildcardType2.getLowerBounds();
            Type[] upperBounds = wildcardType2.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type a6 = m13347a(type, cls, lowerBounds[0], collection);
                wildcardType = wildcardType2;
                if (a6 != lowerBounds[0]) {
                    return m13334g(a6);
                }
            } else {
                wildcardType = wildcardType2;
                if (upperBounds.length == 1) {
                    Type a7 = m13347a(type, cls, upperBounds[0], collection);
                    wildcardType = wildcardType2;
                    if (a7 != upperBounds[0]) {
                        return m13335f(a7);
                    }
                }
            }
        }
        return wildcardType;
    }

    /* renamed from: a */
    public static Type m13346a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> a = m13343a(typeVariable);
        if (a == null) {
            return typeVariable;
        }
        Type a2 = m13349a(type, cls, a);
        if (!(a2 instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) a2).getActualTypeArguments()[m13342a((Object[]) a.getTypeParameters(), (Object) typeVariable)];
    }

    /* renamed from: a */
    public static boolean m13352a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: a */
    public static boolean m13345a(Type type, Type type2) {
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
            if (!m13352a((Object) parameterizedType.getOwnerType(), (Object) parameterizedType2.getOwnerType()) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                z3 = false;
            }
            return z3;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return m13345a(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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
    public static Type m13341b(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Type type2 = cls;
            if (cls.isArray()) {
                type2 = new C10125a(m13341b(cls.getComponentType()));
            }
            return type2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C10126b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new C10125a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new C10127c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    /* renamed from: b */
    public static Type m13339b(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        C10123a.m13354a(cls2.isAssignableFrom(cls));
        return m13348a(type2, cls, m13349a(type2, cls, cls2));
    }

    /* renamed from: b */
    public static Type[] m13340b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type b = m13339b(type, cls, Map.class);
        return b instanceof ParameterizedType ? ((ParameterizedType) b).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    /* renamed from: c */
    public static void m13338c(Type type) {
        C10123a.m13354a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    /* renamed from: d */
    public static Type m13337d(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    /* renamed from: e */
    public static Class<?> m13336e(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            C10123a.m13354a(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(m13336e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return m13336e(((WildcardType) type).getUpperBounds()[0]);
            }
            String name = type == null ? C14247d.f31851f : type.getClass().getName();
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    /* renamed from: f */
    public static WildcardType m13335f(Type type) {
        return new C10127c(type instanceof WildcardType ? ((WildcardType) type).getUpperBounds() : new Type[]{type}, f22838a);
    }

    /* renamed from: g */
    public static WildcardType m13334g(Type type) {
        return new C10127c(new Type[]{Object.class}, type instanceof WildcardType ? ((WildcardType) type).getLowerBounds() : new Type[]{type});
    }

    /* renamed from: h */
    public static String m13333h(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}

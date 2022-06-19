package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import okhttp3.AbstractC5406ad;
import p000a.C0005c;
/* renamed from: retrofit2.o */
/* loaded from: classes-dex2jar.jar:retrofit2/o.class */
public final class C5633o {

    /* renamed from: a */
    static final Type[] f23377a = new Type[0];

    /* renamed from: retrofit2.o$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/o$a.class */
    public static final class C5634a implements GenericArrayType {

        /* renamed from: a */
        private final Type f23378a;

        C5634a(Type type) {
            this.f23378a = type;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C5633o.m9a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f23378a;
        }

        public int hashCode() {
            return this.f23378a.hashCode();
        }

        public String toString() {
            return C5633o.m4b(this.f23378a) + "[]";
        }
    }

    /* renamed from: retrofit2.o$b */
    /* loaded from: classes-dex2jar.jar:retrofit2/o$b.class */
    public static final class C5635b implements ParameterizedType {

        /* renamed from: a */
        private final Type f23379a;

        /* renamed from: b */
        private final Type f23380b;

        /* renamed from: c */
        private final Type[] f23381c;

        C5635b(@Nullable Type type, Type type2, Type... typeArr) {
            boolean z = true;
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() != null ? false : z)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                C5633o.m15a(type3, "typeArgument == null");
                C5633o.m2c(type3);
            }
            this.f23379a = type;
            this.f23380b = type2;
            this.f23381c = (Type[]) typeArr.clone();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C5633o.m9a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f23381c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f23379a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f23380b;
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f23381c);
            return (this.f23379a != null ? this.f23379a.hashCode() : 0) ^ (this.f23380b.hashCode() ^ hashCode);
        }

        public String toString() {
            String sb;
            if (this.f23381c.length == 0) {
                sb = C5633o.m4b(this.f23380b);
            } else {
                StringBuilder sb2 = new StringBuilder((this.f23381c.length + 1) * 30);
                sb2.append(C5633o.m4b(this.f23380b));
                sb2.append("<").append(C5633o.m4b(this.f23381c[0]));
                for (int i = 1; i < this.f23381c.length; i++) {
                    sb2.append(", ").append(C5633o.m4b(this.f23381c[i]));
                }
                sb = sb2.append(">").toString();
            }
            return sb;
        }
    }

    /* renamed from: retrofit2.o$c */
    /* loaded from: classes-dex2jar.jar:retrofit2/o$c.class */
    public static final class C5636c implements WildcardType {

        /* renamed from: a */
        private final Type f23382a;

        /* renamed from: b */
        private final Type f23383b;

        C5636c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length != 1) {
                if (typeArr[0] == null) {
                    throw new NullPointerException();
                }
                C5633o.m2c(typeArr[0]);
                this.f23383b = null;
                this.f23382a = typeArr[0];
            } else if (typeArr2[0] == null) {
                throw new NullPointerException();
            } else {
                C5633o.m2c(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    throw new IllegalArgumentException();
                }
                this.f23383b = typeArr2[0];
                this.f23382a = Object.class;
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C5633o.m9a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return this.f23383b != null ? new Type[]{this.f23383b} : C5633o.f23377a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f23382a};
        }

        public int hashCode() {
            return (this.f23383b != null ? this.f23383b.hashCode() + 31 : 1) ^ (this.f23382a.hashCode() + 31);
        }

        public String toString() {
            return this.f23383b != null ? "? super " + C5633o.m4b(this.f23383b) : this.f23382a == Object.class ? "?" : "? extends " + C5633o.m4b(this.f23382a);
        }
    }

    /* renamed from: a */
    private static int m6a(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    /* renamed from: a */
    public static Class<?> m13a(Type type) {
        Class<?> m13a;
        m15a(type, "type == null");
        if (type instanceof Class) {
            m13a = (Class) type;
        } else if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (!(rawType instanceof Class)) {
                throw new IllegalArgumentException();
            }
            m13a = (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            m13a = Array.newInstance(m13a(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else if (type instanceof TypeVariable) {
            m13a = Object.class;
        } else if (!(type instanceof WildcardType)) {
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
        } else {
            m13a = m13a(((WildcardType) type).getUpperBounds()[0]);
        }
        return m13a;
    }

    /* renamed from: a */
    private static Class<?> m8a(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    /* renamed from: a */
    public static <T> T m15a(@Nullable T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* renamed from: a */
    public static Type m17a(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i < 0 || i >= actualTypeArguments.length) {
            throw new IllegalArgumentException("Index " + i + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
        }
        Type type = actualTypeArguments[i];
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        return type2;
    }

    /* renamed from: a */
    static Type m12a(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 != cls) {
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    if (interfaces[i] == cls2) {
                        type = cls.getGenericInterfaces()[i];
                        break;
                    } else if (cls2.isAssignableFrom(interfaces[i])) {
                        type = m12a(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                        break;
                    }
                }
            }
            if (!cls.isInterface()) {
                while (cls != Object.class) {
                    Class<? super Object> superclass = cls.getSuperclass();
                    if (superclass == cls2) {
                        type = cls.getGenericSuperclass();
                        break;
                    } else if (cls2.isAssignableFrom(superclass)) {
                        type = m12a(cls.getGenericSuperclass(), (Class<?>) superclass, cls2);
                        break;
                    } else {
                        cls = superclass;
                    }
                }
            }
            type = cls2;
        }
        return type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r10 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.reflect.Type m11a(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.C5633o.m11a(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    /* renamed from: a */
    private static Type m10a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        TypeVariable<?> typeVariable2;
        Class<?> m8a = m8a(typeVariable);
        if (m8a == null) {
            typeVariable2 = typeVariable;
        } else {
            Type m12a = m12a(type, cls, m8a);
            typeVariable2 = typeVariable;
            if (m12a instanceof ParameterizedType) {
                typeVariable2 = ((ParameterizedType) m12a).getActualTypeArguments()[m6a(m8a.getTypeParameters(), typeVariable)];
            }
        }
        return typeVariable2;
    }

    /* renamed from: a */
    public static AbstractC5406ad m7a(AbstractC5406ad abstractC5406ad) {
        C0005c c0005c = new C0005c();
        abstractC5406ad.mo87c().mo22499a(c0005c);
        return AbstractC5406ad.m781a(abstractC5406ad.mo89a(), abstractC5406ad.mo88b(), c0005c);
    }

    /* renamed from: a */
    public static <T> void m16a(Class<T> cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        if (cls.getInterfaces().length <= 0) {
            return;
        }
        throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
    }

    /* renamed from: a */
    public static void m14a(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (!(th instanceof LinkageError)) {
            return;
        }
        throw ((LinkageError) th);
    }

    /* renamed from: a */
    static boolean m9a(Type type, Type type2) {
        boolean z;
        if (type == type2) {
            z = true;
        } else if (type instanceof Class) {
            z = type.equals(type2);
        } else if (type instanceof ParameterizedType) {
            z = false;
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type ownerType = parameterizedType.getOwnerType();
                Type ownerType2 = parameterizedType2.getOwnerType();
                z = (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            }
        } else if (type instanceof GenericArrayType) {
            z = false;
            if (type2 instanceof GenericArrayType) {
                z = m9a(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
        } else if (type instanceof WildcardType) {
            z = false;
            if (type2 instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                WildcardType wildcardType2 = (WildcardType) type2;
                z = Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
            }
        } else {
            z = false;
            if (type instanceof TypeVariable) {
                z = false;
                if (type2 instanceof TypeVariable) {
                    TypeVariable typeVariable = (TypeVariable) type;
                    TypeVariable typeVariable2 = (TypeVariable) type2;
                    z = typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m5a(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        boolean z;
        int length = annotationArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            } else if (cls.isInstance(annotationArr[i])) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: b */
    static String m4b(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: b */
    public static Type m3b(Type type, Class<?> cls, Class<?> cls2) {
        if (!cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException();
        }
        return m11a(type, cls, m12a(type, cls, cls2));
    }

    /* renamed from: c */
    static void m2c(Type type) {
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static boolean m1d(@Nullable Type type) {
        boolean z;
        if (type instanceof Class) {
            z = false;
        } else if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            int length = actualTypeArguments.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (m1d(actualTypeArguments[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        } else if (type instanceof GenericArrayType) {
            z = m1d(((GenericArrayType) type).getGenericComponentType());
        } else if (type instanceof TypeVariable) {
            z = true;
        } else if (!(type instanceof WildcardType)) {
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public static Type m0e(Type type) {
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        }
        return m17a(0, (ParameterizedType) type);
    }
}

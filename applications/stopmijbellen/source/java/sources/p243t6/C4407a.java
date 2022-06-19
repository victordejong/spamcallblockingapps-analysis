package p243t6;

import android.support.p012v4.media.C0082b;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Objects;
import p124i4.C3102d;
/* renamed from: t6.a */
/* loaded from: classes-dex2jar.jar:t6/a.class */
public final class C4407a {

    /* renamed from: a */
    public static final Type[] f13734a = new Type[0];

    /* renamed from: t6.a$a */
    /* loaded from: classes-dex2jar.jar:t6/a$a.class */
    public static final class C4408a implements GenericArrayType, Serializable {

        /* renamed from: a */
        public final Type f13735a;

        public C4408a(Type type) {
            this.f13735a = C4407a.m955a(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C4407a.m953c(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f13735a;
        }

        public int hashCode() {
            return this.f13735a.hashCode();
        }

        public String toString() {
            return C4407a.m951e(this.f13735a) + "[]";
        }
    }

    /* renamed from: t6.a$b */
    /* loaded from: classes-dex2jar.jar:t6/a$b.class */
    public static final class C4409b implements ParameterizedType, Serializable {

        /* renamed from: a */
        public final Type f13736a;

        /* renamed from: b */
        public final Type f13737b;

        /* renamed from: c */
        public final Type[] f13738c;

        public C4409b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                C3102d.m2632g(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f13736a = type == null ? null : C4407a.m955a(type);
            this.f13737b = C4407a.m955a(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f13738c = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                Objects.requireNonNull(this.f13738c[i]);
                C4407a.m954b(this.f13738c[i]);
                Type[] typeArr3 = this.f13738c;
                typeArr3[i] = C4407a.m955a(typeArr3[i]);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C4407a.m953c(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f13738c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f13736a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f13737b;
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f13738c);
            int hashCode2 = this.f13737b.hashCode();
            Type type = this.f13736a;
            return (hashCode ^ hashCode2) ^ (type != null ? type.hashCode() : 0);
        }

        public String toString() {
            int length = this.f13738c.length;
            if (length == 0) {
                return C4407a.m951e(this.f13737b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(C4407a.m951e(this.f13737b));
            sb.append("<");
            sb.append(C4407a.m951e(this.f13738c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(C4407a.m951e(this.f13738c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: t6.a$c */
    /* loaded from: classes-dex2jar.jar:t6/a$c.class */
    public static final class C4410c implements WildcardType, Serializable {

        /* renamed from: a */
        public final Type f13739a;

        /* renamed from: b */
        public final Type f13740b;

        public C4410c(Type[] typeArr, Type[] typeArr2) {
            C3102d.m2632g(typeArr2.length <= 1);
            C3102d.m2632g(typeArr.length == 1);
            if (typeArr2.length != 1) {
                Objects.requireNonNull(typeArr[0]);
                C4407a.m954b(typeArr[0]);
                this.f13740b = null;
                this.f13739a = C4407a.m955a(typeArr[0]);
                return;
            }
            Objects.requireNonNull(typeArr2[0]);
            C4407a.m954b(typeArr2[0]);
            C3102d.m2632g(typeArr[0] == Object.class);
            this.f13740b = C4407a.m955a(typeArr2[0]);
            this.f13739a = Object.class;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C4407a.m953c(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f13740b;
            return type != null ? new Type[]{type} : C4407a.f13734a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f13739a};
        }

        public int hashCode() {
            Type type = this.f13740b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f13739a.hashCode() + 31);
        }

        public String toString() {
            if (this.f13740b != null) {
                StringBuilder m8752j = C0082b.m8752j("? super ");
                m8752j.append(C4407a.m951e(this.f13740b));
                return m8752j.toString();
            } else if (this.f13739a == Object.class) {
                return "?";
            } else {
                StringBuilder m8752j2 = C0082b.m8752j("? extends ");
                m8752j2.append(C4407a.m951e(this.f13739a));
                return m8752j2.toString();
            }
        }
    }

    /* renamed from: a */
    public static Type m955a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Type type2 = cls;
            if (cls.isArray()) {
                type2 = new C4408a(m955a(cls.getComponentType()));
            }
            return type2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C4409b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new C4408a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new C4410c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    /* renamed from: b */
    public static void m954b(Type type) {
        C3102d.m2632g(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    /* renamed from: c */
    public static boolean m953c(Type type, Type type2) {
        boolean z = true;
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
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            if (!(ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                z = false;
            }
            return z;
        } else if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return m953c(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
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

    /* renamed from: d */
    public static Class<?> m952d(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            C3102d.m2632g(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(m952d(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return m952d(((WildcardType) type).getUpperBounds()[0]);
            }
            String name = type == null ? "null" : type.getClass().getName();
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    /* renamed from: e */
    public static String m951e(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}

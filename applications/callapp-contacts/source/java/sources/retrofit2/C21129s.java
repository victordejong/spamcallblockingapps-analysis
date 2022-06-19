package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.HttpUrl;
import okhttp3.ResponseBody;
import p092c.C3202f;
/* renamed from: retrofit2.s */
/* loaded from: classes5-dex2jar.jar:retrofit2/s.class */
public final class C21129s {

    /* renamed from: a */
    static final Type[] f67828a = new Type[0];

    /* renamed from: retrofit2.s$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/s$a.class */
    public static final class C21130a implements GenericArrayType {

        /* renamed from: a */
        private final Type f67829a;

        C21130a(Type type) {
            this.f67829a = type;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C21129s.m6a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f67829a;
        }

        public final int hashCode() {
            return this.f67829a.hashCode();
        }

        public final String toString() {
            return C21129s.m3b(this.f67829a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* renamed from: retrofit2.s$b */
    /* loaded from: classes5-dex2jar.jar:retrofit2/s$b.class */
    public static final class C21131b implements ParameterizedType {

        /* renamed from: a */
        private final Type f67830a;

        /* renamed from: b */
        private final Type f67831b;

        /* renamed from: c */
        private final Type[] f67832c;

        public C21131b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() != null ? false : true)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                C21129s.m1c(type3);
            }
            this.f67830a = type;
            this.f67831b = type2;
            this.f67832c = (Type[]) typeArr.clone();
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C21129s.m6a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f67832c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f67830a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f67831b;
        }

        public final int hashCode() {
            int hashCode = Arrays.hashCode(this.f67832c);
            int hashCode2 = this.f67831b.hashCode();
            Type type = this.f67830a;
            return (hashCode ^ hashCode2) ^ (type != null ? type.hashCode() : 0);
        }

        public final String toString() {
            Type[] typeArr = this.f67832c;
            if (typeArr.length == 0) {
                return C21129s.m3b(this.f67831b);
            }
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(C21129s.m3b(this.f67831b));
            sb.append("<");
            sb.append(C21129s.m3b(this.f67832c[0]));
            for (int i = 1; i < this.f67832c.length; i++) {
                sb.append(", ");
                sb.append(C21129s.m3b(this.f67832c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: retrofit2.s$c */
    /* loaded from: classes5-dex2jar.jar:retrofit2/s$c.class */
    public static final class C21132c implements WildcardType {

        /* renamed from: a */
        private final Type f67833a;

        /* renamed from: b */
        private final Type f67834b;

        C21132c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length <= 1) {
                if (typeArr.length != 1) {
                    throw new IllegalArgumentException();
                }
                if (typeArr2.length != 1) {
                    Objects.requireNonNull(typeArr[0]);
                    C21129s.m1c(typeArr[0]);
                    this.f67834b = null;
                    this.f67833a = typeArr[0];
                    return;
                }
                Objects.requireNonNull(typeArr2[0]);
                C21129s.m1c(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    throw new IllegalArgumentException();
                }
                this.f67834b = typeArr2[0];
                this.f67833a = Object.class;
                return;
            }
            throw new IllegalArgumentException();
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C21129s.m6a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f67834b;
            return type != null ? new Type[]{type} : C21129s.f67828a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f67833a};
        }

        public final int hashCode() {
            Type type = this.f67834b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f67833a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f67834b != null) {
                return "? super " + C21129s.m3b(this.f67834b);
            } else if (this.f67833a == Object.class) {
                return "?";
            } else {
                return "? extends " + C21129s.m3b(this.f67833a);
            }
        }
    }

    private C21129s() {
    }

    /* renamed from: a */
    public static Class<?> m9a(Type type) {
        while (true) {
            Objects.requireNonNull(type, "type == null");
            if (type instanceof Class) {
                return (Class) type;
            }
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                if (!(rawType instanceof Class)) {
                    throw new IllegalArgumentException();
                }
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(m9a(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            } else {
                if (type instanceof TypeVariable) {
                    return Object.class;
                }
                if (!(type instanceof WildcardType)) {
                    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
                }
                type = ((WildcardType) type).getUpperBounds()[0];
            }
        }
    }

    /* renamed from: a */
    public static RuntimeException m14a(Method method, int i, String str, Object... objArr) {
        return m11a(method, (Throwable) null, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    /* renamed from: a */
    public static RuntimeException m13a(Method method, String str, Object... objArr) {
        return m11a(method, (Throwable) null, str, objArr);
    }

    /* renamed from: a */
    public static RuntimeException m12a(Method method, Throwable th, int i, String str, Object... objArr) {
        return m11a(method, th, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    /* renamed from: a */
    public static RuntimeException m11a(Method method, Throwable th, String str, Object... objArr) {
        String format = String.format(str, objArr);
        return new IllegalArgumentException(format + "\n    for method " + method.getDeclaringClass().getSimpleName() + "." + method.getName(), th);
    }

    /* renamed from: a */
    public static Type m16a(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i >= 0 && i < actualTypeArguments.length) {
            Type type = actualTypeArguments[i];
            Type type2 = type;
            if (type instanceof WildcardType) {
                type2 = ((WildcardType) type).getUpperBounds()[0];
            }
            return type2;
        }
        throw new IllegalArgumentException("Index " + i + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
    }

    /* renamed from: a */
    public static Type m10a(ParameterizedType parameterizedType) {
        Type type = parameterizedType.getActualTypeArguments()[0];
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getLowerBounds()[0];
        }
        return type2;
    }

    /* renamed from: a */
    public static Type m8a(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return m7a(type, cls, m2b(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    private static Type m7a(Type type, Class<?> cls, Type type2) {
        TypeVariable typeVariable;
        do {
            int i = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (type2 instanceof Class) {
                    Class cls2 = (Class) type2;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type m7a = m7a(type, cls, (Type) componentType);
                        return componentType == m7a ? cls2 : new C21130a(m7a);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type m7a2 = m7a(type, cls, genericComponentType);
                    return genericComponentType == m7a2 ? genericArrayType : new C21130a(m7a2);
                } else if (!(type2 instanceof ParameterizedType)) {
                    WildcardType wildcardType = type2;
                    if (type2 instanceof WildcardType) {
                        WildcardType wildcardType2 = (WildcardType) type2;
                        Type[] lowerBounds = wildcardType2.getLowerBounds();
                        Type[] upperBounds = wildcardType2.getUpperBounds();
                        if (lowerBounds.length == 1) {
                            Type m7a3 = m7a(type, cls, lowerBounds[0]);
                            wildcardType = wildcardType2;
                            if (m7a3 != lowerBounds[0]) {
                                return new C21132c(new Type[]{Object.class}, new Type[]{m7a3});
                            }
                        } else {
                            wildcardType = wildcardType2;
                            if (upperBounds.length == 1) {
                                Type m7a4 = m7a(type, cls, upperBounds[0]);
                                wildcardType = wildcardType2;
                                if (m7a4 != upperBounds[0]) {
                                    return new C21132c(new Type[]{m7a4}, f67828a);
                                }
                            }
                        }
                    }
                    return wildcardType;
                } else {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type m7a5 = m7a(type, cls, ownerType);
                    boolean z = m7a5 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i < length) {
                        Type m7a6 = m7a(type, cls, actualTypeArguments[i]);
                        boolean z2 = z;
                        Type[] typeArr = actualTypeArguments;
                        if (m7a6 != actualTypeArguments[i]) {
                            z2 = z;
                            typeArr = actualTypeArguments;
                            if (!z) {
                                typeArr = (Type[]) actualTypeArguments.clone();
                                z2 = true;
                            }
                            typeArr[i] = m7a6;
                        }
                        i++;
                        z = z2;
                        actualTypeArguments = typeArr;
                    }
                    return z ? new C21131b(m7a5, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
            }
            typeVariable = (TypeVariable) type2;
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 != null) {
                Type m2b = m2b(type, cls, cls3);
                if (m2b instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    for (int i2 = 0; i2 < typeParameters.length; i2++) {
                        if (typeVariable.equals(typeParameters[i2])) {
                            type2 = ((ParameterizedType) m2b).getActualTypeArguments()[i2];
                        }
                    }
                    throw new NoSuchElementException();
                }
            }
            type2 = typeVariable;
        } while (type2 != typeVariable);
        return type2;
    }

    /* renamed from: a */
    public static ResponseBody m5a(ResponseBody responseBody) throws IOException {
        C3202f c3202f = new C3202f();
        responseBody.source().mo39129a(c3202f);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), c3202f);
    }

    /* renamed from: a */
    public static void m15a(Throwable th) {
        if (!(th instanceof VirtualMachineError)) {
            if (th instanceof ThreadDeath) {
                throw ((ThreadDeath) th);
            }
            if (th instanceof LinkageError) {
                throw ((LinkageError) th);
            }
            return;
        }
        throw ((VirtualMachineError) th);
    }

    /* renamed from: a */
    static boolean m6a(Type type, Type type2) {
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

    /* renamed from: a */
    public static boolean m4a(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    static String m3b(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: b */
    private static Type m2b(Type type, Class<?> cls, Class<?> cls2) {
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

    /* renamed from: c */
    static void m1c(Type type) {
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static boolean m0d(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                    if (m0d(type2)) {
                        return true;
                    }
                }
                return false;
            } else if (!(type instanceof GenericArrayType)) {
                if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
                    return true;
                }
                throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? JsonReaderKt.NULL : type.getClass().getName()));
            } else {
                type = ((GenericArrayType) type).getGenericComponentType();
            }
        }
        return false;
    }
}

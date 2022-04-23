package retrofit2;

import c.f;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f39546a = new Type[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/s$a.class */
    public static final class a implements GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f39547a;

        a(Type type) {
            this.f39547a = type;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && s.a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f39547a;
        }

        public final int hashCode() {
            return this.f39547a.hashCode();
        }

        public final String toString() {
            return s.b(this.f39547a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/s$b.class */
    public static final class b implements ParameterizedType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f39548a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f39549b;

        /* renamed from: c  reason: collision with root package name */
        private final Type[] f39550c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() != null ? false : true)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                s.c(type3);
            }
            this.f39548a = type;
            this.f39549b = type2;
            this.f39550c = (Type[]) typeArr.clone();
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && s.a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f39550c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f39548a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f39549b;
        }

        public final int hashCode() {
            int hashCode = Arrays.hashCode(this.f39550c);
            int hashCode2 = this.f39549b.hashCode();
            Type type = this.f39548a;
            return (hashCode ^ hashCode2) ^ (type != null ? type.hashCode() : 0);
        }

        public final String toString() {
            Type[] typeArr = this.f39550c;
            if (typeArr.length == 0) {
                return s.b(this.f39549b);
            }
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(s.b(this.f39549b));
            sb.append("<");
            sb.append(s.b(this.f39550c[0]));
            for (int i = 1; i < this.f39550c.length; i++) {
                sb.append(", ");
                sb.append(s.b(this.f39550c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/s$c.class */
    public static final class c implements WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f39551a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f39552b;

        c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            } else if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            } else if (typeArr2.length == 1) {
                Objects.requireNonNull(typeArr2[0]);
                s.c(typeArr2[0]);
                if (typeArr[0] == Object.class) {
                    this.f39552b = typeArr2[0];
                    this.f39551a = Object.class;
                    return;
                }
                throw new IllegalArgumentException();
            } else {
                Objects.requireNonNull(typeArr[0]);
                s.c(typeArr[0]);
                this.f39552b = null;
                this.f39551a = typeArr[0];
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && s.a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f39552b;
            return type != null ? new Type[]{type} : s.f39546a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f39551a};
        }

        public final int hashCode() {
            Type type = this.f39552b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f39551a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f39552b != null) {
                return "? super " + s.b(this.f39552b);
            } else if (this.f39551a == Object.class) {
                return "?";
            } else {
                return "? extends " + s.b(this.f39551a);
            }
        }
    }

    private s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> a(Type type) {
        while (true) {
            Objects.requireNonNull(type, "type == null");
            if (type instanceof Class) {
                return (Class) type;
            }
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                if (rawType instanceof Class) {
                    return (Class) rawType;
                }
                throw new IllegalArgumentException();
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(a(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            } else {
                if (type instanceof TypeVariable) {
                    return Object.class;
                }
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                } else {
                    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException a(Method method, int i, String str, Object... objArr) {
        return a(method, (Throwable) null, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException a(Method method, String str, Object... objArr) {
        return a(method, (Throwable) null, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException a(Method method, Throwable th, int i, String str, Object... objArr) {
        return a(method, th, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException a(Method method, Throwable th, String str, Object... objArr) {
        String format = String.format(str, objArr);
        return new IllegalArgumentException(format + "\n    for method " + method.getDeclaringClass().getSimpleName() + "." + method.getName(), th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type a(int i, ParameterizedType parameterizedType) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type a(ParameterizedType parameterizedType) {
        Type type = parameterizedType.getActualTypeArguments()[0];
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getLowerBounds()[0];
        }
        return type2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type a(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return a(type, cls, b(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    private static Type a(Type type, Class<?> cls, Type type2) {
        TypeVariable typeVariable;
        do {
            if (type2 instanceof TypeVariable) {
                typeVariable = (TypeVariable) type2;
                GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
                Class cls2 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
                if (cls2 != null) {
                    Type b2 = b(type, cls, cls2);
                    if (b2 instanceof ParameterizedType) {
                        TypeVariable[] typeParameters = cls2.getTypeParameters();
                        for (int i = 0; i < typeParameters.length; i++) {
                            if (typeVariable.equals(typeParameters[i])) {
                                type2 = ((ParameterizedType) b2).getActualTypeArguments()[i];
                            }
                        }
                        throw new NoSuchElementException();
                    }
                }
                type2 = typeVariable;
            } else {
                if (type2 instanceof Class) {
                    Class cls3 = (Class) type2;
                    if (cls3.isArray()) {
                        Class<?> componentType = cls3.getComponentType();
                        Type a2 = a(type, cls, (Type) componentType);
                        return componentType == a2 ? cls3 : new a(a2);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type a3 = a(type, cls, genericComponentType);
                    return genericComponentType == a3 ? genericArrayType : new a(a3);
                } else if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type a4 = a(type, cls, ownerType);
                    boolean z = a4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        Type a5 = a(type, cls, actualTypeArguments[i2]);
                        z = z;
                        actualTypeArguments = actualTypeArguments;
                        if (a5 != actualTypeArguments[i2]) {
                            z = z;
                            actualTypeArguments = actualTypeArguments;
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i2] = a5;
                        }
                    }
                    return z ? new b(a4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                } else {
                    WildcardType wildcardType = type2;
                    if (type2 instanceof WildcardType) {
                        WildcardType wildcardType2 = (WildcardType) type2;
                        Type[] lowerBounds = wildcardType2.getLowerBounds();
                        Type[] upperBounds = wildcardType2.getUpperBounds();
                        if (lowerBounds.length == 1) {
                            Type a6 = a(type, cls, lowerBounds[0]);
                            wildcardType = wildcardType2;
                            if (a6 != lowerBounds[0]) {
                                return new c(new Type[]{Object.class}, new Type[]{a6});
                            }
                        } else {
                            wildcardType = wildcardType2;
                            if (upperBounds.length == 1) {
                                Type a7 = a(type, cls, upperBounds[0]);
                                wildcardType = wildcardType2;
                                if (a7 != upperBounds[0]) {
                                    return new c(new Type[]{a7}, f39546a);
                                }
                            }
                        }
                    }
                    return wildcardType;
                }
            }
        } while (type2 != typeVariable);
        return type2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ResponseBody a(ResponseBody responseBody) throws IOException {
        f fVar = new f();
        responseBody.source().a(fVar);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    static boolean a(Type type, Type type2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    static String b(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    private static Type b(Type type, Class<?> cls, Class<?> cls2) {
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

    static void c(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                    if (d(type2)) {
                        return true;
                    }
                }
                return false;
            } else if (type instanceof GenericArrayType) {
                type = ((GenericArrayType) type).getGenericComponentType();
            } else if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
                return true;
            } else {
                throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? JsonReaderKt.NULL : type.getClass().getName()));
            }
        }
        return false;
    }
}

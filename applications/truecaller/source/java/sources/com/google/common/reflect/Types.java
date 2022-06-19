package com.google.common.reflect;

import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Predicates;
import com.google.common.base.Predicates$1;
import com.google.common.collect.AbstractIndexedListIterator;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import com.google.common.collect.RegularImmutableList;
import com.google.common.collect.RegularImmutableMap;
import com.razorpay.AnalyticsConstants;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types.class */
public final class Types {
    public static final Joiner COMMA_JOINER;
    public static final Function<Type, String> TYPE_NAME = new 1();

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$ClassOwnership.class */
    public static abstract class ClassOwnership extends Enum<ClassOwnership> {
        public static final /* synthetic */ ClassOwnership[] $VALUES;
        public static final ClassOwnership JVM_BEHAVIOR;
        public static final ClassOwnership LOCAL_CLASS_HAS_NO_OWNER;
        public static final ClassOwnership OWNED_BY_ENCLOSING_CLASS;

        /* renamed from: com.google.common.reflect.Types$ClassOwnership$1LocalClass */
        /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$ClassOwnership$1LocalClass.class */
        public class C1LocalClass<T> {
        }

        static {
            ClassOwnership classOwnership = new 1("OWNED_BY_ENCLOSING_CLASS", 0);
            OWNED_BY_ENCLOSING_CLASS = classOwnership;
            ClassOwnership classOwnership2 = new 2("LOCAL_CLASS_HAS_NO_OWNER", 1);
            LOCAL_CLASS_HAS_NO_OWNER = classOwnership2;
            $VALUES = new ClassOwnership[]{classOwnership, classOwnership2};
            ParameterizedType parameterizedType = (ParameterizedType) 3.class.getGenericSuperclass();
            ClassOwnership[] values = values();
            for (int i = 0; i < 2; i++) {
                ClassOwnership classOwnership3 = values[i];
                if (classOwnership3.getOwnerType(C1LocalClass.class) == parameterizedType.getOwnerType()) {
                    JVM_BEHAVIOR = classOwnership3;
                    return;
                }
            }
            throw new AssertionError();
        }

        public ClassOwnership(String str, int i, 1 r7) {
            super(str, i);
        }

        public static ClassOwnership valueOf(String str) {
            return (ClassOwnership) Enum.valueOf(ClassOwnership.class, str);
        }

        public static ClassOwnership[] values() {
            return (ClassOwnership[]) $VALUES.clone();
        }

        public abstract Class<?> getOwnerType(Class<?> cls);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$GenericArrayTypeImpl.class */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        public final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = JavaVersion.CURRENT.usedInGenericType(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return C26232y.equal1(this.componentType, ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return String.valueOf(Types.toString(this.componentType)).concat("[]");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$JavaVersion.class */
    public static abstract class JavaVersion extends Enum<JavaVersion> {
        public static final /* synthetic */ JavaVersion[] $VALUES;
        public static final JavaVersion CURRENT;
        public static final JavaVersion JAVA6;
        public static final JavaVersion JAVA7;
        public static final JavaVersion JAVA8;
        public static final JavaVersion JAVA9;

        static {
            JavaVersion javaVersion = new 1("JAVA6", 0);
            JAVA6 = javaVersion;
            JavaVersion javaVersion2 = new 2("JAVA7", 1);
            JAVA7 = javaVersion2;
            JavaVersion javaVersion3 = new 3("JAVA8", 2);
            JAVA8 = javaVersion3;
            JavaVersion javaVersion4 = new 4("JAVA9", 3);
            JAVA9 = javaVersion4;
            $VALUES = new JavaVersion[]{javaVersion, javaVersion2, javaVersion3, javaVersion4};
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new 5().capture().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = javaVersion3;
                } else {
                    CURRENT = javaVersion4;
                }
            } else if (new 6().capture() instanceof Class) {
                CURRENT = javaVersion2;
            } else {
                CURRENT = javaVersion;
            }
        }

        public JavaVersion(String str, int i, 1 r7) {
            super(str, i);
        }

        public static JavaVersion valueOf(String str) {
            return (JavaVersion) Enum.valueOf(JavaVersion.class, str);
        }

        public static JavaVersion[] values() {
            return (JavaVersion[]) $VALUES.clone();
        }

        public boolean jdkTypeDuplicatesOwnerName() {
            return true;
        }

        public abstract Type newArrayType(Type type);

        public String typeName(Type type) {
            return Types.toString(type);
        }

        public final ImmutableList<Type> usedInGenericType(Type[] typeArr) {
            AbstractIndexedListIterator abstractIndexedListIterator = ImmutableList.EMPTY_ITR;
            C26232y.checkNonnegative(4, "initialCapacity");
            Object[] objArr = new Object[4];
            int length = typeArr.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                Type usedInGenericType = usedInGenericType(typeArr[i]);
                Objects.requireNonNull(usedInGenericType);
                int i3 = i2 + 1;
                Object[] objArr2 = objArr;
                if (objArr.length < i3) {
                    objArr2 = Arrays.copyOf(objArr, ImmutableCollection.Builder.expandedCapacity(objArr.length, i3));
                }
                objArr2[i2] = usedInGenericType;
                i++;
                i2 = i3;
                objArr = objArr2;
            }
            return ImmutableList.asImmutableList(objArr, i2);
        }

        public abstract Type usedInGenericType(Type type);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$NativeTypeVariableEquals.class */
    public static final class NativeTypeVariableEquals<X> {
        public static final boolean NATIVE_TYPE_VARIABLE_ONLY = !NativeTypeVariableEquals.class.getTypeParameters()[0].equals(Types.newArtificialTypeVariable(NativeTypeVariableEquals.class, "X", new Type[0]));
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$ParameterizedTypeImpl.class */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        public final ImmutableList<Type> argumentsList;
        public final Type ownerType;
        public final Class<?> rawType;

        public ParameterizedTypeImpl(Type type, Class<?> cls, Type[] typeArr) {
            Objects.requireNonNull(cls);
            C26232y.checkArgument2(typeArr.length == cls.getTypeParameters().length);
            Types.access$200(typeArr, "type parameter");
            this.ownerType = type;
            this.rawType = cls;
            this.argumentsList = JavaVersion.CURRENT.usedInGenericType(typeArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            boolean z = false;
            if (this.rawType.equals(parameterizedType.getRawType())) {
                z = false;
                if (C26232y.equal1(this.ownerType, parameterizedType.getOwnerType())) {
                    z = false;
                    if (Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return Types.access$300(this.argumentsList);
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
            Type type = this.ownerType;
            return ((type == null ? 0 : type.hashCode()) ^ this.argumentsList.hashCode()) ^ this.rawType.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.ownerType != null) {
                JavaVersion javaVersion = JavaVersion.CURRENT;
                if (javaVersion.jdkTypeDuplicatesOwnerName()) {
                    sb.append(javaVersion.typeName(this.ownerType));
                    sb.append('.');
                }
            }
            sb.append(this.rawType.getName());
            sb.append('<');
            Joiner joiner = Types.COMMA_JOINER;
            ImmutableList<Type> immutableList = this.argumentsList;
            Function<Type, String> function = Types.TYPE_NAME;
            Function<Type, String> function2 = Types.TYPE_NAME;
            Objects.requireNonNull(immutableList);
            sb.append(joiner.join(new Iterables.5(immutableList, function2)));
            sb.append('>');
            return sb.toString();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$TypeVariableImpl.class */
    public static final class TypeVariableImpl<D extends GenericDeclaration> {
        public final ImmutableList<Type> bounds;
        public final D genericDeclaration;
        public final String name;

        public TypeVariableImpl(D d, String str, Type[] typeArr) {
            Types.access$200(typeArr, "bound for type variable");
            Objects.requireNonNull(d);
            this.genericDeclaration = d;
            Objects.requireNonNull(str);
            this.name = str;
            AbstractIndexedListIterator abstractIndexedListIterator = ImmutableList.EMPTY_ITR;
            this.bounds = typeArr.length == 0 ? RegularImmutableList.EMPTY : ImmutableList.construct((Object[]) typeArr.clone());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (!NativeTypeVariableEquals.NATIVE_TYPE_VARIABLE_ONLY) {
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.name.equals(typeVariable.getName()) && this.genericDeclaration.equals(typeVariable.getGenericDeclaration());
            } else if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof TypeVariableInvocationHandler)) {
                return false;
            } else {
                TypeVariableImpl<?> typeVariableImpl = ((TypeVariableInvocationHandler) Proxy.getInvocationHandler(obj)).typeVariableImpl;
                if (!this.name.equals(typeVariableImpl.name) || !this.genericDeclaration.equals(typeVariableImpl.genericDeclaration) || !this.bounds.equals(typeVariableImpl.bounds)) {
                    z = false;
                }
                return z;
            }
        }

        public int hashCode() {
            return this.genericDeclaration.hashCode() ^ this.name.hashCode();
        }

        public String toString() {
            return this.name;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$TypeVariableInvocationHandler.class */
    public static final class TypeVariableInvocationHandler implements InvocationHandler {
        public static final ImmutableMap<String, Method> typeVariableMethods;
        public final TypeVariableImpl<?> typeVariableImpl;

        static {
            Object[] objArr = new Object[4 * 2];
            Method[] methods = TypeVariableImpl.class.getMethods();
            int length = methods.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    typeVariableMethods = RegularImmutableMap.create(i3, objArr);
                    return;
                }
                Method method = methods[i];
                Object[] objArr2 = objArr;
                int i4 = i3;
                if (method.getDeclaringClass().equals(TypeVariableImpl.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException e) {
                    }
                    String name = method.getName();
                    int i5 = (i3 + 1) * 2;
                    objArr2 = objArr;
                    if (i5 > objArr.length) {
                        objArr2 = Arrays.copyOf(objArr, ImmutableCollection.Builder.expandedCapacity(objArr.length, i5));
                    }
                    C26232y.checkEntryNotNull(name, method);
                    objArr2[i3 * 2] = name;
                    objArr2[(i3 * 2) + 1] = method;
                    i4 = i3 + 1;
                }
                i++;
                objArr = objArr2;
                i2 = i4;
            }
        }

        public TypeVariableInvocationHandler(TypeVariableImpl<?> typeVariableImpl) {
            this.typeVariableImpl = typeVariableImpl;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = typeVariableMethods.get(name);
            if (method2 != null) {
                try {
                    return method2.invoke(this.typeVariableImpl, objArr);
                } catch (InvocationTargetException e) {
                    throw e.getCause();
                }
            }
            throw new UnsupportedOperationException(name);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/Types$WildcardTypeImpl.class */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        public final ImmutableList<Type> lowerBounds;
        public final ImmutableList<Type> upperBounds;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            Types.access$200(typeArr, "lower bound for wildcard");
            Types.access$200(typeArr2, "upper bound for wildcard");
            JavaVersion javaVersion = JavaVersion.CURRENT;
            this.lowerBounds = javaVersion.usedInGenericType(typeArr);
            this.upperBounds = javaVersion.usedInGenericType(typeArr2);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) obj;
                z = false;
                if (this.lowerBounds.equals(Arrays.asList(wildcardType.getLowerBounds()))) {
                    z = false;
                    if (this.upperBounds.equals(Arrays.asList(wildcardType.getUpperBounds()))) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return Types.access$300(this.lowerBounds);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return Types.access$300(this.upperBounds);
        }

        public int hashCode() {
            return this.lowerBounds.hashCode() ^ this.upperBounds.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            AbstractIndexedListIterator listIterator = this.lowerBounds.listIterator();
            while (listIterator.hasNext()) {
                sb.append(" super ");
                sb.append(JavaVersion.CURRENT.typeName((Type) listIterator.next()));
            }
            ImmutableList<Type> immutableList = this.upperBounds;
            Function<Type, String> function = Types.TYPE_NAME;
            Predicates.NotPredicate notPredicate = new Predicates.NotPredicate(new Predicates.IsEqualToPredicate(Object.class, (Predicates$1) null));
            Objects.requireNonNull(immutableList);
            Iterator it = immutableList.iterator();
            Objects.requireNonNull(it);
            Objects.requireNonNull(notPredicate);
            Iterators.5 r0 = new Iterators.5(it, notPredicate);
            while (r0.hasNext()) {
                sb.append(" extends ");
                sb.append(JavaVersion.CURRENT.typeName((Type) r0.next()));
            }
            return sb.toString();
        }
    }

    static {
        Joiner joiner = new Joiner(", ");
        COMMA_JOINER = new Joiner.1(joiner, joiner, AnalyticsConstants.NULL);
    }

    public static void access$200(Type[] typeArr, String str) {
        Class cls;
        for (Type type : typeArr) {
            if (type instanceof Class) {
                C26232y.checkArgument(!cls.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    public static Type[] access$300(Collection collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    public static Type newArrayType(Type type) {
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            C26232y.checkArgument2(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
            if (lowerBounds.length == 1) {
                return new WildcardTypeImpl(new Type[]{newArrayType(lowerBounds[0])}, new Type[]{Object.class});
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            C26232y.checkArgument2(upperBounds.length == 1, "Wildcard should have only one upper bound.");
            return new WildcardTypeImpl(new Type[0], new Type[]{newArrayType(upperBounds[0])});
        }
        return JavaVersion.CURRENT.newArrayType(type);
    }

    public static <D extends GenericDeclaration> TypeVariable<D> newArtificialTypeVariable(D d, String str, Type... typeArr) {
        Type[] typeArr2 = typeArr;
        if (typeArr.length == 0) {
            typeArr2 = new Type[]{Object.class};
        }
        TypeVariableInvocationHandler typeVariableInvocationHandler = new TypeVariableInvocationHandler(new TypeVariableImpl(d, str, typeArr2));
        C26232y.checkArgument(TypeVariable.class.isInterface(), "%s is not an interface", TypeVariable.class);
        return (TypeVariable) TypeVariable.class.cast(Proxy.newProxyInstance(TypeVariable.class.getClassLoader(), new Class[]{TypeVariable.class}, typeVariableInvocationHandler));
    }

    public static String toString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}

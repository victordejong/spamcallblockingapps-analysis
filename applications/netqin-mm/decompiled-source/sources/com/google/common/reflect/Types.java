package com.google.common.reflect;

import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
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
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4922i;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.C4983g0;
import p131c.p161d.p266c.p274h.AbstractC5075d;
import p131c.p161d.p266c.p274h.AbstractC5085g;
import p131c.p161d.p266c.p274h.C5074c;
/* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types.class */
public final class Types {

    /* renamed from: a */
    public static final AbstractC4920g<Type, String> f30896a = new C7740a();

    /* renamed from: b */
    public static final C4922i f30897b = C4922i.m24824b(", ").mo24822a("null");

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$ClassOwnership.class */
    public enum ClassOwnership {
        OWNED_BY_ENCLOSING_CLASS { // from class: com.google.common.reflect.Types.ClassOwnership.1
            @Override // com.google.common.reflect.Types.ClassOwnership
            public Class<?> getOwnerType(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        },
        LOCAL_CLASS_HAS_NO_OWNER { // from class: com.google.common.reflect.Types.ClassOwnership.2
            @Override // com.google.common.reflect.Types.ClassOwnership
            public Class<?> getOwnerType(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        };
        
        public static final ClassOwnership JVM_BEHAVIOR = detectJvmBehavior();

        /* renamed from: com.google.common.reflect.Types$ClassOwnership$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$ClassOwnership$a.class */
        public class C7732a<T> {
        }

        /* renamed from: com.google.common.reflect.Types$ClassOwnership$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$ClassOwnership$b.class */
        public static final class C7733b extends C7732a<String> {
        }

        /* synthetic */ ClassOwnership(C7740a aVar) {
            this();
        }

        public static ClassOwnership detectJvmBehavior() {
            ClassOwnership[] values;
            new C7733b();
            ParameterizedType parameterizedType = (ParameterizedType) C7733b.class.getGenericSuperclass();
            for (ClassOwnership classOwnership : values()) {
                if (classOwnership.getOwnerType(C7732a.class) == parameterizedType.getOwnerType()) {
                    return classOwnership;
                }
            }
            throw new AssertionError();
        }

        public abstract Class<?> getOwnerType(Class<?> cls);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$GenericArrayTypeImpl.class */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        public static final long serialVersionUID = 0;
        public final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = JavaVersion.CURRENT.usedInGenericType(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return C4928k.m24808a(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
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
            return Types.m7731e(this.componentType) + "[]";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$JavaVersion.class */
    public enum JavaVersion {
        JAVA6 { // from class: com.google.common.reflect.Types.JavaVersion.1
            @Override // com.google.common.reflect.Types.JavaVersion
            public GenericArrayType newArrayType(Type type) {
                return new GenericArrayTypeImpl(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                C4933n.m24795a(type);
                Type type2 = type;
                if (type instanceof Class) {
                    Class cls = (Class) type;
                    type2 = type;
                    if (cls.isArray()) {
                        type2 = new GenericArrayTypeImpl(cls.getComponentType());
                    }
                }
                return type2;
            }
        },
        JAVA7 { // from class: com.google.common.reflect.Types.JavaVersion.2
            @Override // com.google.common.reflect.Types.JavaVersion
            public Type newArrayType(Type type) {
                return type instanceof Class ? Types.m7749a((Class<?>) type) : new GenericArrayTypeImpl(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                C4933n.m24795a(type);
                return type;
            }
        },
        JAVA8 { // from class: com.google.common.reflect.Types.JavaVersion.3
            @Override // com.google.common.reflect.Types.JavaVersion
            public Type newArrayType(Type type) {
                return JavaVersion.JAVA7.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public String typeName(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException e2) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3);
                }
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                return JavaVersion.JAVA7.usedInGenericType(type);
            }
        },
        JAVA9 { // from class: com.google.common.reflect.Types.JavaVersion.4
            @Override // com.google.common.reflect.Types.JavaVersion
            public boolean jdkTypeDuplicatesOwnerName() {
                return false;
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type newArrayType(Type type) {
                return JavaVersion.JAVA8.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public String typeName(Type type) {
                return JavaVersion.JAVA8.typeName(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                return JavaVersion.JAVA8.usedInGenericType(type);
            }
        };
        
        public static final JavaVersion CURRENT;

        /* renamed from: com.google.common.reflect.Types$JavaVersion$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$JavaVersion$a.class */
        public static final class C7738a extends AbstractC5075d<Map.Entry<String, int[][]>> {
        }

        /* renamed from: com.google.common.reflect.Types$JavaVersion$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$JavaVersion$b.class */
        public static final class C7739b extends AbstractC5075d<int[]> {
        }

        static {
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new C7738a().capture().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = JAVA8;
                } else {
                    CURRENT = JAVA9;
                }
            } else if (new C7739b().capture() instanceof Class) {
                CURRENT = JAVA7;
            } else {
                CURRENT = JAVA6;
            }
        }

        /* synthetic */ JavaVersion(C7740a aVar) {
            this();
        }

        public boolean jdkTypeDuplicatesOwnerName() {
            return true;
        }

        public abstract Type newArrayType(Type type);

        public String typeName(Type type) {
            return Types.m7731e(type);
        }

        public final ImmutableList<Type> usedInGenericType(Type[] typeArr) {
            ImmutableList.C7470a builder = ImmutableList.builder();
            for (Type type : typeArr) {
                builder.mo8284a((ImmutableList.C7470a) usedInGenericType(type));
            }
            return builder.m8387a();
        }

        public abstract Type usedInGenericType(Type type);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$ParameterizedTypeImpl.class */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        public static final long serialVersionUID = 0;
        public final ImmutableList<Type> argumentsList;
        public final Type ownerType;
        public final Class<?> rawType;

        public ParameterizedTypeImpl(Type type, Class<?> cls, Type[] typeArr) {
            C4933n.m24795a(cls);
            C4933n.m24791a(typeArr.length == cls.getTypeParameters().length);
            Types.m7734b(typeArr, "type parameter");
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
            if (getRawType().equals(parameterizedType.getRawType())) {
                z = false;
                if (C4928k.m24808a(getOwnerType(), parameterizedType.getOwnerType())) {
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
            return Types.m7736b((Collection<Type>) this.argumentsList);
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
            if (this.ownerType != null && JavaVersion.CURRENT.jdkTypeDuplicatesOwnerName()) {
                sb.append(JavaVersion.CURRENT.typeName(this.ownerType));
                sb.append('.');
            }
            sb.append(this.rawType.getName());
            sb.append('<');
            sb.append(Types.f30897b.m24828a(C4983g0.m24723a((Iterable) this.argumentsList, Types.f30896a)));
            sb.append('>');
            return sb.toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$WildcardTypeImpl.class */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        public static final long serialVersionUID = 0;
        public final ImmutableList<Type> lowerBounds;
        public final ImmutableList<Type> upperBounds;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            Types.m7734b(typeArr, "lower bound for wildcard");
            Types.m7734b(typeArr2, "upper bound for wildcard");
            this.lowerBounds = JavaVersion.CURRENT.usedInGenericType(typeArr);
            this.upperBounds = JavaVersion.CURRENT.usedInGenericType(typeArr2);
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
            return Types.m7736b((Collection<Type>) this.lowerBounds);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return Types.m7736b((Collection<Type>) this.upperBounds);
        }

        public int hashCode() {
            return this.lowerBounds.hashCode() ^ this.upperBounds.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            AbstractC4978e1<Type> it = this.lowerBounds.iterator();
            while (it.hasNext()) {
                sb.append(" super ");
                sb.append(JavaVersion.CURRENT.typeName(it.next()));
            }
            for (Type type : Types.m7739b((Iterable<Type>) this.upperBounds)) {
                sb.append(" extends ");
                sb.append(JavaVersion.CURRENT.typeName(type));
            }
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.reflect.Types$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$a.class */
    public static final class C7740a implements AbstractC4920g<Type, String> {
        /* renamed from: a */
        public String apply(Type type) {
            return JavaVersion.CURRENT.typeName(type);
        }
    }

    /* renamed from: com.google.common.reflect.Types$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$b.class */
    public static final class C7741b extends AbstractC5085g {

        /* renamed from: b */
        public final /* synthetic */ AtomicReference f30898b;

        public C7741b(AtomicReference atomicReference) {
            this.f30898b = atomicReference;
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7729a(Class<?> cls) {
            this.f30898b.set(cls.getComponentType());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7728a(GenericArrayType genericArrayType) {
            this.f30898b.set(genericArrayType.getGenericComponentType());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7727a(TypeVariable<?> typeVariable) {
            this.f30898b.set(Types.m7735b(typeVariable.getBounds()));
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7726a(WildcardType wildcardType) {
            this.f30898b.set(Types.m7735b(wildcardType.getUpperBounds()));
        }
    }

    /* renamed from: com.google.common.reflect.Types$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$c.class */
    public static final class C7742c<X> {

        /* renamed from: a */
        public static final boolean f30899a = !C7742c.class.getTypeParameters()[0].equals(Types.m7746a(C7742c.class, "X", new Type[0]));
    }

    /* renamed from: com.google.common.reflect.Types$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$d.class */
    public static final class C7743d<D extends GenericDeclaration> {

        /* renamed from: a */
        public final D f30900a;

        /* renamed from: b */
        public final String f30901b;

        /* renamed from: c */
        public final ImmutableList<Type> f30902c;

        public C7743d(D d, String str, Type[] typeArr) {
            Types.m7734b(typeArr, "bound for type variable");
            C4933n.m24795a(d);
            this.f30900a = d;
            C4933n.m24795a(str);
            this.f30901b = str;
            this.f30902c = ImmutableList.copyOf(typeArr);
        }

        /* renamed from: a */
        public D m7725a() {
            return this.f30900a;
        }

        /* renamed from: b */
        public String m7724b() {
            return this.f30901b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            boolean z2 = true;
            if (C7742c.f30899a) {
                if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof C7744e)) {
                    return false;
                }
                C7743d dVar = ((C7744e) Proxy.getInvocationHandler(obj)).f30904a;
                if (!this.f30901b.equals(dVar.m7724b()) || !this.f30900a.equals(dVar.m7725a()) || !this.f30902c.equals(dVar.f30902c)) {
                    z2 = false;
                }
                return z2;
            } else if (!(obj instanceof TypeVariable)) {
                return false;
            } else {
                TypeVariable typeVariable = (TypeVariable) obj;
                if (!this.f30901b.equals(typeVariable.getName()) || !this.f30900a.equals(typeVariable.getGenericDeclaration())) {
                    z = false;
                }
                return z;
            }
        }

        public int hashCode() {
            return this.f30900a.hashCode() ^ this.f30901b.hashCode();
        }

        public String toString() {
            return this.f30901b;
        }
    }

    /* renamed from: com.google.common.reflect.Types$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/Types$e.class */
    public static final class C7744e implements InvocationHandler {

        /* renamed from: b */
        public static final ImmutableMap<String, Method> f30903b;

        /* renamed from: a */
        public final C7743d<?> f30904a;

        static {
            Method[] methods;
            ImmutableMap.C7476b builder = ImmutableMap.builder();
            for (Method method : C7743d.class.getMethods()) {
                if (method.getDeclaringClass().equals(C7743d.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException e) {
                    }
                    builder.mo8319a(method.getName(), method);
                }
            }
            f30903b = builder.mo8322a();
        }

        public C7744e(C7743d<?> dVar) {
            this.f30904a = dVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = f30903b.get(name);
            if (method2 != null) {
                try {
                    return method2.invoke(this.f30904a, objArr);
                } catch (InvocationTargetException e) {
                    throw e.getCause();
                }
            } else {
                throw new UnsupportedOperationException(name);
            }
        }
    }

    /* renamed from: a */
    public static Class<?> m7749a(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    /* renamed from: a */
    public static ParameterizedType m7748a(Class<?> cls, Type... typeArr) {
        return new ParameterizedTypeImpl(ClassOwnership.JVM_BEHAVIOR.getOwnerType(cls), cls, typeArr);
    }

    /* renamed from: a */
    public static ParameterizedType m7744a(Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return m7748a(cls, typeArr);
        }
        C4933n.m24795a(typeArr);
        C4933n.m24782a(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new ParameterizedTypeImpl(type, cls, typeArr);
    }

    /* renamed from: a */
    public static Type m7745a(Type type) {
        C4933n.m24795a(type);
        AtomicReference atomicReference = new AtomicReference();
        new C7741b(atomicReference).m24527a(type);
        return (Type) atomicReference.get();
    }

    /* renamed from: a */
    public static <D extends GenericDeclaration> TypeVariable<D> m7746a(D d, String str, Type... typeArr) {
        Type[] typeArr2 = typeArr;
        if (typeArr.length == 0) {
            typeArr2 = new Type[]{Object.class};
        }
        return m7738b(d, str, typeArr2);
    }

    /* renamed from: b */
    public static Iterable<Type> m7739b(Iterable<Type> iterable) {
        return C4983g0.m24722a((Iterable) iterable, Predicates.m8571a(Predicates.m8569a(Object.class)));
    }

    /* renamed from: b */
    public static Type m7737b(Type type) {
        if (!(type instanceof WildcardType)) {
            return JavaVersion.CURRENT.newArrayType(type);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        boolean z = true;
        C4933n.m24790a(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
        if (lowerBounds.length == 1) {
            return m7732d(m7737b(lowerBounds[0]));
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        if (upperBounds.length != 1) {
            z = false;
        }
        C4933n.m24790a(z, "Wildcard should have only one upper bound.");
        return m7733c(m7737b(upperBounds[0]));
    }

    /* renamed from: b */
    public static Type m7735b(Type[] typeArr) {
        for (Type type : typeArr) {
            Type a = m7745a(type);
            if (a != null) {
                if (a instanceof Class) {
                    Class cls = (Class) a;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return m7733c(a);
            }
        }
        return null;
    }

    /* renamed from: b */
    public static <D extends GenericDeclaration> TypeVariable<D> m7738b(D d, String str, Type[] typeArr) {
        return (TypeVariable) C5074c.m24556a(TypeVariable.class, new C7744e(new C7743d(d, str, typeArr)));
    }

    /* renamed from: b */
    public static void m7734b(Type[] typeArr, String str) {
        Class cls;
        for (Type type : typeArr) {
            if (type instanceof Class) {
                C4933n.m24781a(!cls.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    /* renamed from: b */
    public static Type[] m7736b(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[collection.size()]);
    }

    /* renamed from: c */
    public static WildcardType m7733c(Type type) {
        return new WildcardTypeImpl(new Type[0], new Type[]{type});
    }

    /* renamed from: d */
    public static WildcardType m7732d(Type type) {
        return new WildcardTypeImpl(new Type[]{type}, new Type[]{Object.class});
    }

    /* renamed from: e */
    public static String m7731e(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}

package com.google.common.reflect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.reflect.Types;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4922i;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4961b0;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC5017r;
import p131c.p161d.p266c.p273g.C5068a;
import p131c.p161d.p266c.p274h.AbstractC5071b;
import p131c.p161d.p266c.p274h.AbstractC5075d;
import p131c.p161d.p266c.p274h.AbstractC5076e;
import p131c.p161d.p266c.p274h.AbstractC5085g;
import p131c.p161d.p266c.p274h.C5077f;
/* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken.class */
public abstract class TypeToken<T> extends AbstractC5075d<T> implements Serializable {
    public static final long serialVersionUID = 3637540370352322684L;
    public transient C5077f covariantTypeResolver;
    public transient C5077f invariantTypeResolver;
    public final Type runtimeType;

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$ClassSet.class */
    public final class ClassSet extends TypeToken<T>.TypeSet {
        public static final long serialVersionUID = 0;
        public transient ImmutableSet<TypeToken<? super T>> classes;

        public ClassSet() {
            super();
        }

        public /* synthetic */ ClassSet(TypeToken typeToken, C7719a aVar) {
            this();
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().classes();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet, p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.classes;
            ImmutableSet<TypeToken<? super T>> immutableSet2 = immutableSet;
            if (immutableSet == null) {
                immutableSet2 = AbstractC5017r.m24631a(AbstractC7724f.f30891a.m7764a().m7763a((AbstractC7724f<TypeToken<?>>) TypeToken.this)).m24632a(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).m24628b();
                this.classes = immutableSet2;
            }
            return immutableSet2;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) AbstractC7724f.f30892b.m7764a().mo7754a(TypeToken.this.getRawTypes()));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$InterfaceSet.class */
    public final class InterfaceSet extends TypeToken<T>.TypeSet {
        public static final long serialVersionUID = 0;
        public final transient TypeToken<T>.TypeSet allTypes;
        public transient ImmutableSet<TypeToken<? super T>> interfaces;

        /* renamed from: com.google.common.reflect.TypeToken$InterfaceSet$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$InterfaceSet$a.class */
        public class C7716a implements AbstractC4934o<Class<?>> {
            public C7716a(InterfaceSet interfaceSet) {
            }

            /* renamed from: a */
            public boolean apply(Class<?> cls) {
                return cls.isInterface();
            }
        }

        public InterfaceSet(TypeToken<T>.TypeSet typeSet) {
            super();
            this.allTypes = typeSet;
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().interfaces();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet, p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.interfaces;
            ImmutableSet<TypeToken<? super T>> immutableSet2 = immutableSet;
            if (immutableSet == null) {
                immutableSet2 = AbstractC5017r.m24631a(this.allTypes).m24632a(TypeFilter.INTERFACE_ONLY).m24628b();
                this.interfaces = immutableSet2;
            }
            return immutableSet2;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return AbstractC5017r.m24631a(AbstractC7724f.f30892b.mo7754a(TypeToken.this.getRawTypes())).m24632a(new C7716a(this)).m24628b();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$SimpleTypeToken.class */
    public static final class SimpleTypeToken<T> extends TypeToken<T> {
        public static final long serialVersionUID = 0;

        public SimpleTypeToken(Type type) {
            super(type, null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$TypeFilter.class */
    public enum TypeFilter implements AbstractC4934o<TypeToken<?>> {
        IGNORE_TYPE_VARIABLE_OR_WILDCARD { // from class: com.google.common.reflect.TypeToken.TypeFilter.1
            public boolean apply(TypeToken<?> typeToken) {
                return !(typeToken.runtimeType instanceof TypeVariable) && !(typeToken.runtimeType instanceof WildcardType);
            }
        },
        INTERFACE_ONLY { // from class: com.google.common.reflect.TypeToken.TypeFilter.2
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        };

        /* synthetic */ TypeFilter(C7719a aVar) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$TypeSet.class */
    public class TypeSet extends AbstractC4961b0<TypeToken<? super T>> implements Serializable {
        public static final long serialVersionUID = 0;
        public transient ImmutableSet<TypeToken<? super T>> types;

        public TypeSet() {
        }

        public TypeToken<T>.TypeSet classes() {
            return new ClassSet(TypeToken.this, null);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.types;
            ImmutableSet<TypeToken<? super T>> immutableSet2 = immutableSet;
            if (immutableSet == null) {
                immutableSet2 = AbstractC5017r.m24631a(AbstractC7724f.f30891a.m7763a((AbstractC7724f<TypeToken<?>>) TypeToken.this)).m24632a(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).m24628b();
                this.types = immutableSet2;
            }
            return immutableSet2;
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new InterfaceSet(this);
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) AbstractC7724f.f30892b.mo7754a(TypeToken.this.getRawTypes()));
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$a.class */
    public class C7719a extends AbstractC5071b.C5073b<T> {
        public C7719a(Method method) {
            super(method);
        }

        @Override // p131c.p161d.p266c.p274h.C5070a
        /* renamed from: a */
        public TypeToken<T> mo7769a() {
            return TypeToken.this;
        }

        @Override // p131c.p161d.p266c.p274h.C5070a
        public String toString() {
            return mo7769a() + "." + super.toString();
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$b.class */
    public class C7720b extends AbstractC5071b.C5072a<T> {
        public C7720b(Constructor constructor) {
            super(constructor);
        }

        @Override // p131c.p161d.p266c.p274h.C5070a
        /* renamed from: a */
        public TypeToken<T> mo7769a() {
            return TypeToken.this;
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5071b.C5072a
        /* renamed from: b */
        public Type[] mo7768b() {
            C5077f invariantTypeResolver = TypeToken.this.getInvariantTypeResolver();
            Type[] b = super.mo7768b();
            invariantTypeResolver.m24542b(b);
            return b;
        }

        @Override // p131c.p161d.p266c.p274h.C5070a
        public String toString() {
            return mo7769a() + "(" + C4922i.m24824b(", ").m24825a((Object[]) mo7768b()) + ")";
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$c.class */
    public class C7721c extends AbstractC5085g {
        public C7721c() {
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7728a(GenericArrayType genericArrayType) {
            m24527a(genericArrayType.getGenericComponentType());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7767a(ParameterizedType parameterizedType) {
            m24527a(parameterizedType.getActualTypeArguments());
            m24527a(parameterizedType.getOwnerType());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7727a(TypeVariable<?> typeVariable) {
            throw new IllegalArgumentException(TypeToken.this.runtimeType + "contains a type variable and is not safe for the operation");
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7726a(WildcardType wildcardType) {
            m24527a(wildcardType.getLowerBounds());
            m24527a(wildcardType.getUpperBounds());
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$d.class */
    public class C7722d extends AbstractC5085g {

        /* renamed from: b */
        public final /* synthetic */ ImmutableSet.C7492a f30888b;

        public C7722d(TypeToken typeToken, ImmutableSet.C7492a aVar) {
            this.f30888b = aVar;
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7729a(Class<?> cls) {
            this.f30888b.mo8284a((ImmutableSet.C7492a) cls);
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7728a(GenericArrayType genericArrayType) {
            this.f30888b.mo8284a((ImmutableSet.C7492a) Types.m7749a((Class<?>) TypeToken.m7771of(genericArrayType.getGenericComponentType()).getRawType()));
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7767a(ParameterizedType parameterizedType) {
            this.f30888b.mo8284a((ImmutableSet.C7492a) ((Class) parameterizedType.getRawType()));
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7727a(TypeVariable<?> typeVariable) {
            m24527a(typeVariable.getBounds());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7726a(WildcardType wildcardType) {
            m24527a(wildcardType.getUpperBounds());
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$e.class */
    public static class C7723e {

        /* renamed from: a */
        public final Type[] f30889a;

        /* renamed from: b */
        public final boolean f30890b;

        public C7723e(Type[] typeArr, boolean z) {
            this.f30889a = typeArr;
            this.f30890b = z;
        }

        /* renamed from: a */
        public boolean m7766a(Type type) {
            for (Type type2 : this.f30889a) {
                boolean isSubtypeOf = TypeToken.m7771of(type2).isSubtypeOf(type);
                boolean z = this.f30890b;
                if (isSubtypeOf == z) {
                    return z;
                }
            }
            return !this.f30890b;
        }

        /* renamed from: b */
        public boolean m7765b(Type type) {
            TypeToken<?> of = TypeToken.m7771of(type);
            for (Type type2 : this.f30889a) {
                boolean isSubtypeOf = of.isSubtypeOf(type2);
                boolean z = this.f30890b;
                if (isSubtypeOf == z) {
                    return z;
                }
            }
            return !this.f30890b;
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$f.class */
    public static abstract class AbstractC7724f<K> {

        /* renamed from: a */
        public static final AbstractC7724f<TypeToken<?>> f30891a = new C7725a();

        /* renamed from: b */
        public static final AbstractC7724f<Class<?>> f30892b = new C7726b();

        /* renamed from: com.google.common.reflect.TypeToken$f$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$f$a.class */
        public static final class C7725a extends AbstractC7724f<TypeToken<?>> {
            public C7725a() {
                super(null);
            }

            /* renamed from: a */
            public Iterable<? extends TypeToken<?>> mo7753b(TypeToken<?> typeToken) {
                return typeToken.getGenericInterfaces();
            }

            /* renamed from: b  reason: avoid collision after fix types in other method */
            public Class<?> mo7752c(TypeToken<?> typeToken) {
                return typeToken.getRawType();
            }

            /* renamed from: c  reason: avoid collision after fix types in other method */
            public TypeToken<?> mo7751d(TypeToken<?> typeToken) {
                return typeToken.getGenericSuperclass();
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$f$b.class */
        public static final class C7726b extends AbstractC7724f<Class<?>> {
            public C7726b() {
                super(null);
            }

            /* renamed from: a */
            public Iterable<? extends Class<?>> mo7753b(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            /* renamed from: b  reason: avoid collision after fix types in other method */
            public Class<?> m7756b(Class<?> cls) {
                return cls;
            }

            /* renamed from: c  reason: avoid collision after fix types in other method */
            public Class<?> mo7751d(Class<?> cls) {
                return cls.getSuperclass();
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC7724f
            /* renamed from: c */
            public /* bridge */ /* synthetic */ Class mo7752c(Class<?> cls) {
                Class<?> cls2 = cls;
                m7756b(cls2);
                return cls2;
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$c */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$f$c.class */
        public class C7727c extends C7729e<K> {
            public C7727c(AbstractC7724f fVar, AbstractC7724f fVar2) {
                super(fVar2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.reflect.TypeToken.AbstractC7724f
            /* renamed from: a */
            public ImmutableList<K> mo7754a(Iterable<? extends K> iterable) {
                ImmutableList.C7470a builder = ImmutableList.builder();
                for (Object obj : iterable) {
                    if (!mo7752c(obj).isInterface()) {
                        builder.mo8284a((ImmutableList.C7470a) obj);
                    }
                }
                return super.mo7754a((Iterable) builder.m8387a());
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC7724f
            /* renamed from: b */
            public Iterable<? extends K> mo7753b(K k) {
                return ImmutableSet.m8349of();
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$d */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$f$d.class */
        public static final class C7728d extends Ordering<K> {

            /* renamed from: a */
            public final /* synthetic */ Comparator f30893a;

            /* renamed from: b */
            public final /* synthetic */ Map f30894b;

            public C7728d(Comparator comparator, Map map) {
                this.f30893a = comparator;
                this.f30894b = map;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Ordering, java.util.Comparator
            public int compare(K k, K k2) {
                return this.f30893a.compare(this.f30894b.get(k), this.f30894b.get(k2));
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$e */
        /* loaded from: classes2-dex2jar.jar:com/google/common/reflect/TypeToken$f$e.class */
        public static class C7729e<K> extends AbstractC7724f<K> {

            /* renamed from: c */
            public final AbstractC7724f<K> f30895c;

            public C7729e(AbstractC7724f<K> fVar) {
                super(null);
                this.f30895c = fVar;
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC7724f
            /* renamed from: c */
            public Class<?> mo7752c(K k) {
                return this.f30895c.mo7752c(k);
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC7724f
            /* renamed from: d */
            public K mo7751d(K k) {
                return this.f30895c.mo7751d(k);
            }
        }

        public AbstractC7724f() {
        }

        public /* synthetic */ AbstractC7724f(C7719a aVar) {
            this();
        }

        /* renamed from: a */
        public static <K, V> ImmutableList<K> m7761a(Map<K, V> map, Comparator<? super V> comparator) {
            return (ImmutableList<K>) new C7728d(comparator, map).immutableSortedCopy(map.keySet());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [com.google.common.reflect.TypeToken$f, com.google.common.reflect.TypeToken$f<K>] */
        /* JADX WARN: Type inference failed for: r9v1, types: [int] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* renamed from: a */
        public final int m7762a(K k, Map<? super K, Integer> map) {
            Integer num = map.get(k);
            if (num != null) {
                return num.intValue();
            }
            boolean isInterface = mo7752c(k).isInterface();
            int i = isInterface;
            for (T t : mo7753b(k)) {
                i = Math.max((int) i, m7762a(t, map));
            }
            Object d = mo7751d(k);
            int i2 = i;
            if (d != null) {
                i2 = Math.max((int) i, m7762a(d, map));
            }
            int i3 = i2 + 1;
            map.put(k, Integer.valueOf(i3));
            return i3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public ImmutableList<K> mo7754a(Iterable<? extends K> iterable) {
            HashMap b = Maps.m8133b();
            Iterator<? extends K> it = iterable.iterator();
            while (it.hasNext()) {
                m7762a((AbstractC7724f<K>) it.next(), (Map<? super AbstractC7724f<K>, Integer>) b);
            }
            return m7761a(b, Ordering.natural().reverse());
        }

        /* renamed from: a */
        public final ImmutableList<K> m7763a(K k) {
            return mo7754a((Iterable) ImmutableList.m8399of(k));
        }

        /* renamed from: a */
        public final AbstractC7724f<K> m7764a() {
            return new C7727c(this, this);
        }

        /* renamed from: b */
        public abstract Iterable<? extends K> mo7753b(K k);

        /* renamed from: c */
        public abstract Class<?> mo7752c(K k);

        /* renamed from: d */
        public abstract K mo7751d(K k);
    }

    public TypeToken() {
        Type capture = capture();
        this.runtimeType = capture;
        C4933n.m24772b(!(capture instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", capture);
    }

    public TypeToken(Class<?> cls) {
        Type capture = super.capture();
        if (capture instanceof Class) {
            this.runtimeType = capture;
        } else {
            this.runtimeType = C5077f.m24544b(cls).m24551a(capture);
        }
    }

    public TypeToken(Type type) {
        C4933n.m24795a(type);
        this.runtimeType = type;
    }

    public /* synthetic */ TypeToken(Type type, C7719a aVar) {
        this(type);
    }

    public static C7723e any(Type[] typeArr) {
        return new C7723e(typeArr, true);
    }

    private TypeToken<? super T> boundAsSuperclass(Type type) {
        TypeToken<?> of = m7771of(type);
        TypeToken<? super T> typeToken = (TypeToken<? super T>) of;
        if (of.getRawType().isInterface()) {
            typeToken = null;
        }
        return typeToken;
    }

    private ImmutableList<TypeToken<? super T>> boundsAsInterfaces(Type[] typeArr) {
        ImmutableList.C7470a builder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> of = m7771of(type);
            if (of.getRawType().isInterface()) {
                builder.mo8284a((ImmutableList.C7470a) of);
            }
        }
        return builder.m8387a();
    }

    public static Type canonicalizeTypeArg(TypeVariable<?> typeVariable, Type type) {
        return type instanceof WildcardType ? canonicalizeWildcardType(typeVariable, (WildcardType) type) : canonicalizeWildcardsInType(type);
    }

    public static WildcardType canonicalizeWildcardType(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] upperBounds;
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!any(bounds).m7766a(type)) {
                arrayList.add(canonicalizeWildcardsInType(type));
            }
        }
        return new Types.WildcardTypeImpl(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    public static ParameterizedType canonicalizeWildcardsInParameterizedType(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            actualTypeArguments[i] = canonicalizeTypeArg(typeParameters[i], actualTypeArguments[i]);
        }
        return Types.m7744a(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    public static Type canonicalizeWildcardsInType(Type type) {
        if (type instanceof ParameterizedType) {
            return canonicalizeWildcardsInParameterizedType((ParameterizedType) type);
        }
        Type type2 = type;
        if (type instanceof GenericArrayType) {
            type2 = Types.m7737b(canonicalizeWildcardsInType(((GenericArrayType) type).getGenericComponentType()));
        }
        return type2;
    }

    public static C7723e every(Type[] typeArr) {
        return new C7723e(typeArr, false);
    }

    private TypeToken<? extends T> getArraySubtype(Class<?> cls) {
        return (TypeToken<? extends T>) m7771of(newArrayClassOrGenericArrayType(getComponentType().getSubtype(cls.getComponentType()).runtimeType));
    }

    private TypeToken<? super T> getArraySupertype(Class<? super T> cls) {
        TypeToken<?> componentType = getComponentType();
        C4933n.m24792a(componentType, "%s isn't a super type of %s", cls, this);
        return (TypeToken<? super T>) m7771of(newArrayClassOrGenericArrayType(componentType.getSupertype(cls.getComponentType()).runtimeType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C5077f getCovariantTypeResolver() {
        C5077f fVar = this.covariantTypeResolver;
        C5077f fVar2 = fVar;
        if (fVar == null) {
            fVar2 = C5077f.m24544b(this.runtimeType);
            this.covariantTypeResolver = fVar2;
        }
        return fVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C5077f getInvariantTypeResolver() {
        C5077f fVar = this.invariantTypeResolver;
        C5077f fVar2 = fVar;
        if (fVar == null) {
            fVar2 = C5077f.m24541c(this.runtimeType);
            this.invariantTypeResolver = fVar2;
        }
        return fVar2;
    }

    private Type getOwnerTypeIfPresent() {
        Type type = this.runtimeType;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImmutableSet<Class<? super T>> getRawTypes() {
        ImmutableSet.C7492a builder = ImmutableSet.builder();
        new C7722d(this, builder).m24527a(this.runtimeType);
        return builder.mo8285a();
    }

    private TypeToken<? extends T> getSubtypeFromLowerBounds(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (TypeToken<? extends T>) m7771of(typeArr[0]).getSubtype(cls);
        }
        throw new IllegalArgumentException(cls + " isn't a subclass of " + this);
    }

    private TypeToken<? super T> getSupertypeFromUpperBounds(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> of = m7771of(type);
            if (of.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) of.getSupertype(cls);
            }
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    /* renamed from: is */
    private boolean m7773is(Type type, TypeVariable<?> typeVariable) {
        boolean z = true;
        if (this.runtimeType.equals(type)) {
            return true;
        }
        if (!(type instanceof WildcardType)) {
            return canonicalizeWildcardsInType(this.runtimeType).equals(canonicalizeWildcardsInType(type));
        }
        WildcardType canonicalizeWildcardType = canonicalizeWildcardType(typeVariable, (WildcardType) type);
        if (!every(canonicalizeWildcardType.getUpperBounds()).m7765b(this.runtimeType) || !every(canonicalizeWildcardType.getLowerBounds()).m7766a(this.runtimeType)) {
            z = false;
        }
        return z;
    }

    private boolean isOwnedBySubtypeOf(Type type) {
        Iterator<TypeToken<? super T>> it = getTypes().iterator();
        while (it.hasNext()) {
            Type ownerTypeIfPresent = it.next().getOwnerTypeIfPresent();
            if (ownerTypeIfPresent != null && m7771of(ownerTypeIfPresent).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    private boolean isSubtypeOfArrayType(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (!cls.isArray()) {
                return false;
            }
            return m7772of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        } else if (type instanceof GenericArrayType) {
            return m7771of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        } else {
            return false;
        }
    }

    private boolean isSubtypeOfParameterizedType(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = m7771of(parameterizedType).getRawType();
        boolean z = false;
        if (!someRawTypeIsSubclassOf(rawType)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < typeParameters.length; i++) {
            if (!m7771of(getCovariantTypeResolver().m24551a(typeParameters[i])).m7773is(actualTypeArguments[i], typeParameters[i])) {
                return false;
            }
        }
        if (Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || isOwnedBySubtypeOf(parameterizedType.getOwnerType())) {
            z = true;
        }
        return z;
    }

    private boolean isSupertypeOfArray(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            return !cls.isArray() ? cls.isAssignableFrom(Object[].class) : m7771of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        } else if (type instanceof GenericArrayType) {
            return m7771of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.runtimeType).getGenericComponentType());
        } else {
            return false;
        }
    }

    private boolean isWrapper() {
        return C5068a.m24564a().contains(this.runtimeType);
    }

    public static Type newArrayClassOrGenericArrayType(Type type) {
        return Types.JavaVersion.JAVA7.newArrayType(type);
    }

    /* renamed from: of */
    public static <T> TypeToken<T> m7772of(Class<T> cls) {
        return new SimpleTypeToken(cls);
    }

    /* renamed from: of */
    public static TypeToken<?> m7771of(Type type) {
        return new SimpleTypeToken(type);
    }

    private TypeToken<?> resolveSupertype(Type type) {
        TypeToken<?> of = m7771of(getCovariantTypeResolver().m24551a(type));
        of.covariantTypeResolver = this.covariantTypeResolver;
        of.invariantTypeResolver = this.invariantTypeResolver;
        return of;
    }

    private Type resolveTypeArgsForSubclass(Class<?> cls) {
        if ((this.runtimeType instanceof Class) && (cls.getTypeParameters().length == 0 || getRawType().getTypeParameters().length != 0)) {
            return cls;
        }
        TypeToken genericType = toGenericType(cls);
        return new C5077f().m24550a(genericType.getSupertype(getRawType()).runtimeType, this.runtimeType).m24551a(genericType.runtimeType);
    }

    private boolean someRawTypeIsSubclassOf(Class<?> cls) {
        AbstractC4978e1<Class<? super T>> it = getRawTypes().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static <T> TypeToken<? extends T> toGenericType(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) m7771of(Types.m7737b(toGenericType(cls.getComponentType()).runtimeType));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : toGenericType(cls.getEnclosingClass()).runtimeType;
        return (typeParameters.length > 0 || !(type == null || type == cls.getEnclosingClass())) ? (TypeToken<? extends T>) m7771of(Types.m7744a(type, (Class<?>) cls, (Type[]) typeParameters)) : m7772of((Class) cls);
    }

    public final AbstractC5071b<T, T> constructor(Constructor<?> constructor) {
        C4933n.m24781a(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new C7720b(constructor);
    }

    public boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return this.runtimeType.equals(((TypeToken) obj).runtimeType);
        }
        return false;
    }

    public final TypeToken<?> getComponentType() {
        Type a = Types.m7745a(this.runtimeType);
        if (a == null) {
            return null;
        }
        return m7771of(a);
    }

    public final ImmutableList<TypeToken<? super T>> getGenericInterfaces() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundsAsInterfaces(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return boundsAsInterfaces(((WildcardType) type).getUpperBounds());
        }
        ImmutableList.C7470a builder = ImmutableList.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            builder.mo8284a((ImmutableList.C7470a) resolveSupertype(type2));
        }
        return builder.m8387a();
    }

    public final TypeToken<? super T> getGenericSuperclass() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundAsSuperclass(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return boundAsSuperclass(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) resolveSupertype(genericSuperclass);
    }

    public final Class<? super T> getRawType() {
        return getRawTypes().iterator().next();
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        C4933n.m24782a(!(this.runtimeType instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.runtimeType;
        if (type instanceof WildcardType) {
            return getSubtypeFromLowerBounds(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return getArraySubtype(cls);
        }
        C4933n.m24781a(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        TypeToken<? extends T> typeToken = (TypeToken<? extends T>) m7771of(resolveTypeArgsForSubclass(cls));
        C4933n.m24781a(typeToken.isSubtypeOf((TypeToken<?>) this), "%s does not appear to be a subtype of %s", typeToken, this);
        return typeToken;
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        C4933n.m24781a(someRawTypeIsSubclassOf(cls), "%s is not a super class of %s", cls, this);
        Type type = this.runtimeType;
        return type instanceof TypeVariable ? getSupertypeFromUpperBounds(cls, ((TypeVariable) type).getBounds()) : type instanceof WildcardType ? getSupertypeFromUpperBounds(cls, ((WildcardType) type).getUpperBounds()) : cls.isArray() ? getArraySupertype(cls) : (TypeToken<? super T>) resolveSupertype(toGenericType(cls).runtimeType);
    }

    public final Type getType() {
        return this.runtimeType;
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public int hashCode() {
        return this.runtimeType.hashCode();
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.runtimeType;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSubtypeOf(Type type) {
        C4933n.m24795a(type);
        if (type instanceof WildcardType) {
            return any(((WildcardType) type).getLowerBounds()).m7765b(this.runtimeType);
        }
        Type type2 = this.runtimeType;
        if (type2 instanceof WildcardType) {
            return any(((WildcardType) type2).getUpperBounds()).m7766a(type);
        }
        boolean z = false;
        if (type2 instanceof TypeVariable) {
            if (type2.equals(type) || any(((TypeVariable) this.runtimeType).getBounds()).m7766a(type)) {
                z = true;
            }
            return z;
        } else if (type2 instanceof GenericArrayType) {
            return m7771of(type).isSupertypeOfArray((GenericArrayType) this.runtimeType);
        } else {
            if (type instanceof Class) {
                return someRawTypeIsSubclassOf((Class) type);
            }
            if (type instanceof ParameterizedType) {
                return isSubtypeOfParameterizedType((ParameterizedType) type);
            }
            if (type instanceof GenericArrayType) {
                return isSubtypeOfArrayType((GenericArrayType) type);
            }
            return false;
        }
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final boolean isSupertypeOf(Type type) {
        return m7771of(type).isSubtypeOf(getType());
    }

    public final AbstractC5071b<T, Object> method(Method method) {
        C4933n.m24781a(someRawTypeIsSubclassOf(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new C7719a(method);
    }

    public final TypeToken<T> rejectTypeVariables() {
        new C7721c().m24527a(this.runtimeType);
        return this;
    }

    public final TypeToken<?> resolveType(Type type) {
        C4933n.m24795a(type);
        return m7771of(getInvariantTypeResolver().m24551a(type));
    }

    public String toString() {
        return Types.m7731e(this.runtimeType);
    }

    public final TypeToken<T> unwrap() {
        return isWrapper() ? m7772of(C5068a.m24563a((Class) this.runtimeType)) : this;
    }

    public final <X> TypeToken<T> where(AbstractC5076e<X> eVar, TypeToken<X> typeToken) {
        return new SimpleTypeToken(new C5077f().m24548a(ImmutableMap.m8379of(new C5077f.C5082d(eVar.f17667a), typeToken.runtimeType)).m24551a(this.runtimeType));
    }

    public final <X> TypeToken<T> where(AbstractC5076e<X> eVar, Class<X> cls) {
        return where(eVar, m7772of((Class) cls));
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? m7772of(C5068a.m24561b((Class) this.runtimeType)) : this;
    }

    public Object writeReplace() {
        return m7771of(new C5077f().m24551a(this.runtimeType));
    }
}

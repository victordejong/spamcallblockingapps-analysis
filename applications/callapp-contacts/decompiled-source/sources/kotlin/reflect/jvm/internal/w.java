package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.m;
import kotlin.reflect.KProperty;
import kotlin.reflect.d;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.q;
import kotlin.reflect.s;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\b��\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0013\u0010#\u001a\u00020\u001b2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020'H\u0016J\u0015\u0010(\u001a\u00020��2\u0006\u0010)\u001a\u00020\u001bH��¢\u0006\u0002\b*J\b\u0010+\u001a\u00020,H\u0016R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR!\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000f\u0010\fR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0017X\u0082\u0004¢\u0006\b\n��\u0012\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001cR\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b \u0010!¨\u0006-"}, d2 = {"Lkotlin/reflect/jvm/internal/KTypeImpl;", "Lkotlin/jvm/internal/KTypeBase;", "type", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "computeJavaType", "Lkotlin/Function0;", "Ljava/lang/reflect/Type;", "(Lorg/jetbrains/kotlin/types/KotlinType;Lkotlin/jvm/functions/Function0;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "arguments", "Lkotlin/reflect/KTypeProjection;", "getArguments", "arguments$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "classifier", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "classifier$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "getComputeJavaType$annotations", "()V", "isMarkedNullable", "", "()Z", "javaType", "getJavaType", "()Ljava/lang/reflect/Type;", "getType", "()Lorg/jetbrains/kotlin/types/KotlinType;", "convert", "equals", "other", "", "hashCode", "", "makeNullableAsSpecified", "nullable", "makeNullableAsSpecified$kotlin_reflection", "toString", "", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w.class */
public final class w implements q {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty[] f38614a = {ac.a(new aa(ac.b(w.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), ac.a(new aa(ac.b(w.class), "arguments", "getArguments()Ljava/util/List;"))};

    /* renamed from: b  reason: collision with root package name */
    public final KotlinType f38615b;

    /* renamed from: c  reason: collision with root package name */
    private final ad.a<Type> f38616c;

    /* renamed from: d  reason: collision with root package name */
    private final ad.a f38617d;
    private final ad.a e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/KTypeProjection;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$a.class */
    static final class a extends r implements Function0<List<? extends kotlin.reflect.q>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0 f38619b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<no name provided>", "Ljava/lang/reflect/Type;", "invoke", "kotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$a$a.class */
        static final class C0724a extends r implements Function0<Type> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f38620a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a f38621b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Lazy f38622c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ KProperty f38623d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0724a(int i, a aVar, Lazy lazy, KProperty kProperty) {
                super(0);
                this.f38620a = i;
                this.f38621b = aVar;
                this.f38622c = lazy;
                this.f38623d = kProperty;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Type invoke() {
                Type am_ = w.this.am_();
                if (am_ instanceof Class) {
                    Class cls = (Class) am_;
                    Class componentType = cls.isArray() ? cls.getComponentType() : Object.class;
                    p.b(componentType, "if (javaType.isArray) ja…Type else Any::class.java");
                    return componentType;
                } else if (am_ instanceof GenericArrayType) {
                    if (this.f38620a == 0) {
                        Type genericComponentType = ((GenericArrayType) am_).getGenericComponentType();
                        p.b(genericComponentType, "javaType.genericComponentType");
                        return genericComponentType;
                    }
                    throw new ab("Array type has been queried for a non-0th argument: " + w.this);
                } else if (am_ instanceof ParameterizedType) {
                    Type type = (Type) ((List) this.f38622c.a()).get(this.f38620a);
                    if (type instanceof WildcardType) {
                        WildcardType wildcardType = (WildcardType) type;
                        Type[] lowerBounds = wildcardType.getLowerBounds();
                        p.b(lowerBounds, "argument.lowerBounds");
                        type = (Type) i.d(lowerBounds);
                        if (type == null) {
                            Type[] upperBounds = wildcardType.getUpperBounds();
                            p.b(upperBounds, "argument.upperBounds");
                            type = (Type) i.c(upperBounds);
                        }
                    }
                    p.b(type, "if (argument !is Wildcar…ument.upperBounds.first()");
                    return type;
                } else {
                    throw new ab("Non-generic type has been queried for arguments: " + w.this);
                }
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Ljava/lang/reflect/Type;", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$a$b.class */
        static final class b extends r implements Function0<List<? extends Type>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends Type> invoke() {
                Type am_ = w.this.am_();
                p.a(am_);
                return kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.a(am_);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Function0 function0) {
            super(0);
            this.f38619b = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.q> invoke() {
            kotlin.reflect.q qVar;
            List<TypeProjection> arguments = w.this.f38615b.getArguments();
            if (arguments.isEmpty()) {
                return z.f36608a;
            }
            Lazy a2 = h.a(l.PUBLICATION, new b());
            List<TypeProjection> list = arguments;
            ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
            int i = 0;
            for (Object obj : list) {
                if (i < 0) {
                    n.a();
                }
                TypeProjection typeProjection = (TypeProjection) obj;
                if (typeProjection.isStarProjection()) {
                    q.a aVar = kotlin.reflect.q.f38634d;
                    qVar = kotlin.reflect.q.f38633c;
                } else {
                    KotlinType type = typeProjection.getType();
                    p.b(type, "typeProjection.type");
                    C0724a aVar2 = null;
                    if (this.f38619b != null) {
                        aVar2 = new C0724a(i, this, a2, null);
                    }
                    w wVar = new w(type, aVar2);
                    int i2 = x.f38626a[typeProjection.getProjectionKind().ordinal()];
                    if (i2 == 1) {
                        q.a aVar3 = kotlin.reflect.q.f38634d;
                        w type2 = wVar;
                        p.d(type2, "type");
                        qVar = new kotlin.reflect.q(s.INVARIANT, type2);
                    } else if (i2 == 2) {
                        q.a aVar4 = kotlin.reflect.q.f38634d;
                        w type3 = wVar;
                        p.d(type3, "type");
                        qVar = new kotlin.reflect.q(s.IN, type3);
                    } else if (i2 == 3) {
                        q.a aVar5 = kotlin.reflect.q.f38634d;
                        w type4 = wVar;
                        p.d(type4, "type");
                        qVar = new kotlin.reflect.q(s.OUT, type4);
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                }
                arrayList.add(qVar);
                i++;
            }
            return arrayList;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlin/reflect/KClassifier;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$b.class */
    static final class b extends r implements Function0<d> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ d invoke() {
            w wVar = w.this;
            return wVar.a(wVar.f38615b);
        }
    }

    public w(KotlinType type, Function0<? extends Type> function0) {
        p.d(type, "type");
        this.f38615b = type;
        ad.a<Type> aVar = null;
        aVar = (ad.a) (!(function0 instanceof ad.a) ? null : function0);
        if (aVar == null && function0 != null) {
            aVar = ad.b(function0);
        }
        this.f38616c = aVar;
        this.f38617d = ad.b(new b());
        this.e = ad.b(new a(function0));
    }

    public /* synthetic */ w(KotlinType kotlinType, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kotlinType, (i & 2) != 0 ? null : function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final d a(KotlinType kotlinType) {
        KotlinType type;
        g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            Class<?> a2 = aj.a((kotlin.reflect.jvm.internal.impl.descriptors.d) declarationDescriptor);
            if (a2 == null) {
                return null;
            }
            if (a2.isArray()) {
                TypeProjection typeProjection = (TypeProjection) n.j((List<? extends Object>) kotlinType.getArguments());
                if (typeProjection == null || (type = typeProjection.getType()) == null) {
                    return new h(a2);
                }
                p.b(type, "type.arguments.singleOrN…return KClassImpl(jClass)");
                d a3 = a(type);
                if (a3 != null) {
                    return new h(kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.g(kotlin.jvm.a.a(kotlin.reflect.jvm.a.a(a3))));
                }
                throw new ab("Cannot determine classifier for array element type: ".concat(String.valueOf(this)));
            } else if (TypeUtils.isNullableType(kotlinType)) {
                return new h(a2);
            } else {
                Class<?> c2 = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.c(a2);
                if (c2 == null) {
                    c2 = a2;
                }
                return new h(c2);
            }
        } else if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return new y(null, (TypeParameterDescriptor) declarationDescriptor);
        } else {
            if (!(declarationDescriptor instanceof ax)) {
                return null;
            }
            throw new m("An operation is not implemented: ".concat("Type alias classifiers are not yet supported"));
        }
    }

    @Override // kotlin.reflect.KType
    public final d a() {
        return (d) this.f38617d.invoke();
    }

    @Override // kotlin.jvm.internal.q
    public final Type am_() {
        ad.a<Type> aVar = this.f38616c;
        if (aVar != null) {
            return aVar.invoke();
        }
        return null;
    }

    @Override // kotlin.reflect.KType
    public final List<kotlin.reflect.q> b() {
        return (List) this.e.invoke();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof w) && p.a(this.f38615b, ((w) obj).f38615b);
    }

    @Override // kotlin.reflect.b
    public final List<Annotation> getAnnotations() {
        return aj.a((kotlin.reflect.jvm.internal.impl.descriptors.a.a) this.f38615b);
    }

    public final int hashCode() {
        return this.f38615b.hashCode();
    }

    public final String toString() {
        af afVar = af.f36874a;
        return af.a(this.f38615b);
    }
}

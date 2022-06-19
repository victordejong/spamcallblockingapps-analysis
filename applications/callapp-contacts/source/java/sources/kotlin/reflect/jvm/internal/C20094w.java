package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;
import kotlin.C18399h;
import kotlin.C18537m;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18525q;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.AbstractC18552d;
import kotlin.reflect.C20112q;
import kotlin.reflect.EnumC20115s;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.C18568a;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\b��\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0013\u0010#\u001a\u00020\u001b2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020'H\u0016J\u0015\u0010(\u001a\u00020��2\u0006\u0010)\u001a\u00020\u001bH��¢\u0006\u0002\b*J\b\u0010+\u001a\u00020,H\u0016R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR!\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000f\u0010\fR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0017X\u0082\u0004¢\u0006\b\n��\u0012\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001cR\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b \u0010!¨\u0006-"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KTypeImpl;", "Lkotlin/jvm/internal/KTypeBase;", "type", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "computeJavaType", "Lkotlin/Function0;", "Ljava/lang/reflect/Type;", "(Lorg/jetbrains/kotlin/types/KotlinType;Lkotlin/jvm/functions/Function0;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "arguments", "Lkotlin/reflect/KTypeProjection;", "getArguments", "arguments$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "classifier", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "classifier$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "getComputeJavaType$annotations", "()V", "isMarkedNullable", "", "()Z", "javaType", "getJavaType", "()Ljava/lang/reflect/Type;", "getType", "()Lorg/jetbrains/kotlin/types/KotlinType;", "convert", "equals", "other", "", "hashCode", "", "makeNullableAsSpecified", "nullable", "makeNullableAsSpecified$kotlin_reflection", "toString", "", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w.class */
public final class C20094w implements AbstractC18525q {

    /* renamed from: a */
    static final /* synthetic */ KProperty[] f66487a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20094w.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20094w.class), "arguments", "getArguments()Ljava/util/List;"))};

    /* renamed from: b */
    public final KotlinType f66488b;

    /* renamed from: c */
    private final C18622ad.C18623a<Type> f66489c;

    /* renamed from: d */
    private final C18622ad.C18623a f66490d;

    /* renamed from: e */
    private final C18622ad.C18623a f66491e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/KTypeProjection;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$a.class */
    public static final class C20095a extends AbstractC18526r implements Function0<List<? extends C20112q>> {

        /* renamed from: b */
        final /* synthetic */ Function0 f66493b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m4298d2 = {"<no name provided>", "Ljava/lang/reflect/Type;", "invoke", "kotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.w$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$a$a.class */
        static final class C20096a extends AbstractC18526r implements Function0<Type> {

            /* renamed from: a */
            final /* synthetic */ int f66494a;

            /* renamed from: b */
            final /* synthetic */ C20095a f66495b;

            /* renamed from: c */
            final /* synthetic */ Lazy f66496c;

            /* renamed from: d */
            final /* synthetic */ KProperty f66497d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20096a(int i, C20095a c20095a, Lazy lazy, KProperty kProperty) {
                super(0);
                this.f66494a = i;
                this.f66495b = c20095a;
                this.f66496c = lazy;
                this.f66497d = kProperty;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Type invoke() {
                Type am_ = C20094w.this.am_();
                if (am_ instanceof Class) {
                    Class cls = (Class) am_;
                    Class componentType = cls.isArray() ? cls.getComponentType() : Object.class;
                    C18524p.m3843b(componentType, "if (javaType.isArray) ja…Type else Any::class.java");
                    return componentType;
                } else if (am_ instanceof GenericArrayType) {
                    if (this.f66494a == 0) {
                        Type genericComponentType = ((GenericArrayType) am_).getGenericComponentType();
                        C18524p.m3843b(genericComponentType, "javaType.genericComponentType");
                        return genericComponentType;
                    }
                    throw new C18620ab("Array type has been queried for a non-0th argument: " + C20094w.this);
                } else if (!(am_ instanceof ParameterizedType)) {
                    throw new C18620ab("Non-generic type has been queried for arguments: " + C20094w.this);
                } else {
                    Type type = (Type) ((List) this.f66496c.mo1102a()).get(this.f66494a);
                    if (type instanceof WildcardType) {
                        WildcardType wildcardType = (WildcardType) type;
                        Type[] lowerBounds = wildcardType.getLowerBounds();
                        C18524p.m3843b(lowerBounds, "argument.lowerBounds");
                        type = (Type) C18273i.m4188d(lowerBounds);
                        if (type == null) {
                            Type[] upperBounds = wildcardType.getUpperBounds();
                            C18524p.m3843b(upperBounds, "argument.upperBounds");
                            type = (Type) C18273i.m4189c(upperBounds);
                        }
                    }
                    C18524p.m3843b(type, "if (argument !is Wildcar…ument.upperBounds.first()");
                    return type;
                }
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "Ljava/lang/reflect/Type;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.w$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$a$b.class */
        static final class C20097b extends AbstractC18526r implements Function0<List<? extends Type>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20097b() {
                super(0);
                C20095a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends Type> invoke() {
                Type am_ = C20094w.this.am_();
                C18524p.m3851a(am_);
                return C19088b.m2658a(am_);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20095a(Function0 function0) {
            super(0);
            C20094w.this = r4;
            this.f66493b = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends C20112q> invoke() {
            C20112q c20112q;
            List<TypeProjection> arguments = C20094w.this.f66488b.getArguments();
            if (arguments.isEmpty()) {
                return C18297z.f63400a;
            }
            Lazy a = C18399h.m3896a(EnumC18536l.PUBLICATION, new C20097b());
            List<TypeProjection> list = arguments;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            int i = 0;
            for (Object obj : list) {
                if (i < 0) {
                    C18282n.m4175a();
                }
                TypeProjection typeProjection = (TypeProjection) obj;
                if (typeProjection.isStarProjection()) {
                    C20112q.C20113a c20113a = C20112q.f66508d;
                    c20112q = C20112q.f66507c;
                } else {
                    KotlinType type = typeProjection.getType();
                    C18524p.m3843b(type, "typeProjection.type");
                    C20096a c20096a = null;
                    if (this.f66493b != null) {
                        c20096a = new C20096a(i, this, a, null);
                    }
                    C20094w c20094w = new C20094w(type, c20096a);
                    int i2 = C20099x.f66500a[typeProjection.getProjectionKind().ordinal()];
                    if (i2 == 1) {
                        C20112q.C20113a c20113a2 = C20112q.f66508d;
                        C20094w type2 = c20094w;
                        C18524p.m3840d(type2, "type");
                        c20112q = new C20112q(EnumC20115s.INVARIANT, type2);
                    } else if (i2 == 2) {
                        C20112q.C20113a c20113a3 = C20112q.f66508d;
                        C20094w type3 = c20094w;
                        C18524p.m3840d(type3, "type");
                        c20112q = new C20112q(EnumC20115s.IN, type3);
                    } else if (i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    } else {
                        C20112q.C20113a c20113a4 = C20112q.f66508d;
                        C20094w type4 = c20094w;
                        C18524p.m3840d(type4, "type");
                        c20112q = new C20112q(EnumC20115s.OUT, type4);
                    }
                }
                arrayList.add(c20112q);
                i++;
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/KClassifier;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.w$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/w$b.class */
    public static final class C20098b extends AbstractC18526r implements Function0<AbstractC18552d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20098b() {
            super(0);
            C20094w.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC18552d invoke() {
            C20094w c20094w = C20094w.this;
            return c20094w.m1125a(c20094w.f66488b);
        }
    }

    public C20094w(KotlinType type, Function0<? extends Type> function0) {
        C18524p.m3840d(type, "type");
        this.f66488b = type;
        C18622ad.C18623a<Type> c18623a = (C18622ad.C18623a) (!(function0 instanceof C18622ad.C18623a) ? null : function0);
        if (c18623a == null) {
            c18623a = null;
            if (function0 != null) {
                c18623a = C18622ad.m3795b(function0);
            }
        }
        this.f66489c = c18623a;
        this.f66490d = C18622ad.m3795b(new C20098b());
        this.f66491e = C18622ad.m3795b(new C20095a(function0));
    }

    public /* synthetic */ C20094w(KotlinType kotlinType, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kotlinType, (i & 2) != 0 ? null : function0);
    }

    /* renamed from: a */
    public final AbstractC18552d m1125a(KotlinType kotlinType) {
        KotlinType type;
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (!(declarationDescriptor instanceof AbstractC19070d)) {
            if (declarationDescriptor instanceof TypeParameterDescriptor) {
                return new C20100y(null, (TypeParameterDescriptor) declarationDescriptor);
            }
            if (declarationDescriptor instanceof AbstractC19033ax) {
                throw new C18537m("An operation is not implemented: ".concat("Type alias classifiers are not yet supported"));
            }
            return null;
        }
        Class<?> m3758a = C18635aj.m3758a((AbstractC19070d) declarationDescriptor);
        if (m3758a == null) {
            return null;
        }
        if (!m3758a.isArray()) {
            if (TypeUtils.isNullableType(kotlinType)) {
                return new C18670h(m3758a);
            }
            Class<?> m2656c = C19088b.m2656c(m3758a);
            if (m2656c == null) {
                m2656c = m3758a;
            }
            return new C18670h(m2656c);
        }
        TypeProjection typeProjection = (TypeProjection) C18282n.m4113j((List<? extends Object>) kotlinType.getArguments());
        if (typeProjection == null || (type = typeProjection.getType()) == null) {
            return new C18670h(m3758a);
        }
        C18524p.m3843b(type, "type.arguments.singleOrN…return KClassImpl(jClass)");
        AbstractC18552d m1125a = m1125a(type);
        if (m1125a == null) {
            throw new C18620ab("Cannot determine classifier for array element type: ".concat(String.valueOf(this)));
        }
        return new C18670h(C19088b.m2652g(C18458a.m3893a(C18568a.m3826a(m1125a))));
    }

    @Override // kotlin.reflect.KType
    /* renamed from: a */
    public final AbstractC18552d mo1126a() {
        return (AbstractC18552d) this.f66490d.invoke();
    }

    @Override // kotlin.jvm.internal.AbstractC18525q
    public final Type am_() {
        C18622ad.C18623a<Type> c18623a = this.f66489c;
        if (c18623a != null) {
            return c18623a.invoke();
        }
        return null;
    }

    @Override // kotlin.reflect.KType
    /* renamed from: b */
    public final List<C20112q> mo1123b() {
        return (List) this.f66491e.invoke();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C20094w) && C18524p.m3850a(this.f66488b, ((C20094w) obj).f66488b);
    }

    @Override // kotlin.reflect.AbstractC18550b
    public final List<Annotation> getAnnotations() {
        return C18635aj.m3761a((AbstractC18975a) this.f66488b);
    }

    public final int hashCode() {
        return this.f66488b.hashCode();
    }

    public final String toString() {
        C18628af c18628af = C18628af.f63696a;
        return C18628af.m3778a(this.f66488b);
    }
}

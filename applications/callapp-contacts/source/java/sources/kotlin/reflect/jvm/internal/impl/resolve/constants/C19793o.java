package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.o */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o.class */
public final class C19793o extends AbstractC19781g<AbstractC19795b> {

    /* renamed from: a */
    public static final C19794a f65974a = new C19794a(null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.o$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$a.class */
    public static final class C19794a {
        private C19794a() {
        }

        public /* synthetic */ C19794a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19781g<?> m1486a(KotlinType argumentType) {
            C18524p.m3840d(argumentType, "argumentType");
            if (KotlinTypeKt.isError(argumentType)) {
                return null;
            }
            int i = 0;
            KotlinType kotlinType = argumentType;
            while (AbstractC18940g.m2815b(kotlinType)) {
                kotlinType = ((TypeProjection) C18282n.m4115i((List<? extends Object>) kotlinType.getArguments())).getType();
                C18524p.m3843b(kotlinType, "type.arguments.single().type");
                i++;
            }
            AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof AbstractC19070d) {
                C18960a m1532a = C19756a.m1532a(declarationDescriptor);
                return m1532a == null ? new C19793o(new AbstractC19795b.C19796a(argumentType)) : new C19793o(m1532a, i);
            } else if (!(declarationDescriptor instanceof TypeParameterDescriptor)) {
                return null;
            } else {
                C18960a m2754a = C18960a.m2754a(C18954j.C18955a.f64647b.m2730c());
                C18524p.m3843b(m2754a, "topLevel(StandardNames.FqNames.any.toSafe())");
                return new C19793o(m2754a, 0);
            }
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.o$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$b.class */
    public static abstract class AbstractC19795b {

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.o$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a.class */
        public static final class C19796a extends AbstractC19795b {

            /* renamed from: a */
            public final KotlinType f65975a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19796a(KotlinType type) {
                super(null);
                C18524p.m3840d(type, "type");
                this.f65975a = type;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C19796a) && C18524p.m3850a(this.f65975a, ((C19796a) obj).f65975a);
            }

            public final int hashCode() {
                return this.f65975a.hashCode();
            }

            public final String toString() {
                return "LocalClass(type=" + this.f65975a + ')';
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.o$b$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b.class */
        public static final class C19797b extends AbstractC19795b {

            /* renamed from: a */
            public final C19780f f65976a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19797b(C19780f value) {
                super(null);
                C18524p.m3840d(value, "value");
                this.f65976a = value;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C19797b) && C18524p.m3850a(this.f65976a, ((C19797b) obj).f65976a);
            }

            public final int hashCode() {
                return this.f65976a.hashCode();
            }

            public final String toString() {
                return "NormalClass(value=" + this.f65976a + ')';
            }
        }

        private AbstractC19795b() {
        }

        public /* synthetic */ AbstractC19795b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C19793o(C18960a classId, int i) {
        this(new C19780f(classId, i));
        C18524p.m3840d(classId, "classId");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C19793o(C19780f value) {
        this(new AbstractC19795b.C19797b(value));
        C18524p.m3840d(value, "value");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19793o(AbstractC19795b value) {
        super(value);
        C18524p.m3840d(value, "value");
    }

    /* renamed from: b */
    private KotlinType m1487b(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        AbstractC19795b a = mo1489a();
        if (a instanceof AbstractC19795b.C19796a) {
            return ((AbstractC19795b.C19796a) mo1489a()).f65975a;
        }
        if (!(a instanceof AbstractC19795b.C19797b)) {
            throw new NoWhenBranchMatchedException();
        }
        C19780f c19780f = ((AbstractC19795b.C19797b) mo1489a()).f65976a;
        C18960a c18960a = c19780f.f65964a;
        int i = c19780f.f65965b;
        AbstractC19070d m2497b = C19216v.m2497b(module, c18960a);
        if (m2497b == null) {
            SimpleType createErrorType = ErrorUtils.createErrorType("Unresolved type: " + c18960a + " (arrayDimensions=" + i + ')');
            C18524p.m3843b(createErrorType, "createErrorType(\"Unresolved type: $classId (arrayDimensions=$arrayDimensions)\")");
            return createErrorType;
        }
        SimpleType defaultType = m2497b.getDefaultType();
        C18524p.m3843b(defaultType, "descriptor.defaultType");
        Object replaceArgumentsWithStarProjections = TypeUtilsKt.replaceArgumentsWithStarProjections(defaultType);
        for (int i2 = 0; i2 < i; i2++) {
            replaceArgumentsWithStarProjections = module.getBuiltIns().m2823a(Variance.INVARIANT, (KotlinType) replaceArgumentsWithStarProjections);
            C18524p.m3843b(replaceArgumentsWithStarProjections, "module.builtIns.getArrayType(Variance.INVARIANT, type)");
        }
        return (KotlinType) replaceArgumentsWithStarProjections;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
        AbstractC19070d m2830a = module.getBuiltIns().m2830a(C18954j.C18955a.f64624ad.m2730c());
        if (m2830a == null) {
            AbstractC18940g.m2819b(20);
        }
        C18524p.m3843b(m2830a, "module.builtIns.kClass");
        return KotlinTypeFactory.simpleNotNullType(m2705a, m2830a, C18282n.m4176a(new TypeProjectionImpl(m1487b(module))));
    }
}

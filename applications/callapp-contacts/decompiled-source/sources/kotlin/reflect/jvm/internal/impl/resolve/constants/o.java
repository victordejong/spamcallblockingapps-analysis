package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o.class */
public final class o extends g<b> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38259a = new a(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static g<?> a(KotlinType argumentType) {
            p.d(argumentType, "argumentType");
            if (KotlinTypeKt.isError(argumentType)) {
                return null;
            }
            int i = 0;
            KotlinType kotlinType = argumentType;
            while (g.b(kotlinType)) {
                kotlinType = ((TypeProjection) n.i((List<? extends Object>) kotlinType.getArguments())).getType();
                p.b(kotlinType, "type.arguments.single().type");
                i++;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof d) {
                kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(declarationDescriptor);
                return a2 == null ? new o(new b.a(argumentType)) : new o(a2, i);
            } else if (!(declarationDescriptor instanceof TypeParameterDescriptor)) {
                return null;
            } else {
                kotlin.reflect.jvm.internal.impl.c.a a3 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.f37321b.c());
                p.b(a3, "topLevel(StandardNames.FqNames.any.toSafe())");
                return new o(a3, 0);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$b.class */
    public static abstract class b {

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a.class */
        public static final class a extends b {

            /* renamed from: a  reason: collision with root package name */
            public final KotlinType f38260a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(KotlinType type) {
                super(null);
                p.d(type, "type");
                this.f38260a = type;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof a) && p.a(this.f38260a, ((a) obj).f38260a);
            }

            public final int hashCode() {
                return this.f38260a.hashCode();
            }

            public final String toString() {
                return "LocalClass(type=" + this.f38260a + ')';
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.o$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b.class */
        public static final class C0709b extends b {

            /* renamed from: a  reason: collision with root package name */
            public final f f38261a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0709b(f value) {
                super(null);
                p.d(value, "value");
                this.f38261a = value;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0709b) && p.a(this.f38261a, ((C0709b) obj).f38261a);
            }

            public final int hashCode() {
                return this.f38261a.hashCode();
            }

            public final String toString() {
                return "NormalClass(value=" + this.f38261a + ')';
            }
        }

        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(kotlin.reflect.jvm.internal.impl.c.a classId, int i) {
        this(new f(classId, i));
        p.d(classId, "classId");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(f value) {
        this(new b.C0709b(value));
        p.d(value, "value");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(b value) {
        super(value);
        p.d(value, "value");
    }

    private KotlinType b(ab module) {
        p.d(module, "module");
        b a2 = a();
        if (a2 instanceof b.a) {
            return ((b.a) a()).f38260a;
        }
        if (a2 instanceof b.C0709b) {
            f fVar = ((b.C0709b) a()).f38261a;
            kotlin.reflect.jvm.internal.impl.c.a aVar = fVar.f38249a;
            int i = fVar.f38250b;
            d b2 = v.b(module, aVar);
            if (b2 == null) {
                SimpleType createErrorType = ErrorUtils.createErrorType("Unresolved type: " + aVar + " (arrayDimensions=" + i + ')');
                p.b(createErrorType, "createErrorType(\"Unresolved type: $classId (arrayDimensions=$arrayDimensions)\")");
                return createErrorType;
            }
            SimpleType defaultType = b2.getDefaultType();
            p.b(defaultType, "descriptor.defaultType");
            KotlinType replaceArgumentsWithStarProjections = TypeUtilsKt.replaceArgumentsWithStarProjections(defaultType);
            for (int i2 = 0; i2 < i; i2++) {
                replaceArgumentsWithStarProjections = module.getBuiltIns().a(Variance.INVARIANT, replaceArgumentsWithStarProjections);
                p.b(replaceArgumentsWithStarProjections, "module.builtIns.getArrayType(Variance.INVARIANT, type)");
            }
            return replaceArgumentsWithStarProjections;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final KotlinType a(ab module) {
        p.d(module, "module");
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        kotlin.reflect.jvm.internal.impl.descriptors.a.g a2 = g.a.a();
        d a3 = module.getBuiltIns().a(j.a.ad.c());
        if (a3 == null) {
            kotlin.reflect.jvm.internal.impl.builtins.g.b(20);
        }
        p.b(a3, "module.builtIns.kClass");
        return KotlinTypeFactory.simpleNotNullType(a2, a3, n.a(new TypeProjectionImpl(b(module))));
    }
}

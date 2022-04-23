package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.e.f;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/FlexibleTypeImpl.class */
public final class FlexibleTypeImpl extends FlexibleType implements CustomTypeVariable {
    public static final Companion Companion = new Companion(null);
    public static boolean RUN_SLOW_ASSERTIONS;
    private boolean assertionsDone;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/FlexibleTypeImpl$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleTypeImpl(SimpleType lowerBound, SimpleType upperBound) {
        super(lowerBound, upperBound);
        p.d(lowerBound, "lowerBound");
        p.d(upperBound, "upperBound");
    }

    private final void runAssertions() {
        if (RUN_SLOW_ASSERTIONS && !this.assertionsDone) {
            this.assertionsDone = true;
            boolean isFlexible = FlexibleTypesKt.isFlexible(getLowerBound());
            if (!x.f38657a || (!isFlexible)) {
                boolean isFlexible2 = FlexibleTypesKt.isFlexible(getUpperBound());
                if (!x.f38657a || (!isFlexible2)) {
                    boolean a2 = p.a(getLowerBound(), getUpperBound());
                    if (!x.f38657a || (true ^ a2)) {
                        boolean isSubtypeOf = KotlinTypeChecker.DEFAULT.isSubtypeOf(getLowerBound(), getUpperBound());
                        if (x.f38657a && !isSubtypeOf) {
                            throw new AssertionError("Lower bound " + getLowerBound() + " of a flexible type must be a subtype of the upper bound " + getUpperBound());
                        }
                        return;
                    }
                    throw new AssertionError("Lower and upper bounds are equal: " + getLowerBound() + " == " + getUpperBound());
                }
                throw new AssertionError(p.a("Upper bound of a flexible type can not be flexible: ", (Object) getUpperBound()));
            }
            throw new AssertionError(p.a("Lower bound of a flexible type can not be flexible: ", (Object) getLowerBound()));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        runAssertions();
        return getLowerBound();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeVariable
    public final boolean isTypeVariable() {
        return (getLowerBound().getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor) && p.a(getLowerBound().getConstructor(), getUpperBound().getConstructor());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType makeNullableAsSpecified(boolean z) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.flexibleType(getLowerBound().makeNullableAsSpecified(z), getUpperBound().makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final FlexibleType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new FlexibleTypeImpl((SimpleType) kotlinTypeRefiner.refineType(getLowerBound()), (SimpleType) kotlinTypeRefiner.refineType(getUpperBound()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(c renderer, f options) {
        p.d(renderer, "renderer");
        p.d(options, "options");
        if (!options.b()) {
            return renderer.a(renderer.a(getLowerBound()), renderer.a(getUpperBound()), TypeUtilsKt.getBuiltIns(this));
        }
        return "(" + renderer.a(getLowerBound()) + ".." + renderer.a(getUpperBound()) + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType replaceAnnotations(g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.flexibleType(getLowerBound().replaceAnnotations(newAnnotations), getUpperBound().replaceAnnotations(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeVariable
    public final KotlinType substitutionResult(KotlinType replacement) {
        UnwrappedType unwrappedType;
        p.d(replacement, "replacement");
        UnwrappedType unwrap = replacement.unwrap();
        if (unwrap instanceof FlexibleType) {
            unwrappedType = unwrap;
        } else if (unwrap instanceof SimpleType) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType simpleType = (SimpleType) unwrap;
            unwrappedType = KotlinTypeFactory.flexibleType(simpleType, simpleType.makeNullableAsSpecified(true));
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return TypeWithEnhancementKt.inheritEnhancement(unwrappedType, unwrap);
    }
}

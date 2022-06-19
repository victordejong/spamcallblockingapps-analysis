package kotlin.reflect.jvm.internal.impl.types;

import kotlin.C20130x;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
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
        C18524p.m3840d(lowerBound, "lowerBound");
        C18524p.m3840d(upperBound, "upperBound");
    }

    private final void runAssertions() {
        if (!RUN_SLOW_ASSERTIONS || this.assertionsDone) {
            return;
        }
        this.assertionsDone = true;
        boolean isFlexible = FlexibleTypesKt.isFlexible(getLowerBound());
        if (C20130x.f66532a && !(!isFlexible)) {
            throw new AssertionError(C18524p.m3847a("Lower bound of a flexible type can not be flexible: ", (Object) getLowerBound()));
        }
        boolean isFlexible2 = FlexibleTypesKt.isFlexible(getUpperBound());
        if (C20130x.f66532a && !(!isFlexible2)) {
            throw new AssertionError(C18524p.m3847a("Upper bound of a flexible type can not be flexible: ", (Object) getUpperBound()));
        }
        boolean m3850a = C18524p.m3850a(getLowerBound(), getUpperBound());
        if (C20130x.f66532a && !(true ^ m3850a)) {
            throw new AssertionError("Lower and upper bounds are equal: " + getLowerBound() + " == " + getUpperBound());
        }
        boolean isSubtypeOf = KotlinTypeChecker.DEFAULT.isSubtypeOf(getLowerBound(), getUpperBound());
        if (!C20130x.f66532a || isSubtypeOf) {
            return;
        }
        throw new AssertionError("Lower bound " + getLowerBound() + " of a flexible type must be a subtype of the upper bound " + getUpperBound());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        runAssertions();
        return getLowerBound();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeVariable
    public final boolean isTypeVariable() {
        return (getLowerBound().getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor) && C18524p.m3850a(getLowerBound().getConstructor(), getUpperBound().getConstructor());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType makeNullableAsSpecified(boolean z) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.flexibleType(getLowerBound().makeNullableAsSpecified(z), getUpperBound().makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final FlexibleType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new FlexibleTypeImpl((SimpleType) kotlinTypeRefiner.refineType(getLowerBound()), (SimpleType) kotlinTypeRefiner.refineType(getUpperBound()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(AbstractC19230c renderer, AbstractC19257f options) {
        C18524p.m3840d(renderer, "renderer");
        C18524p.m3840d(options, "options");
        if (options.mo2367b()) {
            return "(" + renderer.mo2425a(getLowerBound()) + ".." + renderer.mo2425a(getUpperBound()) + ')';
        }
        return renderer.mo2476a(renderer.mo2425a(getLowerBound()), renderer.mo2425a(getUpperBound()), TypeUtilsKt.getBuiltIns(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType replaceAnnotations(AbstractC18983g newAnnotations) {
        C18524p.m3840d(newAnnotations, "newAnnotations");
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.flexibleType(getLowerBound().replaceAnnotations(newAnnotations), getUpperBound().replaceAnnotations(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeVariable
    public final KotlinType substitutionResult(KotlinType replacement) {
        UnwrappedType unwrappedType;
        C18524p.m3840d(replacement, "replacement");
        UnwrappedType unwrap = replacement.unwrap();
        if (unwrap instanceof FlexibleType) {
            unwrappedType = unwrap;
        } else if (!(unwrap instanceof SimpleType)) {
            throw new NoWhenBranchMatchedException();
        } else {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType simpleType = (SimpleType) unwrap;
            unwrappedType = KotlinTypeFactory.flexibleType(simpleType, simpleType.makeNullableAsSpecified(true));
        }
        return TypeWithEnhancementKt.inheritEnhancement(unwrappedType, unwrap);
    }
}

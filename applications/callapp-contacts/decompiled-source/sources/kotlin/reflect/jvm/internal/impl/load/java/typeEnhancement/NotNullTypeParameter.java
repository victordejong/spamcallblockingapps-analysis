package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.NotNullTypeVariable;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameter.class */
public final class NotNullTypeParameter extends DelegatingSimpleType implements NotNullTypeVariable {
    private final SimpleType delegate;

    public NotNullTypeParameter(SimpleType delegate) {
        p.d(delegate, "delegate");
        this.delegate = delegate;
    }

    private final SimpleType prepareReplacement(SimpleType simpleType) {
        SimpleType makeNullableAsSpecified = simpleType.makeNullableAsSpecified(false);
        return !TypeUtilsKt.isTypeParameter(simpleType) ? makeNullableAsSpecified : new NotNullTypeParameter(makeNullableAsSpecified);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeVariable
    public final boolean isTypeVariable() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType makeNullableAsSpecified(boolean z) {
        return z ? getDelegate().makeNullableAsSpecified(true) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final NotNullTypeParameter replaceAnnotations(g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        return new NotNullTypeParameter(getDelegate().replaceAnnotations(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final NotNullTypeParameter replaceDelegate(SimpleType delegate) {
        p.d(delegate, "delegate");
        return new NotNullTypeParameter(delegate);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeVariable
    public final KotlinType substitutionResult(KotlinType replacement) {
        p.d(replacement, "replacement");
        UnwrappedType unwrap = replacement.unwrap();
        UnwrappedType unwrappedType = unwrap;
        if (!TypeUtilsKt.isTypeParameter(unwrappedType) && !TypeUtils.isNullableType(unwrappedType)) {
            return unwrappedType;
        }
        if (unwrap instanceof SimpleType) {
            return prepareReplacement((SimpleType) unwrap);
        }
        if (unwrap instanceof FlexibleType) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            FlexibleType flexibleType = (FlexibleType) unwrap;
            return TypeWithEnhancementKt.wrapEnhancement(KotlinTypeFactory.flexibleType(prepareReplacement(flexibleType.getLowerBound()), prepareReplacement(flexibleType.getUpperBound())), TypeWithEnhancementKt.getEnhancement(unwrappedType));
        }
        throw new IllegalStateException(p.a("Incorrect type: ", (Object) unwrap).toString());
    }
}

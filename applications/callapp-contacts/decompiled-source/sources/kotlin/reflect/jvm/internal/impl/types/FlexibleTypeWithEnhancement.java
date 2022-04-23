package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.e.f;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/FlexibleTypeWithEnhancement.class */
public final class FlexibleTypeWithEnhancement extends FlexibleType implements TypeWithEnhancement {
    private final KotlinType enhancement;
    private final FlexibleType origin;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleTypeWithEnhancement(FlexibleType origin, KotlinType enhancement) {
        super(origin.getLowerBound(), origin.getUpperBound());
        p.d(origin, "origin");
        p.d(enhancement, "enhancement");
        this.origin = origin;
        this.enhancement = enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        return getOrigin().getDelegate();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final KotlinType getEnhancement() {
        return this.enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final FlexibleType getOrigin() {
        return this.origin;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType makeNullableAsSpecified(boolean z) {
        return TypeWithEnhancementKt.wrapEnhancement(getOrigin().makeNullableAsSpecified(z), getEnhancement().unwrap().makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final FlexibleTypeWithEnhancement refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new FlexibleTypeWithEnhancement((FlexibleType) kotlinTypeRefiner.refineType(getOrigin()), kotlinTypeRefiner.refineType(getEnhancement()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(c renderer, f options) {
        p.d(renderer, "renderer");
        p.d(options, "options");
        return options.c() ? renderer.a(getEnhancement()) : getOrigin().render(renderer, options);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType replaceAnnotations(g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        return TypeWithEnhancementKt.wrapEnhancement(getOrigin().replaceAnnotations(newAnnotations), getEnhancement());
    }
}

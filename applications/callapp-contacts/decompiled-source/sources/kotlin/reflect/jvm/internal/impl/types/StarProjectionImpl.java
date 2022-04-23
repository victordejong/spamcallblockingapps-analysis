package kotlin.reflect.jvm.internal.impl.types;

import kotlin.Lazy;
import kotlin.h;
import kotlin.jvm.internal.p;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StarProjectionImpl.class */
public final class StarProjectionImpl extends TypeProjectionBase {
    private final Lazy _type$delegate = h.a(l.PUBLICATION, new StarProjectionImpl$_type$2(this));
    private final TypeParameterDescriptor typeParameter;

    public StarProjectionImpl(TypeParameterDescriptor typeParameter) {
        p.d(typeParameter, "typeParameter");
        this.typeParameter = typeParameter;
    }

    private final KotlinType get_type() {
        return (KotlinType) this._type$delegate.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public final Variance getProjectionKind() {
        return Variance.OUT_VARIANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public final KotlinType getType() {
        return get_type();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public final boolean isStarProjection() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public final TypeProjection refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }
}

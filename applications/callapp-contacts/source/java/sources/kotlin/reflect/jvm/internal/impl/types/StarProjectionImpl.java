package kotlin.reflect.jvm.internal.impl.types;

import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StarProjectionImpl.class */
public final class StarProjectionImpl extends TypeProjectionBase {
    private final Lazy _type$delegate = C18399h.m3896a(EnumC18536l.PUBLICATION, new StarProjectionImpl$_type$2(this));
    private final TypeParameterDescriptor typeParameter;

    public StarProjectionImpl(TypeParameterDescriptor typeParameter) {
        C18524p.m3840d(typeParameter, "typeParameter");
        this.typeParameter = typeParameter;
    }

    private final KotlinType get_type() {
        return (KotlinType) this._type$delegate.mo1102a();
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
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }
}

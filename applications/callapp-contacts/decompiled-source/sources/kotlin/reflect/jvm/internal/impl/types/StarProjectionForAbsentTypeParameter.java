package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter.class */
public final class StarProjectionForAbsentTypeParameter extends TypeProjectionBase {
    private final KotlinType nullableAnyType;

    public StarProjectionForAbsentTypeParameter(g kotlinBuiltIns) {
        p.d(kotlinBuiltIns, "kotlinBuiltIns");
        SimpleType h = kotlinBuiltIns.h();
        p.b(h, "kotlinBuiltIns.nullableAnyType");
        this.nullableAnyType = h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public final Variance getProjectionKind() {
        return Variance.OUT_VARIANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public final KotlinType getType() {
        return this.nullableAnyType;
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

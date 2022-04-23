package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl.class */
public final class CapturedTypeConstructorImpl implements CapturedTypeConstructor {
    private NewCapturedTypeConstructor newTypeConstructor;
    private final TypeProjection projection;

    public CapturedTypeConstructorImpl(TypeProjection projection) {
        p.d(projection, "projection");
        this.projection = projection;
        boolean z = getProjection().getProjectionKind() != Variance.INVARIANT;
        if (x.f38657a && !z) {
            throw new AssertionError(p.a("Only nontrivial projections can be captured, not: ", (Object) getProjection()));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final g getBuiltIns() {
        g builtIns = getProjection().getType().getConstructor().getBuiltIns();
        p.b(builtIns, "projection.type.constructor.builtIns");
        return builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final Void getDeclarationDescriptor() {
        return null;
    }

    public final NewCapturedTypeConstructor getNewTypeConstructor() {
        return this.newTypeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List<TypeParameterDescriptor> getParameters() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor
    public final TypeProjection getProjection() {
        return this.projection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes */
    public final Collection<KotlinType> mo7371getSupertypes() {
        SimpleType type = getProjection().getProjectionKind() == Variance.OUT_VARIANCE ? getProjection().getType() : getBuiltIns().h();
        p.b(type, "if (projection.projectionKind == Variance.OUT_VARIANCE)\n            projection.type\n        else\n            builtIns.nullableAnyType");
        return n.a(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final CapturedTypeConstructorImpl refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        TypeProjection refine = getProjection().refine(kotlinTypeRefiner);
        p.b(refine, "projection.refine(kotlinTypeRefiner)");
        return new CapturedTypeConstructorImpl(refine);
    }

    public final void setNewTypeConstructor(NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this.newTypeConstructor = newCapturedTypeConstructor;
    }

    public final String toString() {
        return "CapturedTypeConstructor(" + getProjection() + ')';
    }
}

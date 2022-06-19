package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType.class */
public final class CapturedType extends SimpleType implements CapturedTypeMarker {
    private final AbstractC18983g annotations;
    private final CapturedTypeConstructor constructor;
    private final boolean isMarkedNullable;
    private final TypeProjection typeProjection;

    public CapturedType(TypeProjection typeProjection, CapturedTypeConstructor constructor, boolean z, AbstractC18983g annotations) {
        C18524p.m3840d(typeProjection, "typeProjection");
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(annotations, "annotations");
        this.typeProjection = typeProjection;
        this.constructor = constructor;
        this.isMarkedNullable = z;
        this.annotations = annotations;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CapturedType(kotlin.reflect.jvm.internal.impl.types.TypeProjection r7, kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor r8, boolean r9, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g r10, int r11, kotlin.jvm.internal.DefaultConstructorMarker r12) {
        /*
            r6 = this;
            r0 = r11
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L13
            kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorImpl r0 = new kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorImpl
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor r0 = (kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor) r0
            r8 = r0
        L13:
            r0 = r11
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L1c
            r0 = 0
            r9 = r0
        L1c:
            r0 = r11
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            kotlin.reflect.jvm.internal.impl.descriptors.a.g$a r0 = kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g.f64717a
            r10 = r0
            kotlin.reflect.jvm.internal.impl.descriptors.a.g r0 = kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g.C18984a.m2705a()
            r10 = r0
        L2e:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedType.<init>(kotlin.reflect.jvm.internal.impl.types.TypeProjection, kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor, boolean, kotlin.reflect.jvm.internal.impl.descriptors.a.g, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final AbstractC18983g getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final List<TypeProjection> getArguments() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final CapturedTypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final AbstractC19834h getMemberScope() {
        AbstractC19834h createErrorScope = ErrorUtils.createErrorScope("No member resolution should be done on captured type, it used only during constraint system resolution", true);
        C18524p.m3843b(createErrorScope, "createErrorScope(\n            \"No member resolution should be done on captured type, it used only during constraint system resolution\", true\n        )");
        return createErrorScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final CapturedType makeNullableAsSpecified(boolean z) {
        return z == isMarkedNullable() ? this : new CapturedType(this.typeProjection, getConstructor(), z, getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final CapturedType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        TypeProjection refine = this.typeProjection.refine(kotlinTypeRefiner);
        C18524p.m3843b(refine, "typeProjection.refine(kotlinTypeRefiner)");
        return new CapturedType(refine, getConstructor(), isMarkedNullable(), getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final CapturedType replaceAnnotations(AbstractC18983g newAnnotations) {
        C18524p.m3840d(newAnnotations, "newAnnotations");
        return new CapturedType(this.typeProjection, getConstructor(), isMarkedNullable(), newAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    public final String toString() {
        StringBuilder sb = new StringBuilder("Captured(");
        sb.append(this.typeProjection);
        sb.append(')');
        sb.append(isMarkedNullable() ? "?" : "");
        return sb.toString();
    }
}

package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType.class */
public final class NewCapturedType extends SimpleType implements CapturedTypeMarker {
    private final AbstractC18983g annotations;
    private final CaptureStatus captureStatus;
    private final NewCapturedTypeConstructor constructor;
    private final boolean isMarkedNullable;
    private final boolean isProjectionNotNull;
    private final UnwrappedType lowerType;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedType(CaptureStatus captureStatus, UnwrappedType unwrappedType, TypeProjection projection, TypeParameterDescriptor typeParameter) {
        this(captureStatus, new NewCapturedTypeConstructor(projection, null, null, typeParameter, 6, null), unwrappedType, null, false, false, 56, null);
        C18524p.m3840d(captureStatus, "captureStatus");
        C18524p.m3840d(projection, "projection");
        C18524p.m3840d(typeParameter, "typeParameter");
    }

    public NewCapturedType(CaptureStatus captureStatus, NewCapturedTypeConstructor constructor, UnwrappedType unwrappedType, AbstractC18983g annotations, boolean z, boolean z2) {
        C18524p.m3840d(captureStatus, "captureStatus");
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(annotations, "annotations");
        this.captureStatus = captureStatus;
        this.constructor = constructor;
        this.lowerType = unwrappedType;
        this.annotations = annotations;
        this.isMarkedNullable = z;
        this.isProjectionNotNull = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ NewCapturedType(kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus r9, kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor r10, kotlin.reflect.jvm.internal.impl.types.UnwrappedType r11, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g r12, boolean r13, boolean r14, int r15, kotlin.jvm.internal.DefaultConstructorMarker r16) {
        /*
            r8 = this;
            r0 = r15
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L12
            kotlin.reflect.jvm.internal.impl.descriptors.a.g$a r0 = kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g.f64717a
            r12 = r0
            kotlin.reflect.jvm.internal.impl.descriptors.a.g r0 = kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g.C18984a.m2705a()
            r12 = r0
        L12:
            r0 = r15
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L20
            r0 = 0
            r13 = r0
            goto L20
        L20:
            r0 = r15
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            r0 = 0
            r14 = r0
            goto L2e
        L2e:
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType.<init>(kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus, kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.descriptors.a.g, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final AbstractC18983g getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final List<TypeProjection> getArguments() {
        return C18297z.f63400a;
    }

    public final CaptureStatus getCaptureStatus() {
        return this.captureStatus;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final NewCapturedTypeConstructor getConstructor() {
        return this.constructor;
    }

    public final UnwrappedType getLowerType() {
        return this.lowerType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final AbstractC19834h getMemberScope() {
        AbstractC19834h createErrorScope = ErrorUtils.createErrorScope("No member resolution should be done on captured type!", true);
        C18524p.m3843b(createErrorScope, "createErrorScope(\"No member resolution should be done on captured type!\", true)");
        return createErrorScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    public final boolean isProjectionNotNull() {
        return this.isProjectionNotNull;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final NewCapturedType makeNullableAsSpecified(boolean z) {
        return new NewCapturedType(this.captureStatus, getConstructor(), this.lowerType, getAnnotations(), z, false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final NewCapturedType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        CaptureStatus captureStatus = this.captureStatus;
        NewCapturedTypeConstructor refine = getConstructor().refine(kotlinTypeRefiner);
        UnwrappedType unwrappedType = this.lowerType;
        return new NewCapturedType(captureStatus, refine, unwrappedType == null ? null : kotlinTypeRefiner.refineType(unwrappedType).unwrap(), getAnnotations(), isMarkedNullable(), false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final NewCapturedType replaceAnnotations(AbstractC18983g newAnnotations) {
        C18524p.m3840d(newAnnotations, "newAnnotations");
        return new NewCapturedType(this.captureStatus, getConstructor(), this.lowerType, newAnnotations, isMarkedNullable(), false, 32, null);
    }
}

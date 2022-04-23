package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.e.f;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.DynamicTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DynamicType.class */
public final class DynamicType extends FlexibleType implements DynamicTypeMarker {
    private final g annotations;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DynamicType(kotlin.reflect.jvm.internal.impl.builtins.g r5, kotlin.reflect.jvm.internal.impl.descriptors.a.g r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "builtIns"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r6
            java.lang.String r1 = "annotations"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r5
            kotlin.reflect.jvm.internal.impl.types.SimpleType r0 = r0.f()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "builtIns.nothingType"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r5
            kotlin.reflect.jvm.internal.impl.types.SimpleType r0 = r0.h()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "builtIns.nullableAnyType"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r4
            r1 = r7
            r2 = r5
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r6
            r0.annotations = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.DynamicType.<init>(kotlin.reflect.jvm.internal.impl.builtins.g, kotlin.reflect.jvm.internal.impl.descriptors.a.g):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType, kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final g getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        return getUpperBound();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final DynamicType makeNullableAsSpecified(boolean z) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final DynamicType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(c renderer, f options) {
        p.d(renderer, "renderer");
        p.d(options, "options");
        return "dynamic";
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final DynamicType replaceAnnotations(g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        return new DynamicType(TypeUtilsKt.getBuiltIns(getDelegate()), newAnnotations);
    }
}

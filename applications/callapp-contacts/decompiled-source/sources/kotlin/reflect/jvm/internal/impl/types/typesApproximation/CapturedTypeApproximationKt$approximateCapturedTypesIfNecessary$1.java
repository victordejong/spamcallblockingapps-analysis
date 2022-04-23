package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1.class */
public final class CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1 extends r implements Function1<UnwrappedType, Boolean> {
    public static final CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1 INSTANCE = new CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1();

    CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1() {
        super(1);
    }

    public final Boolean invoke(UnwrappedType it2) {
        p.b(it2, "it");
        return Boolean.valueOf(a.a(it2));
    }
}

package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.C19768a;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* renamed from: kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1 */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1.class */
public final class C19994x21acc51c extends AbstractC18526r implements Function1<UnwrappedType, Boolean> {
    public static final C19994x21acc51c INSTANCE = new C19994x21acc51c();

    C19994x21acc51c() {
        super(1);
    }

    public final Boolean invoke(UnwrappedType it2) {
        C18524p.m3843b(it2, "it");
        return Boolean.valueOf(C19768a.m1498a(it2));
    }
}

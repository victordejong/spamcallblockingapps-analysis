package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\u001a\u0011\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\b\u001a\u001f\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\b¨\u0006\u0007"}, m254d2 = {"assert", "", FirebaseAnalytics.Param.VALUE, "", "lazyMessage", "Lkotlin/Function0;", "", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/PreconditionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/PreconditionsKt__AssertionsJVMKt.class */
class PreconditionsKt__AssertionsJVMKt {
    @InlineOnly
    /* renamed from: assert  reason: not valid java name */
    private static final void m2804assert(boolean z) {
        if (_Assertions.ENABLED && !z) {
            throw new AssertionError("Assertion failed");
        }
    }

    @InlineOnly
    /* renamed from: assert  reason: not valid java name */
    private static final void m2805assert(boolean z, Function0<? extends Object> function0) {
        if (_Assertions.ENABLED && !z) {
            throw new AssertionError(function0.invoke());
        }
    }
}

package kotlin;

import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a7\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0005H\u0087\b\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m254d2 = {"synchronized", "R", "lock", "", BlockingOverlayService.EXTRA_BLOCK_IMMEDIATELY, "Lkotlin/Function0;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/StandardKt")
/* loaded from: classes2-dex2jar.jar:kotlin/StandardKt__SynchronizedKt.class */
class StandardKt__SynchronizedKt extends StandardKt__StandardKt {
    @InlineOnly
    /* renamed from: synchronized  reason: not valid java name */
    private static final <R> R m2819synchronized(Object obj, Function0<? extends R> function0) {
        R r;
        synchronized (obj) {
            try {
                r = (R) function0.invoke();
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return r;
    }
}

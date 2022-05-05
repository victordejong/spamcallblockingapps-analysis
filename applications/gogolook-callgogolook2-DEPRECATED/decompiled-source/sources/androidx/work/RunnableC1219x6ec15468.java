package androidx.work;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
import p626l.C14979k;
import p626l.C14982l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, m815d2 = {"<anonymous>", "", "R", "run", "androidx/work/ListenableFutureKt$await$2$1"}, m814k = 3, m813mv = {1, 1, 16})
/* renamed from: androidx.work.ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1 */
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1.class */
public final class RunnableC1219x6ec15468 implements Runnable {
    public final /* synthetic */ CancellableContinuation $cancellableContinuation;
    public final /* synthetic */ AbstractFutureC9382a $this_await$inlined;

    public RunnableC1219x6ec15468(CancellableContinuation cancellableContinuation, AbstractFutureC9382a aVar) {
        this.$cancellableContinuation = cancellableContinuation;
        this.$this_await$inlined = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            CancellableContinuation cancellableContinuation = this.$cancellableContinuation;
            Object obj = this.$this_await$inlined.get();
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(obj);
            cancellableContinuation.resumeWith(obj);
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                cause = th;
            }
            if (th instanceof CancellationException) {
                this.$cancellableContinuation.cancel(cause);
                return;
            }
            CancellableContinuation cancellableContinuation2 = this.$cancellableContinuation;
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a = C14982l.m652a(cause);
            C14979k.m657a(a);
            cancellableContinuation2.resumeWith(a);
        }
    }
}

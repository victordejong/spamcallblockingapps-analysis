package kotlinx.coroutines;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.internal.ConcurrentKt;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b \u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u001c\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u00060\fj\u0002`\rH\u0016J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\r\u0010\u0013\u001a\u00020\u0007H��¢\u0006\u0002\b\u0014J\u001c\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\n\u0010\u000b\u001a\u00060\fj\u0002`\rH\u0016J*\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a2\n\u0010\u000b\u001a\u00060\fj\u0002`\r2\u0006\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00182\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070 H\u0016J\b\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u0006#"}, m815d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "()V", "removesFutureOnCancellation", "", MraidParser.MRAID_COMMAND_CLOSE, "", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "equals", "other", "", "hashCode", "", "initFutureCancellation", "initFutureCancellation$kotlinx_coroutines_core", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "", "scheduleBlock", "Ljava/util/concurrent/ScheduledFuture;", "time", "unit", "Ljava/util/concurrent/TimeUnit;", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ExecutorCoroutineDispatcherBase.class */
public abstract class ExecutorCoroutineDispatcherBase extends ExecutorCoroutineDispatcher implements Delay {
    public boolean removesFutureOnCancellation;

    private final ScheduledFuture<?> scheduleBlock(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduledFuture;
        try {
            Executor executor = getExecutor();
            Executor executor2 = executor;
            if (!(executor instanceof ScheduledExecutorService)) {
                executor2 = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor2;
            scheduledFuture = null;
            if (scheduledExecutorService != null) {
                scheduledFuture = scheduledExecutorService.schedule(runnable, j, timeUnit);
            }
        } catch (RejectedExecutionException e) {
            scheduledFuture = null;
        }
        return scheduledFuture;
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executor = getExecutor();
        Executor executor2 = executor;
        if (!(executor instanceof ExecutorService)) {
            executor2 = null;
        }
        ExecutorService executorService = (ExecutorService) executor2;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // kotlinx.coroutines.Delay
    public Object delay(long j, AbstractC15044d<? super C14989s> dVar) {
        return Delay.DefaultImpls.delay(this, j, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r4 != null) goto L_0x001e;
     */
    @Override // kotlinx.coroutines.CoroutineDispatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatch(p626l.p634w.AbstractC15049g r4, java.lang.Runnable r5) {
        /*
            r3 = this;
            r0 = r3
            java.util.concurrent.Executor r0 = r0.getExecutor()     // Catch: RejectedExecutionException -> 0x0028
            r6 = r0
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.getTimeSource()     // Catch: RejectedExecutionException -> 0x0028
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001c
            r0 = r4
            r1 = r5
            java.lang.Runnable r0 = r0.wrapTask(r1)     // Catch: RejectedExecutionException -> 0x0028
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001c
            goto L_0x001e
        L_0x001c:
            r0 = r5
            r4 = r0
        L_0x001e:
            r0 = r6
            r1 = r4
            r0.execute(r1)     // Catch: RejectedExecutionException -> 0x0028
            goto L_0x003e
        L_0x0028:
            r4 = move-exception
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.getTimeSource()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0037
            r0 = r4
            r0.unTrackTask()
        L_0x0037:
            kotlinx.coroutines.DefaultExecutor r0 = kotlinx.coroutines.DefaultExecutor.INSTANCE
            r1 = r5
            r0.enqueue(r1)
        L_0x003e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ExecutorCoroutineDispatcherBase.dispatch(l.w.g, java.lang.Runnable):void");
    }

    public boolean equals(Object obj) {
        return (obj instanceof ExecutorCoroutineDispatcherBase) && ((ExecutorCoroutineDispatcherBase) obj).getExecutor() == getExecutor();
    }

    public int hashCode() {
        return System.identityHashCode(getExecutor());
    }

    public final void initFutureCancellation$kotlinx_coroutines_core() {
        this.removesFutureOnCancellation = ConcurrentKt.removeFutureOnCancel(getExecutor());
    }

    @Override // kotlinx.coroutines.Delay
    public DisposableHandle invokeOnTimeout(long j, Runnable runnable) {
        ScheduledFuture<?> scheduleBlock = this.removesFutureOnCancellation ? scheduleBlock(runnable, j, TimeUnit.MILLISECONDS) : null;
        return scheduleBlock != null ? new DisposableFutureHandle(scheduleBlock) : DefaultExecutor.INSTANCE.invokeOnTimeout(j, runnable);
    }

    @Override // kotlinx.coroutines.Delay
    public void scheduleResumeAfterDelay(long j, CancellableContinuation<? super C14989s> cancellableContinuation) {
        ScheduledFuture<?> scheduleBlock = this.removesFutureOnCancellation ? scheduleBlock(new ResumeUndispatchedRunnable(this, cancellableContinuation), j, TimeUnit.MILLISECONDS) : null;
        if (scheduleBlock != null) {
            JobKt.cancelFutureOnCancellation(cancellableContinuation, scheduleBlock);
        } else {
            DefaultExecutor.INSTANCE.scheduleResumeAfterDelay(j, cancellableContinuation);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return getExecutor().toString();
    }
}

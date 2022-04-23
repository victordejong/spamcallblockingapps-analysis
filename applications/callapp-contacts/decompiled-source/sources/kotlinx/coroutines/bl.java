package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.functions.Function1;
import kotlin.v;
import kotlinx.coroutines.internal.d;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b \u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\u0007H\u0016J\u001c\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010H\u0016J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\r\u0010\u0016\u001a\u00020\u0007H��¢\u0006\u0002\b\u0017J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\b\u001a\u00020\tH\u0016J*\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001d2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070 H\u0016J\b\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u0006#"}, d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "()V", "removesFutureOnCancellation", "", "cancelJobOnRejection", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "Ljava/util/concurrent/RejectedExecutionException;", EventConstants.CLOSE, "dispatch", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "equals", "other", "", "hashCode", "", "initFutureCancellation", "initFutureCancellation$kotlinx_coroutines_core", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "", "scheduleBlock", "Ljava/util/concurrent/ScheduledFuture;", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bl.class */
public abstract class bl extends bk implements au {

    /* renamed from: b  reason: collision with root package name */
    private boolean f38749b;

    private final ScheduledFuture<?> a(Runnable runnable, f fVar, long j) {
        ScheduledFuture<?> scheduledFuture;
        try {
            Executor a2 = a();
            Executor executor = a2;
            if (!(a2 instanceof ScheduledExecutorService)) {
                executor = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor;
            scheduledFuture = null;
            if (scheduledExecutorService != null) {
                scheduledFuture = scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
            }
        } catch (RejectedExecutionException e) {
            a(fVar, e);
            scheduledFuture = null;
        }
        return scheduledFuture;
    }

    private static void a(f fVar, RejectedExecutionException rejectedExecutionException) {
        by.a(fVar, bj.a("The task was rejected", rejectedExecutionException));
    }

    @Override // kotlinx.coroutines.au
    public final bb a(long j, Runnable runnable, f fVar) {
        ScheduledFuture<?> a2 = this.f38749b ? a(runnable, fVar, j) : null;
        return a2 != null ? new ba(a2) : aq.f38690b.a(j, runnable, fVar);
    }

    @Override // kotlinx.coroutines.au
    public final void a(long j, n<? super v> nVar) {
        ScheduledFuture<?> a2 = this.f38749b ? a(new ck(this, nVar), nVar.b(), j) : null;
        if (a2 != null) {
            nVar.a((Function1<? super Throwable, v>) new k(a2));
        } else {
            aq.f38690b.a(j, nVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
        if (r0 == null) goto L_0x0021;
     */
    @Override // kotlinx.coroutines.af
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(kotlin.c.f r5, java.lang.Runnable r6) {
        /*
            r4 = this;
            r0 = r4
            java.util.concurrent.Executor r0 = r0.a()     // Catch: RejectedExecutionException -> 0x002d
            r7 = r0
            kotlinx.coroutines.co r0 = kotlinx.coroutines.cp.f38786a     // Catch: RejectedExecutionException -> 0x002d
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0021
            r0 = r8
            java.lang.Runnable r0 = r0.b()     // Catch: RejectedExecutionException -> 0x002d
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0024
        L_0x0021:
            r0 = r6
            r8 = r0
        L_0x0024:
            r0 = r7
            r1 = r8
            r0.execute(r1)     // Catch: RejectedExecutionException -> 0x002d
            return
        L_0x002d:
            r8 = move-exception
            r0 = r5
            r1 = r8
            a(r0, r1)
            kotlinx.coroutines.af r0 = kotlinx.coroutines.az.c()
            r1 = r5
            r2 = r6
            r0.a(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.bl.a(kotlin.c.f, java.lang.Runnable):void");
    }

    public final void c() {
        this.f38749b = d.a(a());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor a2 = a();
        Executor executor = a2;
        if (!(a2 instanceof ExecutorService)) {
            executor = null;
        }
        ExecutorService executorService = (ExecutorService) executor;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof bl) && ((bl) obj).a() == a();
    }

    public int hashCode() {
        return System.identityHashCode(a());
    }

    @Override // kotlinx.coroutines.af
    public String toString() {
        return a().toString();
    }
}

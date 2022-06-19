package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.internal.C20268d;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b \u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\u0007H\u0016J\u001c\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010H\u0016J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\r\u0010\u0016\u001a\u00020\u0007H��¢\u0006\u0002\b\u0017J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\b\u001a\u00020\tH\u0016J*\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001d2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070 H\u0016J\b\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u0006#"}, m4298d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "()V", "removesFutureOnCancellation", "", "cancelJobOnRejection", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "Ljava/util/concurrent/RejectedExecutionException;", EventConstants.CLOSE, "dispatch", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "equals", "other", "", "hashCode", "", "initFutureCancellation", "initFutureCancellation$kotlinx_coroutines_core", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "", "scheduleBlock", "Ljava/util/concurrent/ScheduledFuture;", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bl */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bl.class */
public abstract class AbstractC20208bl extends AbstractC20205bk implements AbstractC20166au {

    /* renamed from: b */
    private boolean f66657b;

    /* renamed from: a */
    private final ScheduledFuture<?> m986a(Runnable runnable, AbstractC18335f abstractC18335f, long j) {
        ScheduledFuture<?> scheduledFuture;
        try {
            Executor a = mo765a();
            Executor executor = a;
            if (!(a instanceof ScheduledExecutorService)) {
                executor = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor;
            scheduledFuture = null;
            if (scheduledExecutorService != null) {
                scheduledFuture = scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
            }
        } catch (RejectedExecutionException e) {
            m985a(abstractC18335f, e);
            scheduledFuture = null;
        }
        return scheduledFuture;
    }

    /* renamed from: a */
    private static void m985a(AbstractC18335f abstractC18335f, RejectedExecutionException rejectedExecutionException) {
        C20223by.m981a(abstractC18335f, C20204bj.m987a("The task was rejected", rejectedExecutionException));
    }

    @Override // kotlinx.coroutines.AbstractC20166au
    /* renamed from: a */
    public final AbstractC20192bb mo826a(long j, Runnable runnable, AbstractC18335f abstractC18335f) {
        ScheduledFuture<?> m986a = this.f66657b ? m986a(runnable, abstractC18335f, j) : null;
        return m986a != null ? new C20191ba(m986a) : RunnableC20161aq.f66567b.mo826a(j, runnable, abstractC18335f);
    }

    @Override // kotlinx.coroutines.AbstractC20166au
    /* renamed from: a */
    public final void mo825a(long j, AbstractC20308n<? super C20128v> abstractC20308n) {
        ScheduledFuture<?> m986a = this.f66657b ? m986a(new RunnableC20242ck(this, abstractC20308n), abstractC20308n.mo787b(), j) : null;
        if (m986a != null) {
            abstractC20308n.mo794a((Function1<? super Throwable, C20128v>) new C20305k(m986a));
        } else {
            RunnableC20161aq.f66567b.mo825a(j, abstractC20308n);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
        if (r0 == null) goto L7;
     */
    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo763a(kotlin.p521c.AbstractC18335f r5, java.lang.Runnable r6) {
        /*
            r4 = this;
            r0 = r4
            java.util.concurrent.Executor r0 = r0.mo765a()     // Catch: java.util.concurrent.RejectedExecutionException -> L2d
            r7 = r0
            kotlinx.coroutines.co r0 = kotlinx.coroutines.C20247cp.f66702a     // Catch: java.util.concurrent.RejectedExecutionException -> L2d
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L21
            r0 = r8
            java.lang.Runnable r0 = r0.m908b()     // Catch: java.util.concurrent.RejectedExecutionException -> L2d
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 != 0) goto L24
        L21:
            r0 = r6
            r8 = r0
        L24:
            r0 = r7
            r1 = r8
            r0.execute(r1)     // Catch: java.util.concurrent.RejectedExecutionException -> L2d
            return
        L2d:
            r8 = move-exception
            r0 = r5
            r1 = r8
            m985a(r0, r1)
            kotlinx.coroutines.af r0 = kotlinx.coroutines.C20172az.m1059c()
            r1 = r5
            r2 = r6
            r0.mo763a(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AbstractC20208bl.mo763a(kotlin.c.f, java.lang.Runnable):void");
    }

    /* renamed from: c */
    public final void m984c() {
        this.f66657b = C20268d.m877a(mo765a());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor a = mo765a();
        Executor executor = a;
        if (!(a instanceof ExecutorService)) {
            executor = null;
        }
        ExecutorService executorService = (ExecutorService) executor;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof AbstractC20208bl) && ((AbstractC20208bl) obj).mo765a() == mo765a();
    }

    public int hashCode() {
        return System.identityHashCode(mo765a());
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    public String toString() {
        return mo765a().toString();
    }
}

package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15107a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"kotlinx/coroutines/JobKt__FutureKt", "kotlinx/coroutines/JobKt__JobKt"}, m814k = 4, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/JobKt.class */
public final class JobKt {
    @InternalCoroutinesApi
    public static final DisposableHandle DisposableHandle(AbstractC15107a<C14989s> aVar) {
        return JobKt__JobKt.DisposableHandle(aVar);
    }

    public static final CompletableJob Job(Job job) {
        return JobKt__JobKt.Job(job);
    }

    public static final void cancel(Job job, String str, Throwable th) {
        JobKt__JobKt.cancel(job, str, th);
    }

    public static final void cancel(AbstractC15049g gVar, CancellationException cancellationException) {
        JobKt__JobKt.cancel(gVar, cancellationException);
    }

    public static final Object cancelAndJoin(Job job, AbstractC15044d<? super C14989s> dVar) {
        return JobKt__JobKt.cancelAndJoin(job, dVar);
    }

    public static final void cancelChildren(Job job, CancellationException cancellationException) {
        JobKt__JobKt.cancelChildren(job, cancellationException);
    }

    public static final void cancelChildren(AbstractC15049g gVar, CancellationException cancellationException) {
        JobKt__JobKt.cancelChildren(gVar, cancellationException);
    }

    public static final void cancelFutureOnCancellation(CancellableContinuation<?> cancellableContinuation, Future<?> future) {
        JobKt__FutureKt.cancelFutureOnCancellation(cancellableContinuation, future);
    }

    @InternalCoroutinesApi
    public static final DisposableHandle cancelFutureOnCompletion(Job job, Future<?> future) {
        return JobKt__FutureKt.cancelFutureOnCompletion(job, future);
    }

    public static final DisposableHandle disposeOnCompletion(Job job, DisposableHandle disposableHandle) {
        return JobKt__JobKt.disposeOnCompletion(job, disposableHandle);
    }

    public static final void ensureActive(Job job) {
        JobKt__JobKt.ensureActive(job);
    }

    public static final void ensureActive(AbstractC15049g gVar) {
        JobKt__JobKt.ensureActive(gVar);
    }

    public static final boolean isActive(AbstractC15049g gVar) {
        return JobKt__JobKt.isActive(gVar);
    }
}

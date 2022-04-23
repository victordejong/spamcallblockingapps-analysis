package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b&\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0016\u001a\u00020\u000fH¦@ø\u0001��¢\u0006\u0002\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0019J\u0019\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0086@ø\u0001��¢\u0006\u0002\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0086@ø\u0001��¢\u0006\u0002\u0010!J\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000f0#R\u001c\u0010\u0007\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, m815d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker;", "appContext", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "coroutineContext", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineContext$annotations", "()V", "getCoroutineContext", "()Lkotlinx/coroutines/CoroutineDispatcher;", "future", "Landroidx/work/impl/utils/futures/SettableFuture;", "Landroidx/work/ListenableWorker$Result;", "getFuture$work_runtime_ktx_release", "()Landroidx/work/impl/utils/futures/SettableFuture;", "job", "Lkotlinx/coroutines/CompletableJob;", "getJob$work_runtime_ktx_release", "()Lkotlinx/coroutines/CompletableJob;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onStopped", "", "setForeground", "foregroundInfo", "Landroidx/work/ForegroundInfo;", "(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setProgress", "data", "Landroidx/work/Data;", "(Landroidx/work/Data;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startWork", "Lcom/google/common/util/concurrent/ListenableFuture;", "work-runtime-ktx_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes-dex2jar.jar:androidx/work/CoroutineWorker.class */
public abstract class CoroutineWorker extends ListenableWorker {
    public final CoroutineDispatcher coroutineContext = Dispatchers.getDefault();
    public final SettableFuture<ListenableWorker.Result> future;
    public final CompletableJob job;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        CompletableJob Job$default;
        C15149k.m377b(context, "appContext");
        C15149k.m377b(workerParameters, "params");
        Job$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.job = Job$default;
        SettableFuture<ListenableWorker.Result> create = SettableFuture.create();
        C15149k.m383a((Object) create, "SettableFuture.create()");
        this.future = create;
        SettableFuture<ListenableWorker.Result> settableFuture = this.future;
        Runnable runnable = new Runnable() { // from class: androidx.work.CoroutineWorker.1
            @Override // java.lang.Runnable
            public final void run() {
                if (CoroutineWorker.this.getFuture$work_runtime_ktx_release().isCancelled()) {
                    Job.DefaultImpls.cancel$default((Job) CoroutineWorker.this.getJob$work_runtime_ktx_release(), (CancellationException) null, 1, (Object) null);
                }
            }
        };
        TaskExecutor taskExecutor = getTaskExecutor();
        C15149k.m383a((Object) taskExecutor, "taskExecutor");
        settableFuture.addListener(runnable, taskExecutor.getBackgroundExecutor());
    }

    public static /* synthetic */ void coroutineContext$annotations() {
    }

    public abstract Object doWork(AbstractC15044d<? super ListenableWorker.Result> dVar);

    public CoroutineDispatcher getCoroutineContext() {
        return this.coroutineContext;
    }

    public final SettableFuture<ListenableWorker.Result> getFuture$work_runtime_ktx_release() {
        return this.future;
    }

    public final CompletableJob getJob$work_runtime_ktx_release() {
        return this.job;
    }

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
        this.future.cancel(false);
    }

    public final Object setForeground(ForegroundInfo foregroundInfo, AbstractC15044d<? super C14989s> dVar) {
        Void r7;
        final AbstractFutureC9382a<Void> foregroundAsync = setForegroundAsync(foregroundInfo);
        C15149k.m383a((Object) foregroundAsync, "setForegroundAsync(foregroundInfo)");
        if (foregroundAsync.isDone()) {
            try {
                r7 = foregroundAsync.get();
            } catch (ExecutionException e) {
                e = e;
                Throwable cause = e.getCause();
                if (cause != null) {
                    e = cause;
                }
                throw e;
            }
        } else {
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
            foregroundAsync.addListener(new Runnable() { // from class: androidx.work.CoroutineWorker$await$$inlined$suspendCancellableCoroutine$lambda$2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                        Object obj = foregroundAsync.get();
                        C14979k.C14980a aVar = C14979k.f33013a;
                        C14979k.m657a(obj);
                        cancellableContinuation.resumeWith(obj);
                    } catch (Throwable th) {
                        Throwable cause2 = th.getCause();
                        if (cause2 == null) {
                            cause2 = th;
                        }
                        if (th instanceof CancellationException) {
                            CancellableContinuation.this.cancel(cause2);
                            return;
                        }
                        CancellableContinuation cancellableContinuation2 = CancellableContinuation.this;
                        C14979k.C14980a aVar2 = C14979k.f33013a;
                        Object a = C14982l.m652a(cause2);
                        C14979k.m657a(a);
                        cancellableContinuation2.resumeWith(a);
                    }
                }
            }, DirectExecutor.INSTANCE);
            Object result = cancellableContinuationImpl.getResult();
            r7 = result;
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
                r7 = result;
            }
        }
        return r7 == C15064c.m478a() ? r7 : C14989s.f33022a;
    }

    public final Object setProgress(Data data, AbstractC15044d<? super C14989s> dVar) {
        Void r7;
        final AbstractFutureC9382a<Void> progressAsync = setProgressAsync(data);
        C15149k.m383a((Object) progressAsync, "setProgressAsync(data)");
        if (progressAsync.isDone()) {
            try {
                r7 = progressAsync.get();
            } catch (ExecutionException e) {
                e = e;
                Throwable cause = e.getCause();
                if (cause != null) {
                    e = cause;
                }
                throw e;
            }
        } else {
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
            progressAsync.addListener(new Runnable() { // from class: androidx.work.CoroutineWorker$await$$inlined$suspendCancellableCoroutine$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                        Object obj = progressAsync.get();
                        C14979k.C14980a aVar = C14979k.f33013a;
                        C14979k.m657a(obj);
                        cancellableContinuation.resumeWith(obj);
                    } catch (Throwable th) {
                        Throwable cause2 = th.getCause();
                        if (cause2 == null) {
                            cause2 = th;
                        }
                        if (th instanceof CancellationException) {
                            CancellableContinuation.this.cancel(cause2);
                            return;
                        }
                        CancellableContinuation cancellableContinuation2 = CancellableContinuation.this;
                        C14979k.C14980a aVar2 = C14979k.f33013a;
                        Object a = C14982l.m652a(cause2);
                        C14979k.m657a(a);
                        cancellableContinuation2.resumeWith(a);
                    }
                }
            }, DirectExecutor.INSTANCE);
            Object result = cancellableContinuationImpl.getResult();
            r7 = result;
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
                r7 = result;
            }
        }
        return r7 == C15064c.m478a() ? r7 : C14989s.f33022a;
    }

    @Override // androidx.work.ListenableWorker
    public final AbstractFutureC9382a<ListenableWorker.Result> startWork() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(getCoroutineContext().plus(this.job)), null, null, new CoroutineWorker$startWork$1(this, null), 3, null);
        return this.future;
    }
}

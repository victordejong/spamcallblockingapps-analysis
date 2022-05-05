package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import p626l.C14989s;
import p626l.p630d0.AbstractC14921e;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p642c.AbstractC15107a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\n\u001a\u0019\u0010\u0004\u001a\u00020\u00052\u000e\b\u0004\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0087\b\u001a\u0012\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u001a\u0019\u0010\r\u001a\u00020\f2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0002\b\t\u001a\f\u0010\u000e\u001a\u00020\b*\u00020\u0002H\u0007\u001a\u0018\u0010\u000e\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007\u001a\u001c\u0010\u000e\u001a\u00020\b*\u00020\u00022\u0010\b\u0002\u0010\u000f\u001a\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012\u001a\u001e\u0010\u000e\u001a\u00020\b*\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u001a\u0015\u0010\u0015\u001a\u00020\b*\u00020\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\u0016\u001a\f\u0010\u0017\u001a\u00020\b*\u00020\u0002H\u0007\u001a\u0018\u0010\u0017\u001a\u00020\b*\u00020\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007\u001a\u001c\u0010\u0017\u001a\u00020\b*\u00020\u00022\u0010\b\u0002\u0010\u000f\u001a\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012\u001a\f\u0010\u0017\u001a\u00020\b*\u00020\fH\u0007\u001a\u0018\u0010\u0017\u001a\u00020\b*\u00020\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007\u001a\u001c\u0010\u0017\u001a\u00020\b*\u00020\f2\u0010\b\u0002\u0010\u000f\u001a\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012\u001a\u0014\u0010\u0018\u001a\u00020\u0005*\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0005H��\u001a\n\u0010\u001a\u001a\u00020\b*\u00020\u0002\u001a\n\u0010\u001a\u001a\u00020\b*\u00020\f\u001a\u001b\u0010\u001b\u001a\u00020\u0010*\u0004\u0018\u00010\u00102\u0006\u0010\u001c\u001a\u00020\fH\u0002¢\u0006\u0002\b\u001d\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b��\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, m815d2 = {"isActive", "", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/coroutines/CoroutineContext;)Z", "DisposableHandle", "Lkotlinx/coroutines/DisposableHandle;", "block", "Lkotlin/Function0;", "", "Job", "Lkotlinx/coroutines/CompletableJob;", "parent", "Lkotlinx/coroutines/Job;", "Job0", "cancel", "cause", "", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "message", "", "cancelAndJoin", "(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelChildren", "disposeOnCompletion", "handle", "ensureActive", "orCancellation", "job", "orCancellation$JobKt__JobKt", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/JobKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/JobKt__JobKt.class */
public final /* synthetic */ class JobKt__JobKt {
    @InternalCoroutinesApi
    public static final DisposableHandle DisposableHandle(final AbstractC15107a<C14989s> aVar) {
        return new DisposableHandle() { // from class: kotlinx.coroutines.JobKt__JobKt$DisposableHandle$1
            @Override // kotlinx.coroutines.DisposableHandle
            public void dispose() {
                AbstractC15107a.this.invoke();
            }
        };
    }

    public static final CompletableJob Job(Job job) {
        return new JobImpl(job);
    }

    public static final void cancel(Job job, String str, Throwable th) {
        job.cancel(ExceptionsKt.CancellationException(str, th));
    }

    public static final /* synthetic */ void cancel(AbstractC15049g gVar) {
        JobKt.cancel(gVar, (CancellationException) null);
    }

    public static final void cancel(AbstractC15049g gVar, CancellationException cancellationException) {
        Job job = (Job) gVar.get(Job.Key);
        if (job != null) {
            job.cancel(cancellationException);
        }
    }

    public static final /* synthetic */ boolean cancel(AbstractC15049g gVar, Throwable th) {
        AbstractC15049g.AbstractC15052b bVar = gVar.get(Job.Key);
        AbstractC15049g.AbstractC15052b bVar2 = bVar;
        if (!(bVar instanceof JobSupport)) {
            bVar2 = null;
        }
        JobSupport jobSupport = (JobSupport) bVar2;
        if (jobSupport == null) {
            return false;
        }
        jobSupport.cancelInternal(orCancellation$JobKt__JobKt(th, jobSupport));
        return true;
    }

    public static /* synthetic */ void cancel$default(Job job, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        JobKt.cancel(job, str, th);
    }

    public static /* synthetic */ void cancel$default(AbstractC15049g gVar, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancel(gVar, cancellationException);
    }

    public static /* synthetic */ boolean cancel$default(AbstractC15049g gVar, Throwable th, int i, Object obj) {
        boolean cancel;
        if ((i & 1) != 0) {
            th = null;
        }
        cancel = cancel(gVar, th);
        return cancel;
    }

    public static final Object cancelAndJoin(Job job, AbstractC15044d<? super C14989s> dVar) {
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        Object join = job.join(dVar);
        return join == C15064c.m478a() ? join : C14989s.f33022a;
    }

    public static final /* synthetic */ void cancelChildren(Job job) {
        JobKt.cancelChildren(job, (CancellationException) null);
    }

    public static final /* synthetic */ void cancelChildren(Job job, Throwable th) {
        for (Job job2 : job.getChildren()) {
            Job job3 = job2;
            if (!(job2 instanceof JobSupport)) {
                job3 = null;
            }
            JobSupport jobSupport = (JobSupport) job3;
            if (jobSupport != null) {
                jobSupport.cancelInternal(orCancellation$JobKt__JobKt(th, job));
            }
        }
    }

    public static final void cancelChildren(Job job, CancellationException cancellationException) {
        for (Job job2 : job.getChildren()) {
            job2.cancel(cancellationException);
        }
    }

    public static final /* synthetic */ void cancelChildren(AbstractC15049g gVar) {
        JobKt.cancelChildren(gVar, (CancellationException) null);
    }

    public static final /* synthetic */ void cancelChildren(AbstractC15049g gVar, Throwable th) {
        Job job = (Job) gVar.get(Job.Key);
        if (job != null) {
            for (Job job2 : job.getChildren()) {
                Job job3 = job2;
                if (!(job2 instanceof JobSupport)) {
                    job3 = null;
                }
                JobSupport jobSupport = (JobSupport) job3;
                if (jobSupport != null) {
                    jobSupport.cancelInternal(orCancellation$JobKt__JobKt(th, job));
                }
            }
        }
    }

    public static final void cancelChildren(AbstractC15049g gVar, CancellationException cancellationException) {
        AbstractC14921e<Job> children;
        Job job = (Job) gVar.get(Job.Key);
        if (!(job == null || (children = job.getChildren()) == null)) {
            for (Job job2 : children) {
                job2.cancel(cancellationException);
            }
        }
    }

    public static /* synthetic */ void cancelChildren$default(Job job, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        cancelChildren(job, th);
    }

    public static /* synthetic */ void cancelChildren$default(Job job, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancelChildren(job, cancellationException);
    }

    public static /* synthetic */ void cancelChildren$default(AbstractC15049g gVar, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        cancelChildren(gVar, th);
    }

    public static /* synthetic */ void cancelChildren$default(AbstractC15049g gVar, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancelChildren(gVar, cancellationException);
    }

    public static final DisposableHandle disposeOnCompletion(Job job, DisposableHandle disposableHandle) {
        return job.invokeOnCompletion(new DisposeOnCompletion(job, disposableHandle));
    }

    public static final void ensureActive(Job job) {
        if (!job.isActive()) {
            throw job.getCancellationException();
        }
    }

    public static final void ensureActive(AbstractC15049g gVar) {
        Job job = (Job) gVar.get(Job.Key);
        if (job != null) {
            JobKt.ensureActive(job);
            return;
        }
        throw new IllegalStateException(("Context cannot be checked for liveness because it does not have a job: " + gVar).toString());
    }

    public static final boolean isActive(AbstractC15049g gVar) {
        Job job = (Job) gVar.get(Job.Key);
        boolean z = true;
        if (job == null || !job.isActive()) {
            z = false;
        }
        return z;
    }

    public static final Throwable orCancellation$JobKt__JobKt(Throwable th, Job job) {
        if (th == null) {
            th = new JobCancellationException("Job was cancelled", null, job);
        }
        return th;
    }
}

package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.scheduling.Task;
import kotlinx.coroutines.scheduling.TaskContext;
import p626l.C14874a;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u000e\b \u0018��*\u0006\b��\u0010\u0001 ��2\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\r\u001a\u0004\u0018\u00010\u000eH��¢\u0006\u0002\b\u0013J\u001f\u0010\u0014\u001a\u0002H\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0010¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00102\b\u0010\u0019\u001a\u0004\u0018\u00010\u0010H��¢\u0006\u0002\b\u001aJ\u0006\u0010\u001b\u001a\u00020\fJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000eH ¢\u0006\u0002\b\u001dR\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bX \u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u001e"}, m815d2 = {"Lkotlinx/coroutines/DispatchedTask;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/SchedulerTask;", "resumeMode", "", "(I)V", "delegate", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "cancelResult", "", IapProductRealmObject.STATE, "", "cause", "", "cancelResult$kotlinx_coroutines_core", "getExceptionalResult", "getExceptionalResult$kotlinx_coroutines_core", "getSuccessfulResult", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "handleFatalException", "exception", "finallyException", "handleFatalException$kotlinx_coroutines_core", "run", "takeState", "takeState$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/DispatchedTask.class */
public abstract class DispatchedTask<T> extends Task {
    public int resumeMode;

    public DispatchedTask(int i) {
        this.resumeMode = i;
    }

    public void cancelResult$kotlinx_coroutines_core(Object obj, Throwable th) {
    }

    public abstract AbstractC15044d<T> getDelegate$kotlinx_coroutines_core();

    public final Throwable getExceptionalResult$kotlinx_coroutines_core(Object obj) {
        boolean z = obj instanceof CompletedExceptionally;
        Throwable th = null;
        if (!z) {
            obj = null;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
        if (completedExceptionally != null) {
            th = completedExceptionally.cause;
        }
        return th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        return obj;
    }

    public final void handleFatalException$kotlinx_coroutines_core(Throwable th, Throwable th2) {
        if (th != null || th2 != null) {
            if (!(th == null || th2 == null)) {
                C14874a.m808a(th, th2);
            }
            if (th == null) {
                th = th2;
            }
            String str = "Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers";
            if (th != null) {
                CoroutineExceptionHandlerKt.handleCoroutineException(getDelegate$kotlinx_coroutines_core().getContext(), new CoroutinesInternalError(str, th));
                return;
            }
            C15149k.m378b();
            throw null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        TaskContext taskContext = this.taskContext;
        try {
            AbstractC15044d<T> delegate$kotlinx_coroutines_core = getDelegate$kotlinx_coroutines_core();
            if (delegate$kotlinx_coroutines_core != null) {
                DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) delegate$kotlinx_coroutines_core;
                AbstractC15044d<T> dVar = dispatchedContinuation.continuation;
                AbstractC15049g context = dVar.getContext();
                Object takeState$kotlinx_coroutines_core = takeState$kotlinx_coroutines_core();
                Object updateThreadContext = ThreadContextKt.updateThreadContext(context, dispatchedContinuation.countOrElement);
                Throwable exceptionalResult$kotlinx_coroutines_core = getExceptionalResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core);
                Job job = DispatchedTaskKt.isCancellableMode(this.resumeMode) ? (Job) context.get(Job.Key) : null;
                if (exceptionalResult$kotlinx_coroutines_core == null && job != null && !job.isActive()) {
                    CancellationException cancellationException = job.getCancellationException();
                    cancelResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core, cancellationException);
                    C14979k.C14980a aVar = C14979k.f33013a;
                    Throwable th = cancellationException;
                    if (DebugKt.getRECOVER_STACK_TRACES()) {
                        th = !(dVar instanceof AbstractC15069e) ? cancellationException : StackTraceRecoveryKt.access$recoverFromStackFrame(cancellationException, (AbstractC15069e) dVar);
                    }
                    Object a = C14982l.m652a(th);
                    C14979k.m657a(a);
                    dVar.resumeWith(a);
                } else if (exceptionalResult$kotlinx_coroutines_core != null) {
                    C14979k.C14980a aVar2 = C14979k.f33013a;
                    Object a2 = C14982l.m652a(exceptionalResult$kotlinx_coroutines_core);
                    C14979k.m657a(a2);
                    dVar.resumeWith(a2);
                } else {
                    T successfulResult$kotlinx_coroutines_core = getSuccessfulResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core);
                    C14979k.C14980a aVar3 = C14979k.f33013a;
                    C14979k.m657a(successfulResult$kotlinx_coroutines_core);
                    dVar.resumeWith(successfulResult$kotlinx_coroutines_core);
                }
                C14989s sVar = C14989s.f33022a;
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                try {
                    C14979k.C14980a aVar4 = C14979k.f33013a;
                    taskContext.afterTask();
                    obj2 = C14989s.f33022a;
                    C14979k.m657a(obj2);
                } catch (Throwable th2) {
                    C14979k.C14980a aVar5 = C14979k.f33013a;
                    obj2 = C14982l.m652a(th2);
                    C14979k.m657a(obj2);
                }
                handleFatalException$kotlinx_coroutines_core(null, C14979k.m656b(obj2));
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
        } catch (Throwable th3) {
            try {
                C14979k.C14980a aVar6 = C14979k.f33013a;
                taskContext.afterTask();
                obj = C14989s.f33022a;
                C14979k.m657a(obj);
            } catch (Throwable th4) {
                C14979k.C14980a aVar7 = C14979k.f33013a;
                obj = C14982l.m652a(th4);
                C14979k.m657a(obj);
            }
            handleFatalException$kotlinx_coroutines_core(th3, C14979k.m656b(obj));
        }
    }

    public abstract Object takeState$kotlinx_coroutines_core();
}

package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.scheduling.Task;
import kotlinx.coroutines.scheduling.TaskContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b \u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002B\u000f\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b\"\u0010#J!\u0010\n\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0010¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H��¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0010¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0015\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0003H ¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001b8 @ X \u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006$"}, d2 = {"Lkotlinx/coroutines/DispatchedTask;", "T", "Lkotlinx/coroutines/scheduling/Task;", "", "state", "", "cause", "", "cancelResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelResult", "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "exception", "finallyException", "handleFatalException$kotlinx_coroutines_core", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)V", "handleFatalException", "run", "()V", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "", "resumeMode", "I", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DispatchedTask.class */
public abstract class DispatchedTask<T> extends Task {
    @JvmField

    /* renamed from: h */
    public int f21165h;

    public DispatchedTask(int i) {
        this.f21165h = i;
    }

    /* renamed from: a */
    public void mo1279a(@Nullable Object obj, @NotNull Throwable th) {
    }

    @NotNull
    /* renamed from: b */
    public abstract Continuation<T> mo1278b();

    @Nullable
    /* renamed from: d */
    public final Throwable m1277d(@Nullable Object obj) {
        boolean z = obj instanceof CompletedExceptionally;
        Throwable th = null;
        if (!z) {
            obj = null;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
        if (completedExceptionally != null) {
            th = completedExceptionally.f21127a;
        }
        return th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public <T> T mo1276e(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: f */
    public final void m1275f(@Nullable Throwable th, @Nullable Throwable th2) {
        if (th != null || th2 != null) {
            if (!(th == null || th2 == null)) {
                ExceptionsKt__ExceptionsKt.m2491a(th, th2);
            }
            if (th == null) {
                th = th2;
            }
            Intrinsics.m1832c(th);
            CoroutineExceptionHandlerKt.m1318a(mo1278b().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
        }
    }

    @Nullable
    /* renamed from: g */
    public abstract Object mo1274g();

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        TaskContext taskContext = this.f24006g;
        try {
            Continuation<T> b = mo1278b();
            if (b != null) {
                DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) b;
                Continuation<T> continuation = dispatchedContinuation.f21161m;
                CoroutineContext context = continuation.getContext();
                Object g = mo1274g();
                Object c = ThreadContextKt.m427c(context, dispatchedContinuation.f21159k);
                Throwable d = m1277d(g);
                Job job = DispatchedTaskKt.m1272b(this.f21165h) ? (Job) context.get(Job.f21198d) : null;
                if (d == null && job != null && !job.isActive()) {
                    CancellationException m = job.mo1119m();
                    mo1279a(g, m);
                    Result.Companion companion = Result.f20418g;
                    Throwable th = m;
                    if (DebugKt.m1305d()) {
                        th = !(continuation instanceof CoroutineStackFrame) ? m : StackTraceRecoveryKt.m456a(m, (CoroutineStackFrame) continuation);
                    }
                    Object a = ResultKt.m2473a(th);
                    Result.m2481b(a);
                    continuation.resumeWith(a);
                } else if (d != null) {
                    Result.Companion companion2 = Result.f20418g;
                    Object a2 = ResultKt.m2473a(d);
                    Result.m2481b(a2);
                    continuation.resumeWith(a2);
                } else {
                    T e = mo1276e(g);
                    Result.Companion companion3 = Result.f20418g;
                    Result.m2481b(e);
                    continuation.resumeWith(e);
                }
                Unit unit = Unit.f20447a;
                ThreadContextKt.m429a(context, c);
                try {
                    Result.Companion companion4 = Result.f20418g;
                    taskContext.mo346k();
                    obj2 = Unit.f20447a;
                    Result.m2481b(obj2);
                } catch (Throwable th2) {
                    Result.Companion companion5 = Result.f20418g;
                    obj2 = ResultKt.m2473a(th2);
                    Result.m2481b(obj2);
                }
                m1275f(null, Result.m2479d(obj2));
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
        } catch (Throwable th3) {
            try {
                Result.Companion companion6 = Result.f20418g;
                taskContext.mo346k();
                obj = Unit.f20447a;
                Result.m2481b(obj);
            } catch (Throwable th4) {
                Result.Companion companion7 = Result.f20418g;
                obj = ResultKt.m2473a(th4);
                Result.m2481b(obj);
            }
            m1275f(th3, Result.m2479d(obj));
        }
    }
}

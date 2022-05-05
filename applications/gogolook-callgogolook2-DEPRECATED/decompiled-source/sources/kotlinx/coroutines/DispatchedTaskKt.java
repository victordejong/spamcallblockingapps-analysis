package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.ThreadContextKt;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a \u0010\f\u001a\u00020\r\"\u0004\b��\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2\u0006\u0010\u0010\u001a\u00020\u0001H��\u001a.\u0010\u0011\u001a\u00020\r\"\u0004\b��\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u00132\u0006\u0010\u0014\u001a\u00020\u0001H��\u001a\u0010\u0010\u0015\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u000fH\u0002\u001a\u0019\u0010\u0016\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\b\u001a'\u0010\u0019\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u001dH\u0080\b\"\u0016\u0010��\u001a\u00020\u00018��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00018��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u0007\u0010\u0003\"\u0018\u0010\b\u001a\u00020\t*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\n\"\u0018\u0010\u000b\u001a\u00020\t*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\n¨\u0006\u001e"}, m815d2 = {"MODE_ATOMIC_DEFAULT", "", "MODE_ATOMIC_DEFAULT$annotations", "()V", "MODE_CANCELLABLE", "MODE_CANCELLABLE$annotations", "MODE_UNDISPATCHED", "MODE_UNDISPATCHED$annotations", "isCancellableMode", "", "(I)Z", "isDispatchedMode", "dispatch", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/DispatchedTask;", "mode", "resume", "delegate", "Lkotlin/coroutines/Continuation;", "useMode", "resumeUnconfined", "resumeWithStackTrace", "exception", "", "runUnconfinedEventLoop", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "block", "Lkotlin/Function0;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/DispatchedTaskKt.class */
public final class DispatchedTaskKt {
    public static final int MODE_ATOMIC_DEFAULT = 0;
    public static final int MODE_CANCELLABLE = 1;
    public static final int MODE_UNDISPATCHED = 2;

    public static /* synthetic */ void MODE_ATOMIC_DEFAULT$annotations() {
    }

    public static /* synthetic */ void MODE_CANCELLABLE$annotations() {
    }

    public static /* synthetic */ void MODE_UNDISPATCHED$annotations() {
    }

    public static final <T> void dispatch(DispatchedTask<? super T> dispatchedTask, int i) {
        AbstractC15044d<? super T> delegate$kotlinx_coroutines_core = dispatchedTask.getDelegate$kotlinx_coroutines_core();
        if (!isDispatchedMode(i) || !(delegate$kotlinx_coroutines_core instanceof DispatchedContinuation) || isCancellableMode(i) != isCancellableMode(dispatchedTask.resumeMode)) {
            resume(dispatchedTask, delegate$kotlinx_coroutines_core, i);
            return;
        }
        CoroutineDispatcher coroutineDispatcher = ((DispatchedContinuation) delegate$kotlinx_coroutines_core).dispatcher;
        AbstractC15049g context = delegate$kotlinx_coroutines_core.getContext();
        if (coroutineDispatcher.isDispatchNeeded(context)) {
            coroutineDispatcher.dispatch(context, dispatchedTask);
        } else {
            resumeUnconfined(dispatchedTask);
        }
    }

    public static final boolean isCancellableMode(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        return z;
    }

    public static final boolean isDispatchedMode(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    public static final <T> void resume(DispatchedTask<? super T> dispatchedTask, AbstractC15044d<? super T> dVar, int i) {
        Throwable th;
        Object obj;
        Object takeState$kotlinx_coroutines_core = dispatchedTask.takeState$kotlinx_coroutines_core();
        Throwable exceptionalResult$kotlinx_coroutines_core = dispatchedTask.getExceptionalResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            th = exceptionalResult$kotlinx_coroutines_core;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                th = !(dVar instanceof AbstractC15069e) ? exceptionalResult$kotlinx_coroutines_core : StackTraceRecoveryKt.recoverFromStackFrame(exceptionalResult$kotlinx_coroutines_core, (AbstractC15069e) dVar);
            }
        } else {
            th = null;
        }
        if (th != null) {
            C14979k.C14980a aVar = C14979k.f33013a;
            obj = C14982l.m652a(th);
        } else {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            obj = takeState$kotlinx_coroutines_core;
        }
        C14979k.m657a(obj);
        if (i == 0) {
            dVar.resumeWith(obj);
        } else if (i == 1) {
            DispatchedContinuationKt.resumeCancellableWith(dVar, obj);
        } else if (i != 2) {
            throw new IllegalStateException(("Invalid mode " + i).toString());
        } else if (dVar != null) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar;
            AbstractC15049g context = dispatchedContinuation.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, dispatchedContinuation.countOrElement);
            try {
                dispatchedContinuation.continuation.resumeWith(obj);
                C14989s sVar = C14989s.f33022a;
            } finally {
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
            }
        } else {
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
        }
    }

    public static final void resumeUnconfined(DispatchedTask<?> dispatchedTask) {
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedTask);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            resume(dispatchedTask, dispatchedTask.getDelegate$kotlinx_coroutines_core(), 2);
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final void resumeWithStackTrace(AbstractC15044d<?> dVar, Throwable th) {
        C14979k.C14980a aVar = C14979k.f33013a;
        Throwable th2 = th;
        if (DebugKt.getRECOVER_STACK_TRACES()) {
            th2 = !(dVar instanceof AbstractC15069e) ? th : StackTraceRecoveryKt.recoverFromStackFrame(th, (AbstractC15069e) dVar);
        }
        Object a = C14982l.m652a(th2);
        C14979k.m657a(a);
        dVar.resumeWith(a);
    }

    public static final void runUnconfinedEventLoop(DispatchedTask<?> dispatchedTask, EventLoop eventLoop, AbstractC15107a<C14989s> aVar) {
        eventLoop.incrementUseCount(true);
        try {
            aVar.invoke();
            do {
            } while (eventLoop.processUnconfinedEvent());
            C15148j.m389b(1);
        } catch (Throwable th) {
            try {
                dispatchedTask.handleFatalException$kotlinx_coroutines_core(th, null);
                C15148j.m389b(1);
            } catch (Throwable th2) {
                C15148j.m389b(1);
                eventLoop.decrementUseCount(true);
                C15148j.m390a(1);
                throw th2;
            }
        }
        eventLoop.decrementUseCount(true);
        C15148j.m390a(1);
    }
}

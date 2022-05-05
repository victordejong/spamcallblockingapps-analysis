package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadContextKt;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0082\b\u001a.\u0010\u0011\u001a\u00020\u0010\"\u0004\b��\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0015H\u0007ø\u0001��¢\u0006\u0002\u0010\u0016\u001a\u0012\u0010\u0017\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00100\bH��\"\u0016\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, m815d2 = {"REUSABLE_CLAIMED", "Lkotlinx/coroutines/internal/Symbol;", "REUSABLE_CLAIMED$annotations", "()V", "UNDEFINED", "UNDEFINED$annotations", "executeUnconfined", "", "Lkotlinx/coroutines/DispatchedContinuation;", "contState", "", "mode", "", "doYield", "block", "Lkotlin/Function0;", "", "resumeCancellableWith", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "result", "Lkotlin/Result;", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "yieldUndispatched", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/DispatchedContinuationKt.class */
public final class DispatchedContinuationKt {
    public static final Symbol UNDEFINED = new Symbol("UNDEFINED");
    public static final Symbol REUSABLE_CLAIMED = new Symbol("REUSABLE_CLAIMED");

    public static /* synthetic */ void REUSABLE_CLAIMED$annotations() {
    }

    public static /* synthetic */ void UNDEFINED$annotations() {
    }

    public static final /* synthetic */ Symbol access$getUNDEFINED$p() {
        return UNDEFINED;
    }

    public static final boolean executeUnconfined(DispatchedContinuation<?> dispatchedContinuation, Object obj, int i, boolean z, AbstractC15107a<C14989s> aVar) {
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        boolean z2 = false;
        if (z && eventLoop$kotlinx_coroutines_core.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = obj;
            dispatchedContinuation.resumeMode = i;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
            z2 = true;
        } else {
            eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
            try {
                aVar.invoke();
                do {
                } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
                C15148j.m389b(1);
            } catch (Throwable th) {
                try {
                    dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th, null);
                    C15148j.m389b(1);
                } catch (Throwable th2) {
                    C15148j.m389b(1);
                    eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
                    C15148j.m390a(1);
                    throw th2;
                }
            }
            eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
            C15148j.m390a(1);
        }
        return z2;
    }

    public static /* synthetic */ boolean executeUnconfined$default(DispatchedContinuation dispatchedContinuation, Object obj, int i, boolean z, AbstractC15107a aVar, int i2, Object obj2) {
        boolean z2 = false;
        if ((i2 & 4) != 0) {
            z = false;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (z && eventLoop$kotlinx_coroutines_core.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = obj;
            dispatchedContinuation.resumeMode = i;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
            z2 = true;
        } else {
            eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
            try {
                aVar.invoke();
                do {
                } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
                C15148j.m389b(1);
            } catch (Throwable th) {
                try {
                    dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th, null);
                    C15148j.m389b(1);
                } catch (Throwable th2) {
                    C15148j.m389b(1);
                    eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
                    C15148j.m390a(1);
                    throw th2;
                }
            }
            eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
            C15148j.m390a(1);
        }
        return z2;
    }

    @InternalCoroutinesApi
    public static final <T> void resumeCancellableWith(AbstractC15044d<? super T> dVar, Object obj) {
        boolean z;
        if (dVar instanceof DispatchedContinuation) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar;
            Object state = CompletedExceptionallyKt.toState(obj);
            if (dispatchedContinuation.dispatcher.isDispatchNeeded(dispatchedContinuation.getContext())) {
                dispatchedContinuation._state = state;
                dispatchedContinuation.resumeMode = 1;
                dispatchedContinuation.dispatcher.dispatch(dispatchedContinuation.getContext(), dispatchedContinuation);
                return;
            }
            EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
            if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
                dispatchedContinuation._state = state;
                dispatchedContinuation.resumeMode = 1;
                eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
                return;
            }
            eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
            try {
                Job job = (Job) dispatchedContinuation.getContext().get(Job.Key);
                if (job == null || job.isActive()) {
                    z = false;
                } else {
                    CancellationException cancellationException = job.getCancellationException();
                    C14979k.C14980a aVar = C14979k.f33013a;
                    Object a = C14982l.m652a((Throwable) cancellationException);
                    C14979k.m657a(a);
                    dispatchedContinuation.resumeWith(a);
                    z = true;
                }
                if (!z) {
                    AbstractC15049g context = dispatchedContinuation.getContext();
                    Object updateThreadContext = ThreadContextKt.updateThreadContext(context, dispatchedContinuation.countOrElement);
                    dispatchedContinuation.continuation.resumeWith(obj);
                    C14989s sVar = C14989s.f33022a;
                    ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                }
                do {
                } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        dVar.resumeWith(obj);
    }

    public static final boolean yieldUndispatched(DispatchedContinuation<? super C14989s> dispatchedContinuation) {
        C14989s sVar = C14989s.f33022a;
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        boolean z = false;
        if (!eventLoop$kotlinx_coroutines_core.isUnconfinedQueueEmpty()) {
            if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
                dispatchedContinuation._state = sVar;
                dispatchedContinuation.resumeMode = 1;
                eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
                z = true;
            } else {
                eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
                try {
                    dispatchedContinuation.run();
                    do {
                    } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }
        return z;
    }
}

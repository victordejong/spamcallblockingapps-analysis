package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a\"\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��\u001a3\u0010\u0005\u001a\u0002H\u0002\"\u0004\b��\u0010\u00022\u001a\b\u0004\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0087Hø\u0001��¢\u0006\u0002\u0010\n\u001a=\u0010\u0005\u001a\u0002H\u0002\"\u0004\b��\u0010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\f2\u001a\b\u0004\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0087Hø\u0001��¢\u0006\u0002\u0010\r\u001a3\u0010\u000e\u001a\u0002H\u0002\"\u0004\b��\u0010\u00022\u001a\b\u0004\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0080Hø\u0001��¢\u0006\u0002\u0010\n\u001a3\u0010\u000f\u001a\u0002H\u0002\"\u0004\b��\u0010\u00022\u001a\b\u0004\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0086Hø\u0001��¢\u0006\u0002\u0010\n\u001a\u0018\u0010\u0010\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007\u001a\u0018\u0010\u0013\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0014\u001a\u00020\u0015H��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, m815d2 = {"getOrCreateCancellableContinuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", ExifInterface.GPS_DIRECTION_TRUE, "delegate", "Lkotlin/coroutines/Continuation;", "suspendAtomicCancellableCoroutine", "block", "Lkotlin/Function1;", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "holdCancellability", "", "(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "suspendAtomicCancellableCoroutineReusable", "suspendCancellableCoroutine", "disposeOnCancellation", "handle", "Lkotlinx/coroutines/DisposableHandle;", "removeOnCancellation", "node", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CancellableContinuationKt.class */
public final class CancellableContinuationKt {
    @InternalCoroutinesApi
    public static final void disposeOnCancellation(CancellableContinuation<?> cancellableContinuation, DisposableHandle disposableHandle) {
        cancellableContinuation.invokeOnCancellation(new DisposeOnCancel(disposableHandle));
    }

    public static final <T> CancellableContinuationImpl<T> getOrCreateCancellableContinuation(AbstractC15044d<? super T> dVar) {
        if (!(dVar instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl<>(dVar, 0);
        }
        CancellableContinuationImpl<T> claimReusableCancellableContinuation = ((DispatchedContinuation) dVar).claimReusableCancellableContinuation();
        if (claimReusableCancellableContinuation != null) {
            if (!claimReusableCancellableContinuation.resetState$kotlinx_coroutines_core()) {
                claimReusableCancellableContinuation = null;
            }
            if (claimReusableCancellableContinuation != null) {
                return claimReusableCancellableContinuation;
            }
        }
        return new CancellableContinuationImpl<>(dVar, 0);
    }

    public static final void removeOnCancellation(CancellableContinuation<?> cancellableContinuation, LockFreeLinkedListNode lockFreeLinkedListNode) {
        cancellableContinuation.invokeOnCancellation(new RemoveOnCancel(lockFreeLinkedListNode));
    }

    @InternalCoroutinesApi
    public static final <T> Object suspendAtomicCancellableCoroutine(AbstractC15118l<? super CancellableContinuation<? super T>, C14989s> lVar, AbstractC15044d<? super T> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 0);
        lVar.invoke(cancellableContinuationImpl);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    @InternalCoroutinesApi
    public static final <T> Object suspendAtomicCancellableCoroutine(boolean z, AbstractC15118l<? super CancellableContinuation<? super T>, C14989s> lVar, AbstractC15044d<? super T> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 0);
        lVar.invoke(cancellableContinuationImpl);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    @InternalCoroutinesApi
    public static final Object suspendAtomicCancellableCoroutine$$forInline(AbstractC15118l lVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 0);
        lVar.invoke(cancellableContinuationImpl);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        C15148j.m388c(1);
        return result;
    }

    @InternalCoroutinesApi
    public static final Object suspendAtomicCancellableCoroutine$$forInline(boolean z, AbstractC15118l lVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 0);
        lVar.invoke(cancellableContinuationImpl);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        C15148j.m388c(1);
        return result;
    }

    public static /* synthetic */ Object suspendAtomicCancellableCoroutine$default(boolean z, AbstractC15118l lVar, AbstractC15044d dVar, int i, Object obj) {
        C15148j.m388c(0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 0);
        lVar.invoke(cancellableContinuationImpl);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        C15148j.m388c(1);
        return result;
    }

    public static final <T> Object suspendAtomicCancellableCoroutineReusable(AbstractC15118l<? super CancellableContinuation<? super T>, C14989s> lVar, AbstractC15044d<? super T> dVar) {
        CancellableContinuationImpl orCreateCancellableContinuation = getOrCreateCancellableContinuation(C15059b.m481a(dVar));
        lVar.invoke(orCreateCancellableContinuation);
        Object result = orCreateCancellableContinuation.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    public static final Object suspendAtomicCancellableCoroutineReusable$$forInline(AbstractC15118l lVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        CancellableContinuationImpl orCreateCancellableContinuation = getOrCreateCancellableContinuation(C15059b.m481a(dVar));
        lVar.invoke(orCreateCancellableContinuation);
        Object result = orCreateCancellableContinuation.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        C15148j.m388c(1);
        return result;
    }

    public static final <T> Object suspendCancellableCoroutine(AbstractC15118l<? super CancellableContinuation<? super T>, C14989s> lVar, AbstractC15044d<? super T> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        lVar.invoke(cancellableContinuationImpl);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    public static final Object suspendCancellableCoroutine$$forInline(AbstractC15118l lVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        lVar.invoke(cancellableContinuationImpl);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        C15148j.m388c(1);
        return result;
    }
}

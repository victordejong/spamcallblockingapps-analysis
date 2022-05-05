package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��ª\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0011\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u00028��0{2\b\u0012\u0004\u0012\u00028��0|2\u00060cj\u0002`dB\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J!\u0010\u0016\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000e\u001a\u00020\rH\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\fJ\u000f\u0010\u001d\u001a\u00020\nH��¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001e\u0010\u001cJ\u0017\u0010 \u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0011\u0010&\u001a\u0004\u0018\u00010\bH\u0001¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\n\u0018\u00010(j\u0004\u0018\u0001`)H\u0016¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020\nH\u0016¢\u0006\u0004\b/\u0010\u001cJ\u001e\u00102\u001a\u00020\n2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\n00H\u0082\b¢\u0006\u0004\b2\u00103J8\u00109\u001a\u00020\n2'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\n04j\u0002`7H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u000fH\u0002¢\u0006\u0004\b;\u0010\u0018J8\u0010=\u001a\u00020<2'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\n04j\u0002`7H\u0002¢\u0006\u0004\b=\u0010>JB\u0010?\u001a\u00020\n2'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\n04j\u0002`72\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b?\u0010@J\u000f\u0010B\u001a\u00020AH\u0014¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH��¢\u0006\u0004\bD\u0010EJ\u000f\u0010H\u001a\u00020\u000fH��¢\u0006\u0004\bG\u0010\u0018J:\u0010K\u001a\u00020\n2\u0006\u0010I\u001a\u00028��2!\u0010J\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\n04H\u0016¢\u0006\u0004\bK\u0010LJ#\u0010N\u001a\u0004\u0018\u00010M2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\bN\u0010OJ \u0010R\u001a\u00020\n2\f\u0010Q\u001a\b\u0012\u0004\u0012\u00028��0PH\u0016ø\u0001��¢\u0006\u0004\bR\u0010\fJ\u000f\u0010S\u001a\u00020\nH\u0002¢\u0006\u0004\bS\u0010\u001cJ\u0011\u0010U\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\bT\u0010'J\u000f\u0010V\u001a\u00020AH\u0016¢\u0006\u0004\bV\u0010CJ\u000f\u0010W\u001a\u00020\u000fH\u0002¢\u0006\u0004\bW\u0010\u0018J#\u0010W\u001a\u0004\u0018\u00010\b2\u0006\u0010I\u001a\u00028��2\b\u0010X\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\bW\u0010YJ\u0019\u0010[\u001a\u0004\u0018\u00010\b2\u0006\u0010Z\u001a\u00020\rH\u0016¢\u0006\u0004\b[\u0010\\J\u000f\u0010]\u001a\u00020\u000fH\u0002¢\u0006\u0004\b]\u0010\u0018J\u001b\u0010_\u001a\u00020\n*\u00020^2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0004\b_\u0010`J\u001b\u0010a\u001a\u00020\n*\u00020^2\u0006\u0010Z\u001a\u00020\rH\u0016¢\u0006\u0004\ba\u0010bR\u001e\u0010g\u001a\n\u0018\u00010cj\u0004\u0018\u0001`d8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\be\u0010fR\u001c\u0010i\u001a\u00020h8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bi\u0010j\u001a\u0004\bk\u0010lR\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u00028��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010m\u001a\u0004\bn\u0010oR\u0016\u0010p\u001a\u00020\u000f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bp\u0010\u0018R\u0016\u0010q\u001a\u00020\u000f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bq\u0010\u0018R\u0016\u0010r\u001a\u00020\u000f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\br\u0010\u0018R(\u0010x\u001a\u0004\u0018\u00010s2\b\u0010I\u001a\u0004\u0018\u00010s8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\b8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\by\u0010'\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006z"}, m815d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "delegate", "", "resumeMode", "<init>", "(Lkotlin/coroutines/Continuation;I)V", "", "proposedUpdate", "", "alreadyResumedError", "(Ljava/lang/Object;)V", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "cancelLater", IapProductRealmObject.STATE, "cancelResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelResult", "checkCompleted", "()Z", "token", "completeResume", "detachChild$kotlinx_coroutines_core", "()V", "detachChild", "detachChildIfNonResuable", "mode", "dispatchResume", "(I)V", "Lkotlinx/coroutines/Job;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", "getResult", "()Ljava/lang/Object;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "initCancellability", "Lkotlin/Function0;", "block", "invokeHandlerSafely", "(Lkotlin/jvm/functions/Function0;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "invokeOnCancellation", "(Lkotlin/jvm/functions/Function1;)V", "isReusable", "Lkotlinx/coroutines/CancelHandler;", "makeHandler", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;", "multipleHandlersError", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V", "", "nameString", "()Ljava/lang/String;", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "resetState$kotlinx_coroutines_core", "resetState", C13032a.f29462d, "onCancellation", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/CancelledContinuation;", "resumeImpl", "(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;", "Lkotlin/Result;", "result", "resumeWith", "setupCancellation", "takeState$kotlinx_coroutines_core", "takeState", "toString", "tryResume", "idempotent", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "trySuspend", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "isActive", "isCancelled", "isCompleted", "Lkotlinx/coroutines/DisposableHandle;", "getParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setParentHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "parentHandle", "getState$kotlinx_coroutines_core", "kotlinx-coroutines-core", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CancellableContinuationImpl.class */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, AbstractC15069e {
    public static final AtomicIntegerFieldUpdater _decision$FU = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decision");
    public static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state");
    public final AbstractC15049g context;
    public final AbstractC15044d<T> delegate;
    public volatile int _decision = 0;
    public volatile Object _state = Active.INSTANCE;
    public volatile Object _parentHandle = null;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(AbstractC15044d<? super T> dVar, int i) {
        super(i);
        this.delegate = dVar;
        this.context = this.delegate.getContext();
    }

    private final void alreadyResumedError(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final boolean cancelLater(Throwable th) {
        if (this.resumeMode != 0) {
            return false;
        }
        AbstractC15044d<T> dVar = this.delegate;
        AbstractC15044d<T> dVar2 = dVar;
        if (!(dVar instanceof DispatchedContinuation)) {
            dVar2 = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar2;
        if (dispatchedContinuation != null) {
            return dispatchedContinuation.postponeCancellation(th);
        }
        return false;
    }

    private final boolean checkCompleted() {
        boolean isCompleted = isCompleted();
        if (this.resumeMode != 0) {
            return isCompleted;
        }
        AbstractC15044d<T> dVar = this.delegate;
        AbstractC15044d<T> dVar2 = dVar;
        if (!(dVar instanceof DispatchedContinuation)) {
            dVar2 = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar2;
        boolean z = isCompleted;
        if (dispatchedContinuation != null) {
            Throwable checkPostponedCancellation = dispatchedContinuation.checkPostponedCancellation(this);
            z = isCompleted;
            if (checkPostponedCancellation != null) {
                if (!isCompleted) {
                    cancel(checkPostponedCancellation);
                }
                z = true;
            }
        }
        return z;
    }

    private final void detachChildIfNonResuable() {
        if (!isReusable()) {
            detachChild$kotlinx_coroutines_core();
        }
    }

    private final void dispatchResume(int i) {
        if (!tryResume()) {
            DispatchedTaskKt.dispatch(this, i);
        }
    }

    private final DisposableHandle getParentHandle() {
        return (DisposableHandle) this._parentHandle;
    }

    private final void invokeHandlerSafely(AbstractC15107a<C14989s> aVar) {
        try {
            aVar.invoke();
        } catch (Throwable th) {
            AbstractC15049g context = getContext();
            CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th));
        }
    }

    private final boolean isReusable() {
        AbstractC15044d<T> dVar = this.delegate;
        return (dVar instanceof DispatchedContinuation) && ((DispatchedContinuation) dVar).isReusable();
    }

    private final CancelHandler makeHandler(AbstractC15118l<? super Throwable, C14989s> lVar) {
        return lVar instanceof CancelHandler ? (CancelHandler) lVar : new InvokeOnCancel(lVar);
    }

    private final void multipleHandlersError(AbstractC15118l<? super Throwable, C14989s> lVar, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + lVar + ", already has " + obj).toString());
    }

    private final CancelledContinuation resumeImpl(Object obj, int i) {
        while (true) {
            Object obj2 = this._state;
            if (!(obj2 instanceof NotCompleted)) {
                if (obj2 instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                    if (cancelledContinuation.makeResumed()) {
                        return cancelledContinuation;
                    }
                }
                alreadyResumedError(obj);
            } else if (_state$FU.compareAndSet(this, obj2, obj)) {
                detachChildIfNonResuable();
                dispatchResume(i);
                return null;
            }
        }
    }

    private final void setParentHandle(DisposableHandle disposableHandle) {
        this._parentHandle = disposableHandle;
    }

    private final void setupCancellation() {
        Job job;
        if (!checkCompleted() && getParentHandle() == null && (job = (Job) this.delegate.getContext().get(Job.Key)) != null) {
            job.start();
            DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, false, new ChildContinuation(job, this), 2, null);
            setParentHandle(invokeOnCompletion$default);
            if (isCompleted() && !isReusable()) {
                invokeOnCompletion$default.dispose();
                setParentHandle(NonDisposableHandle.INSTANCE);
            }
        }
    }

    private final boolean tryResume() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!_decision$FU.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean trySuspend() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!_decision$FU.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean cancel(Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
            z = obj instanceof CancelHandler;
        } while (!_state$FU.compareAndSet(this, obj, new CancelledContinuation(this, th, z)));
        if (z) {
            try {
                ((CancelHandler) obj).invoke(th);
            } catch (Throwable th2) {
                AbstractC15049g context = getContext();
                CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
            }
        }
        detachChildIfNonResuable();
        dispatchResume(0);
        return true;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelResult$kotlinx_coroutines_core(Object obj, Throwable th) {
        if (obj instanceof CompletedWithCancellation) {
            try {
                ((CompletedWithCancellation) obj).onCancellation.invoke(th);
            } catch (Throwable th2) {
                AbstractC15049g context = getContext();
                CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
            }
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void completeResume(Object obj) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(obj == CancellableContinuationImplKt.RESUME_TOKEN)) {
                throw new AssertionError();
            }
        }
        dispatchResume(this.resumeMode);
    }

    public final void detachChild$kotlinx_coroutines_core() {
        DisposableHandle parentHandle = getParentHandle();
        if (parentHandle != null) {
            parentHandle.dispose();
        }
        setParentHandle(NonDisposableHandle.INSTANCE);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public AbstractC15069e getCallerFrame() {
        AbstractC15044d<T> dVar = this.delegate;
        AbstractC15044d<T> dVar2 = dVar;
        if (!(dVar instanceof AbstractC15069e)) {
            dVar2 = null;
        }
        return (AbstractC15069e) dVar2;
    }

    @Override // p626l.p634w.AbstractC15044d
    public AbstractC15049g getContext() {
        return this.context;
    }

    public Throwable getContinuationCancellationCause(Job job) {
        return job.getCancellationException();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final AbstractC15044d<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    public final Object getResult() {
        Job job;
        setupCancellation();
        if (trySuspend()) {
            return C15064c.m478a();
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            Throwable th = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
            Throwable th2 = th;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                th2 = StackTraceRecoveryKt.access$recoverFromStackFrame(th, this);
            }
            throw th2;
        } else if (this.resumeMode != 1 || (job = (Job) getContext().get(Job.Key)) == null || job.isActive()) {
            return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        } else {
            CancellationException cancellationException = job.getCancellationException();
            cancelResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
            Throwable th3 = cancellationException;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                th3 = StackTraceRecoveryKt.access$recoverFromStackFrame(cancellationException, this);
            }
            throw th3;
        }
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final Object getState$kotlinx_coroutines_core() {
        return this._state;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        T t;
        if (obj instanceof CompletedIdempotentResult) {
            t = (T) ((CompletedIdempotentResult) obj).result;
        } else {
            t = (T) obj;
            if (obj instanceof CompletedWithCancellation) {
                t = (T) ((CompletedWithCancellation) obj).result;
            }
        }
        return t;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public /* synthetic */ void initCancellability() {
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void invokeOnCancellation(AbstractC15118l<? super Throwable, C14989s> lVar) {
        Throwable th = null;
        CancelHandler cancelHandler = null;
        while (true) {
            Object obj = this._state;
            if (obj instanceof Active) {
                CancelHandler makeHandler = cancelHandler != null ? cancelHandler : makeHandler(lVar);
                cancelHandler = makeHandler;
                if (_state$FU.compareAndSet(this, obj, makeHandler)) {
                    return;
                }
            } else if (obj instanceof CancelHandler) {
                multipleHandlersError(lVar, obj);
            } else if (obj instanceof CancelledContinuation) {
                if (!((CancelledContinuation) obj).makeHandled()) {
                    multipleHandlersError(lVar, obj);
                }
                Object obj2 = obj;
                try {
                    if (!(obj instanceof CompletedExceptionally)) {
                        obj2 = null;
                    }
                    CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj2;
                    if (completedExceptionally != null) {
                        th = completedExceptionally.cause;
                    }
                    lVar.invoke(th);
                    return;
                } catch (Throwable th2) {
                    AbstractC15049g context = getContext();
                    CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isActive() {
        return getState$kotlinx_coroutines_core() instanceof NotCompleted;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCancelled() {
        return getState$kotlinx_coroutines_core() instanceof CancelledContinuation;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof NotCompleted);
    }

    public String nameString() {
        return "CancellableContinuation";
    }

    public final void parentCancelled$kotlinx_coroutines_core(Throwable th) {
        if (!cancelLater(th)) {
            cancel(th);
            detachChildIfNonResuable();
        }
    }

    public final boolean resetState$kotlinx_coroutines_core() {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(getParentHandle() != NonDisposableHandle.INSTANCE)) {
                throw new AssertionError();
            }
        }
        Object obj = this._state;
        if (DebugKt.getASSERTIONS_ENABLED() && !(!(obj instanceof NotCompleted))) {
            throw new AssertionError();
        } else if (obj instanceof CompletedIdempotentResult) {
            detachChild$kotlinx_coroutines_core();
            return false;
        } else {
            this._decision = 0;
            this._state = Active.INSTANCE;
            return true;
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resume(T t, AbstractC15118l<? super Throwable, C14989s> lVar) {
        CancelledContinuation resumeImpl = resumeImpl(new CompletedWithCancellation(t, lVar), this.resumeMode);
        if (resumeImpl != null) {
            try {
                lVar.invoke(resumeImpl.cause);
            } catch (Throwable th) {
                AbstractC15049g context = getContext();
                CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th));
            }
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t) {
        AbstractC15044d<T> dVar = this.delegate;
        boolean z = dVar instanceof DispatchedContinuation;
        CoroutineDispatcher coroutineDispatcher2 = null;
        if (!z) {
            dVar = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar;
        if (dispatchedContinuation != null) {
            coroutineDispatcher2 = dispatchedContinuation.dispatcher;
        }
        resumeImpl(t, coroutineDispatcher2 == coroutineDispatcher ? 2 : this.resumeMode);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatchedWithException(CoroutineDispatcher coroutineDispatcher, Throwable th) {
        AbstractC15044d<T> dVar = this.delegate;
        CoroutineDispatcher coroutineDispatcher2 = null;
        if (!(dVar instanceof DispatchedContinuation)) {
            dVar = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar;
        int i = 2;
        CompletedExceptionally completedExceptionally = new CompletedExceptionally(th, false, 2, null);
        if (dispatchedContinuation != null) {
            coroutineDispatcher2 = dispatchedContinuation.dispatcher;
        }
        if (coroutineDispatcher2 != coroutineDispatcher) {
            i = this.resumeMode;
        }
        resumeImpl(completedExceptionally, i);
    }

    @Override // p626l.p634w.AbstractC15044d
    public void resumeWith(Object obj) {
        resumeImpl(CompletedExceptionallyKt.toState(obj, this), this.resumeMode);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    public String toString() {
        return nameString() + '(' + DebugStringsKt.toDebugString(this.delegate) + "){" + getState$kotlinx_coroutines_core() + "}@" + DebugStringsKt.getHexAddress(this);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object tryResume(T t, Object obj) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof NotCompleted)) {
                Symbol symbol = null;
                if (obj2 instanceof CompletedIdempotentResult) {
                    CompletedIdempotentResult completedIdempotentResult = (CompletedIdempotentResult) obj2;
                    symbol = null;
                    if (completedIdempotentResult.idempotentResume == obj) {
                        if (DebugKt.getASSERTIONS_ENABLED()) {
                            if (!(completedIdempotentResult.result == t)) {
                                throw new AssertionError();
                            }
                        }
                        symbol = CancellableContinuationImplKt.RESUME_TOKEN;
                    }
                }
                return symbol;
            }
        } while (!_state$FU.compareAndSet(this, obj2, obj == null ? t : new CompletedIdempotentResult(obj, t)));
        detachChildIfNonResuable();
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object tryResumeWithException(Throwable th) {
        Object obj;
        do {
            obj = this._state;
            if (!(obj instanceof NotCompleted)) {
                return null;
            }
        } while (!_state$FU.compareAndSet(this, obj, new CompletedExceptionally(th, false, 2, null)));
        detachChildIfNonResuable();
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }
}

package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��¬\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0011\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u0010k\u001a\b\u0012\u0004\u0012\u00028��0j\u0012\u0006\u0010J\u001a\u00020\u001c¢\u0006\u0004\by\u0010zJ\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\tJ\u000f\u0010\u001a\u001a\u00020\u0007H��¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0011\u0010$\u001a\u0004\u0018\u00010\u0005H\u0001¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\n\u0018\u00010&j\u0004\u0018\u0001`'H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010,\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0010¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020\u0007H\u0016¢\u0006\u0004\b-\u0010\u0019J\u001e\u00100\u001a\u00020\u00072\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00070.H\u0082\b¢\u0006\u0004\b0\u00101J8\u00107\u001a\u00020\u00072'\u00106\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000702j\u0002`5H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\fH\u0002¢\u0006\u0004\b9\u0010\u0015J8\u0010;\u001a\u00020:2'\u00106\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000702j\u0002`5H\u0002¢\u0006\u0004\b;\u0010<JB\u0010=\u001a\u00020\u00072'\u00106\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000702j\u0002`52\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010@\u001a\u00020?H\u0014¢\u0006\u0004\b@\u0010AJ\u0017\u0010D\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH��¢\u0006\u0004\bB\u0010CJ\u000f\u0010E\u001a\u00020\fH\u0001¢\u0006\u0004\bE\u0010\u0015J:\u0010H\u001a\u00020\u00072\u0006\u0010F\u001a\u00028��2!\u0010G\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000702H\u0016¢\u0006\u0004\bH\u0010IJ#\u0010L\u001a\u0004\u0018\u00010K2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010J\u001a\u00020\u001cH\u0002¢\u0006\u0004\bL\u0010MJ \u0010P\u001a\u00020\u00072\f\u0010O\u001a\b\u0012\u0004\u0012\u00028��0NH\u0016ø\u0001��¢\u0006\u0004\bP\u0010\tJ\u000f\u0010Q\u001a\u00020\u0007H\u0002¢\u0006\u0004\bQ\u0010\u0019J\u0011\u0010S\u001a\u0004\u0018\u00010\u0005H\u0010¢\u0006\u0004\bR\u0010%J\u000f\u0010T\u001a\u00020?H\u0016¢\u0006\u0004\bT\u0010AJ\u000f\u0010U\u001a\u00020\fH\u0002¢\u0006\u0004\bU\u0010\u0015J#\u0010U\u001a\u0004\u0018\u00010\u00052\u0006\u0010F\u001a\u00028��2\b\u0010V\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\bU\u0010WJ\u0019\u0010Y\u001a\u0004\u0018\u00010\u00052\u0006\u0010X\u001a\u00020\nH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\fH\u0002¢\u0006\u0004\b[\u0010\u0015J\u001b\u0010]\u001a\u00020\u0007*\u00020\\2\u0006\u0010F\u001a\u00028��H\u0016¢\u0006\u0004\b]\u0010^J\u001b\u0010_\u001a\u00020\u0007*\u00020\\2\u0006\u0010X\u001a\u00020\nH\u0016¢\u0006\u0004\b_\u0010`R\u001e\u0010d\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`a8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bb\u0010cR\u001c\u0010f\u001a\u00020e8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bf\u0010g\u001a\u0004\bh\u0010iR\"\u0010k\u001a\b\u0012\u0004\u0012\u00028��0j8��@��X\u0080\u0004¢\u0006\f\n\u0004\bk\u0010l\u001a\u0004\bm\u0010nR\u0016\u0010o\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bo\u0010\u0015R\u0016\u0010p\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bp\u0010\u0015R\u0016\u0010q\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bq\u0010\u0015R(\u0010w\u001a\u0004\u0018\u00010r2\b\u0010F\u001a\u0004\u0018\u00010r8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00058@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\bx\u0010%\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006{"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/DispatchedTask;", "", "proposedUpdate", "", "alreadyResumedError", "(Ljava/lang/Object;)V", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "cancelLater", "state", "cancelResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelResult", "checkCompleted", "()Z", "token", "completeResume", "detachChild$kotlinx_coroutines_core", "()V", "detachChild", "detachChildIfNonResuable", "", "mode", "dispatchResume", "(I)V", "Lkotlinx/coroutines/Job;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", "getResult", "()Ljava/lang/Object;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "initCancellability", "Lkotlin/Function0;", "block", "invokeHandlerSafely", "(Lkotlin/jvm/functions/Function0;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "invokeOnCancellation", "(Lkotlin/jvm/functions/Function1;)V", "isReusable", "Lkotlinx/coroutines/CancelHandler;", "makeHandler", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;", "multipleHandlersError", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V", "", "nameString", "()Ljava/lang/String;", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "resetState", FirebaseAnalytics.Param.VALUE, "onCancellation", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "resumeMode", "Lkotlinx/coroutines/CancelledContinuation;", "resumeImpl", "(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;", "Lkotlin/Result;", "result", "resumeWith", "setupCancellation", "takeState$kotlinx_coroutines_core", "takeState", "toString", "tryResume", "idempotent", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "trySuspend", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "isActive", "isCancelled", "isCompleted", "Lkotlinx/coroutines/DisposableHandle;", "getParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setParentHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "parentHandle", "getState$kotlinx_coroutines_core", "<init>", "(Lkotlin/coroutines/Continuation;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@PublishedApi
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CancellableContinuationImpl.class */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame {

    /* renamed from: k */
    private static final AtomicIntegerFieldUpdater f21109k = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decision");

    /* renamed from: l */
    private static final AtomicReferenceFieldUpdater f21110l = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state");
    @NotNull

    /* renamed from: i */
    private final CoroutineContext f21111i;
    @NotNull

    /* renamed from: j */
    private final Continuation<T> f21112j;
    private volatile int _decision = 0;
    private volatile Object _state = Active.f21076f;
    private volatile Object _parentHandle = null;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(@NotNull Continuation<? super T> continuation, int i) {
        super(i);
        this.f21112j = continuation;
        this.f21111i = continuation.getContext();
    }

    /* renamed from: E */
    private final CancelledContinuation m1364E(Object obj, int i) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof NotCompleted)) {
                if (obj2 instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                    if (cancelledContinuation.m1337c()) {
                        return cancelledContinuation;
                    }
                }
                m1358h(obj);
                throw null;
            }
        } while (!f21110l.compareAndSet(this, obj2, obj));
        m1353m();
        m1352n(i);
        return null;
    }

    /* renamed from: F */
    private final void m1363F(DisposableHandle disposableHandle) {
        this._parentHandle = disposableHandle;
    }

    /* renamed from: G */
    private final void m1362G() {
        Job job;
        if (!m1355k() && m1349r() == null && (job = (Job) this.f21112j.getContext().get(Job.f21198d)) != null) {
            job.start();
            DisposableHandle d = Job.DefaultImpls.m1223d(job, true, false, new ChildContinuation(job, this), 2, null);
            m1363F(d);
            if (mo1342y() && !m1344w()) {
                d.dispose();
                m1363F(NonDisposableHandle.f21231f);
            }
        }
    }

    /* renamed from: H */
    private final boolean m1361H() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f21109k.compareAndSet(this, 0, 2));
        return true;
    }

    /* renamed from: I */
    private final boolean m1360I() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f21109k.compareAndSet(this, 0, 1));
        return true;
    }

    /* renamed from: h */
    private final void m1358h(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    /* renamed from: j */
    private final boolean m1356j(Throwable th) {
        if (this.f21165h != 0) {
            return false;
        }
        Continuation<T> continuation = this.f21112j;
        Continuation<T> continuation2 = continuation;
        if (!(continuation instanceof DispatchedContinuation)) {
            continuation2 = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation2;
        if (dispatchedContinuation != null) {
            return dispatchedContinuation.m1286m(th);
        }
        return false;
    }

    /* renamed from: k */
    private final boolean m1355k() {
        boolean y = mo1342y();
        if (this.f21165h != 0) {
            return y;
        }
        Continuation<T> continuation = this.f21112j;
        Continuation<T> continuation2 = continuation;
        if (!(continuation instanceof DispatchedContinuation)) {
            continuation2 = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation2;
        boolean z = y;
        if (dispatchedContinuation != null) {
            Throwable h = dispatchedContinuation.m1291h(this);
            z = y;
            if (h != null) {
                if (!y) {
                    m1357i(h);
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: m */
    private final void m1353m() {
        if (!m1344w()) {
            m1354l();
        }
    }

    /* renamed from: n */
    private final void m1352n(int i) {
        if (!m1361H()) {
            DispatchedTaskKt.m1273a(this, i);
        }
    }

    /* renamed from: r */
    private final DisposableHandle m1349r() {
        return (DisposableHandle) this._parentHandle;
    }

    /* renamed from: w */
    private final boolean m1344w() {
        Continuation<T> continuation = this.f21112j;
        return (continuation instanceof DispatchedContinuation) && ((DispatchedContinuation) continuation).m1287l(this);
    }

    /* renamed from: x */
    private final CancelHandler m1343x(Function1<? super Throwable, Unit> function1) {
        return function1 instanceof CancelHandler ? (CancelHandler) function1 : new InvokeOnCancel(function1);
    }

    /* renamed from: z */
    private final void m1341z(Function1<? super Throwable, Unit> function1, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + function1 + ", already has " + obj).toString());
    }

    @NotNull
    /* renamed from: A */
    protected String mo1147A() {
        return "CancellableContinuation";
    }

    /* renamed from: B */
    public final void m1367B(@NotNull Throwable th) {
        if (!m1356j(th)) {
            m1357i(th);
            m1353m();
        }
    }

    @JvmName
    /* renamed from: C */
    public final boolean m1366C() {
        if (DebugKt.m1308a()) {
            if (!(m1349r() != NonDisposableHandle.f21231f)) {
                throw new AssertionError();
            }
        }
        Object obj = this._state;
        if (DebugKt.m1308a() && !(!(obj instanceof NotCompleted))) {
            throw new AssertionError();
        } else if (obj instanceof CompletedIdempotentResult) {
            m1354l();
            return false;
        } else {
            this._decision = 0;
            this._state = Active.f21076f;
            return true;
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    /* renamed from: D */
    public void mo1365D(@NotNull Object obj) {
        if (DebugKt.m1308a()) {
            if (!(obj == CancellableContinuationImplKt.f21113a)) {
                throw new AssertionError();
            }
        }
        m1352n(this.f21165h);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    /* renamed from: a */
    public void mo1279a(@Nullable Object obj, @NotNull Throwable th) {
        if (obj instanceof CompletedWithCancellation) {
            try {
                ((CompletedWithCancellation) obj).f21131b.invoke(th);
            } catch (Throwable th2) {
                CoroutineContext context = getContext();
                CoroutineExceptionHandlerKt.m1318a(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @NotNull
    /* renamed from: b */
    public final Continuation<T> mo1278b() {
        return this.f21112j;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    /* renamed from: c */
    public Object mo1359c(T t, @Nullable Object obj) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof NotCompleted)) {
                Symbol symbol = null;
                if (obj2 instanceof CompletedIdempotentResult) {
                    CompletedIdempotentResult completedIdempotentResult = (CompletedIdempotentResult) obj2;
                    symbol = null;
                    if (completedIdempotentResult.f21128a == obj) {
                        if (DebugKt.m1308a()) {
                            if (!(completedIdempotentResult.f21129b == t)) {
                                throw new AssertionError();
                            }
                        }
                        symbol = CancellableContinuationImplKt.f21113a;
                    }
                }
                return symbol;
            }
        } while (!f21110l.compareAndSet(this, obj2, obj == null ? t : new CompletedIdempotentResult(obj, t)));
        m1353m();
        return CancellableContinuationImplKt.f21113a;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    /* renamed from: e */
    public <T> T mo1276e(@Nullable Object obj) {
        T t;
        if (obj instanceof CompletedIdempotentResult) {
            t = (T) ((CompletedIdempotentResult) obj).f21129b;
        } else {
            t = (T) obj;
            if (obj instanceof CompletedWithCancellation) {
                t = (T) ((CompletedWithCancellation) obj).f21130a;
            }
        }
        return t;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    /* renamed from: g */
    public Object mo1274g() {
        return m1346u();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f21112j;
        Continuation<T> continuation2 = continuation;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation2 = null;
        }
        return (CoroutineStackFrame) continuation2;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.f21111i;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    /* renamed from: i */
    public boolean m1357i(@Nullable Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
            z = obj instanceof CancelHandler;
        } while (!f21110l.compareAndSet(this, obj, new CancelledContinuation(this, th, z)));
        if (z) {
            try {
                ((CancelHandler) obj).mo295b(th);
            } catch (Throwable th2) {
                CoroutineContext context = getContext();
                CoroutineExceptionHandlerKt.m1318a(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
            }
        }
        m1353m();
        m1352n(0);
        return true;
    }

    /* renamed from: l */
    public final void m1354l() {
        DisposableHandle r = m1349r();
        if (r != null) {
            r.dispose();
        }
        m1363F(NonDisposableHandle.f21231f);
    }

    @NotNull
    /* renamed from: o */
    public Throwable mo1146o(@NotNull Job job) {
        return job.mo1119m();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    /* renamed from: p */
    public void mo1351p(@NotNull Function1<? super Throwable, Unit> function1) {
        Object obj;
        CancelHandler x;
        Throwable th = null;
        CancelHandler cancelHandler = null;
        do {
            obj = this._state;
            if (obj instanceof Active) {
                x = cancelHandler != null ? cancelHandler : m1343x(function1);
                cancelHandler = x;
            } else if (obj instanceof CancelHandler) {
                m1341z(function1, obj);
                throw null;
            } else if (!(obj instanceof CancelledContinuation)) {
                return;
            } else {
                if (((CancelledContinuation) obj).m1329b()) {
                    Object obj2 = obj;
                    try {
                        if (!(obj instanceof CompletedExceptionally)) {
                            obj2 = null;
                        }
                        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj2;
                        if (completedExceptionally != null) {
                            th = completedExceptionally.f21127a;
                        }
                        function1.invoke(th);
                        return;
                    } catch (Throwable th2) {
                        CoroutineContext context = getContext();
                        CoroutineExceptionHandlerKt.m1318a(context, new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
                        return;
                    }
                } else {
                    m1341z(function1, obj);
                    throw null;
                }
            }
        } while (!f21110l.compareAndSet(this, obj, x));
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    /* renamed from: q */
    public Object mo1350q(@NotNull Throwable th) {
        Object obj;
        do {
            obj = this._state;
            if (!(obj instanceof NotCompleted)) {
                return null;
            }
        } while (!f21110l.compareAndSet(this, obj, new CompletedExceptionally(th, false, 2, null)));
        m1353m();
        return CancellableContinuationImplKt.f21113a;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        m1364E(CompletedExceptionallyKt.m1326c(obj, this), this.f21165h);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    /* renamed from: s */
    public void mo1348s(@NotNull CoroutineDispatcher coroutineDispatcher, T t) {
        Continuation<T> continuation = this.f21112j;
        boolean z = continuation instanceof DispatchedContinuation;
        CoroutineDispatcher coroutineDispatcher2 = null;
        if (!z) {
            continuation = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        if (dispatchedContinuation != null) {
            coroutineDispatcher2 = dispatchedContinuation.f21160l;
        }
        m1364E(t, coroutineDispatcher2 == coroutineDispatcher ? 2 : this.f21165h);
    }

    @PublishedApi
    @Nullable
    /* renamed from: t */
    public final Object m1347t() {
        Job job;
        Object d;
        m1362G();
        if (m1360I()) {
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            return d;
        }
        Object u = m1346u();
        if (u instanceof CompletedExceptionally) {
            Throwable th = ((CompletedExceptionally) u).f21127a;
            Throwable th2 = th;
            if (DebugKt.m1305d()) {
                th2 = StackTraceRecoveryKt.m456a(th, this);
            }
            throw th2;
        } else if (this.f21165h != 1 || (job = (Job) getContext().get(Job.f21198d)) == null || job.isActive()) {
            return mo1276e(u);
        } else {
            CancellationException m = job.mo1119m();
            mo1279a(u, m);
            Throwable th3 = m;
            if (DebugKt.m1305d()) {
                th3 = StackTraceRecoveryKt.m456a(m, this);
            }
            throw th3;
        }
    }

    @NotNull
    public String toString() {
        return mo1147A() + '(' + DebugStringsKt.m1302c(this.f21112j) + "){" + m1346u() + "}@" + DebugStringsKt.m1303b(this);
    }

    @Nullable
    /* renamed from: u */
    public final Object m1346u() {
        return this._state;
    }

    /* renamed from: v */
    public void m1345v() {
        m1362G();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    /* renamed from: y */
    public boolean mo1342y() {
        return !(m1346u() instanceof NotCompleted);
    }
}

package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.c.a.a;
import kotlin.c.b.a.d;
import kotlin.c.f;
import kotlin.jvm.functions.Function1;
import kotlin.v;
import kotlinx.coroutines.bv;
import kotlinx.coroutines.internal.e;
import kotlinx.coroutines.internal.u;
@Metadata(bv = {1, 0, 3}, d1 = {"��¶\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0011\u0018��*\u0006\b��\u0010\u0001 ��2\t\u0012\u0004\u0012\u00028��0\u008c\u00012\t\u0012\u0004\u0012\u00028��0\u008d\u00012\u00060rj\u0002`sB\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013JB\u0010\u0012\u001a\u00020\u00112'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0018J\u001e\u0010\u001b\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00110\u0019H\u0082\b¢\u0006\u0004\b\u001b\u0010\u001cJ8\u0010\u001e\u001a\u00020\u00112!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u00142\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u001e\u0010\u0018J\u0019\u0010 \u001a\u00020\u001f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b \u0010!J!\u0010%\u001a\u00020\u00112\b\u0010\"\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0010¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b&\u0010!J\u000f\u0010'\u001a\u00020\u001fH\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\bH\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010.\u001a\u00020\u0011H��¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020\u0011H\u0002¢\u0006\u0004\b/\u0010-J\u0017\u00101\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0004H\u0002¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u000f2\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J\u001b\u0010:\u001a\u0004\u0018\u00010\u000f2\b\u00107\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b8\u00109J\u0011\u0010;\u001a\u0004\u0018\u00010\bH\u0001¢\u0006\u0004\b;\u0010<J\u0017\u0010?\u001a\n\u0018\u00010=j\u0004\u0018\u0001`>H\u0016¢\u0006\u0004\b?\u0010@J\u001f\u0010C\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u00107\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\bA\u0010BJ\u000f\u0010D\u001a\u00020\u0011H\u0016¢\u0006\u0004\bD\u0010-J8\u0010E\u001a\u00020\u00112'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u0017H\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u001fH\u0002¢\u0006\u0004\bG\u0010(J8\u0010H\u001a\u00020\r2'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u0017H\u0002¢\u0006\u0004\bH\u0010IJB\u0010J\u001a\u00020\u00112'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u00172\b\u00107\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\bJ\u0010KJ\u000f\u0010M\u001a\u00020LH\u0014¢\u0006\u0004\bM\u0010NJ\u0017\u0010Q\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH��¢\u0006\u0004\bO\u0010PJ\u000f\u0010R\u001a\u00020\u001fH\u0001¢\u0006\u0004\bR\u0010(J<\u0010T\u001a\u00020\u00112\u0006\u0010S\u001a\u00028��2#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0016¢\u0006\u0004\bT\u0010UJH\u0010V\u001a\u00020\u00112\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042%\b\u0002\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0002¢\u0006\u0004\bV\u0010WJ \u0010Z\u001a\u00020\u00112\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028��0XH\u0016ø\u0001��¢\u0006\u0004\bZ\u0010+JZ\u0010]\u001a\u0004\u0018\u00010\b2\u0006\u00107\u001a\u00020[2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00142\b\u0010\\\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\u0011H\u0002¢\u0006\u0004\b_\u0010-J\u0011\u0010a\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b`\u0010<J\u000f\u0010b\u001a\u00020LH\u0016¢\u0006\u0004\bb\u0010NJ\u000f\u0010c\u001a\u00020\u001fH\u0002¢\u0006\u0004\bc\u0010(J#\u0010c\u001a\u0004\u0018\u00010\b2\u0006\u0010S\u001a\u00028��2\b\u0010\\\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\bc\u0010dJH\u0010c\u001a\u0004\u0018\u00010\b2\u0006\u0010S\u001a\u00028��2\b\u0010\\\u001a\u0004\u0018\u00010\b2#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0016¢\u0006\u0004\bc\u0010eJJ\u0010g\u001a\u0004\u0018\u00010f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\\\u001a\u0004\u0018\u00010\b2#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0002¢\u0006\u0004\bg\u0010hJ\u0019\u0010j\u001a\u0004\u0018\u00010\b2\u0006\u0010i\u001a\u00020\u000fH\u0016¢\u0006\u0004\bj\u0010kJ\u000f\u0010l\u001a\u00020\u001fH\u0002¢\u0006\u0004\bl\u0010(J\u001b\u0010n\u001a\u00020\u0011*\u00020m2\u0006\u0010S\u001a\u00028��H\u0016¢\u0006\u0004\bn\u0010oJ\u001b\u0010p\u001a\u00020\u0011*\u00020m2\u0006\u0010i\u001a\u00020\u000fH\u0016¢\u0006\u0004\bp\u0010qR\u001e\u0010v\u001a\n\u0018\u00010rj\u0004\u0018\u0001`s8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bt\u0010uR\u001c\u0010x\u001a\u00020w8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{R\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u00028��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010|\u001a\u0004\b}\u0010~R\u0016\u0010\u007f\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010(R\u0018\u0010\u0080\u0001\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010(R\u0018\u0010\u0081\u0001\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0081\u0001\u0010(R/\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0082\u00012\t\u0010S\u001a\u0005\u0018\u00010\u0082\u00018B@BX\u0082\u000e¢\u0006\u0010\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u00107\u001a\u0004\u0018\u00010\b8@@��X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010<R\u0018\u0010\u008a\u0001\u001a\u00020L8B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010N\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u008b\u0001"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlin/coroutines/Continuation;", "delegate", "", "resumeMode", "<init>", "(Lkotlin/coroutines/Continuation;I)V", "", "proposedUpdate", "", "alreadyResumedError", "(Ljava/lang/Object;)Ljava/lang/Void;", "Lkotlinx/coroutines/CancelHandler;", "handler", "", "cause", "", "callCancelHandler", "(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V", "Lkotlin/Function0;", "block", "callCancelHandlerSafely", "(Lkotlin/jvm/functions/Function0;)V", "onCancellation", "callOnCancellation", "", "cancel", "(Ljava/lang/Throwable;)Z", "takenState", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "cancelLater", "checkCompleted", "()Z", "token", "completeResume", "(Ljava/lang/Object;)V", "detachChild$kotlinx_coroutines_core", "()V", "detachChild", "detachChildIfNonResuable", "mode", "dispatchResume", "(I)V", "Lkotlinx/coroutines/Job;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "getResult", "()Ljava/lang/Object;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "initCancellability", "invokeOnCancellation", "(Lkotlin/jvm/functions/Function1;)V", "isReusable", "makeCancelHandler", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;", "multipleHandlersError", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V", "", "nameString", "()Ljava/lang/String;", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "resetStateReusable", "value", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "resumeImpl", "(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V", "Lkotlin/Result;", "result", "resumeWith", "Lkotlinx/coroutines/NotCompleted;", "idempotent", "resumedState", "(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;", "setupCancellation", "takeState$kotlinx_coroutines_core", "takeState", "toString", "tryResume", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "trySuspend", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "isActive", "isCancelled", "isCompleted", "Lkotlinx/coroutines/DisposableHandle;", "getParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setParentHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "parentHandle", "getState$kotlinx_coroutines_core", "getStateDebugRepresentation", "stateDebugRepresentation", "kotlinx-coroutines-core", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/o.class */
public class o<T> extends ax<T> implements d, n<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f38853d = AtomicIntegerFieldUpdater.newUpdater(o.class, "_decision");
    private static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_state");
    private volatile /* synthetic */ int _decision;
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    /* renamed from: a  reason: collision with root package name */
    final kotlin.c.d<T> f38854a;

    /* renamed from: c  reason: collision with root package name */
    private final f f38855c;

    /* JADX WARN: Multi-variable type inference failed */
    public o(kotlin.c.d<? super T> dVar, int i) {
        super(i);
        this.f38854a = dVar;
        if (ao.a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        this.f38855c = dVar.b();
        this._decision = 0;
        this._state = b.f38701a;
        this._parentHandle = null;
    }

    private static Object a(ch chVar, Object obj, int i, Function1<? super Throwable, v> function1, Object obj2) {
        if (obj instanceof z) {
            ao.a();
            if (ao.a()) {
                if (!(function1 == null)) {
                    throw new AssertionError();
                }
            }
            return obj;
        } else if (!ay.a(i) || (function1 == null && (!(chVar instanceof l) || (chVar instanceof e)))) {
            return obj;
        } else {
            ch chVar2 = chVar;
            if (!(chVar instanceof l)) {
                chVar2 = null;
            }
            return new y(obj, (l) chVar2, function1, null, null, 16, null);
        }
    }

    private final void a(int i) {
        if (!o()) {
            ay.a(this, i);
        }
    }

    private final void a(Object obj, int i, Function1<? super Throwable, v> function1) {
        Object obj2;
        do {
            obj2 = this._state;
            if (obj2 instanceof ch) {
            } else {
                if (obj2 instanceof r) {
                    if (r.f38857a.compareAndSet((r) obj2, 0, 1)) {
                        return;
                    }
                }
                throw new IllegalStateException("Already resumed, but proposed with update ".concat(String.valueOf(obj)).toString());
            }
        } while (!e.compareAndSet(this, obj2, a((ch) obj2, obj, i, null, null)));
        h();
        a(i);
    }

    private static void a(Function1<? super Throwable, v> function1, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + function1 + ", already has " + obj).toString());
    }

    private final void a(Function1<? super Throwable, v> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            ah.a(this.f38855c, new CompletionHandlerException("Exception in invokeOnCancellation handler for ".concat(String.valueOf(this)), th2));
        }
    }

    private void a(l lVar, Throwable th) {
        try {
            lVar.a(th);
        } catch (Throwable th2) {
            ah.a(this.f38855c, new CompletionHandlerException("Exception in invokeOnCancellation handler for ".concat(String.valueOf(this)), th2));
        }
    }

    private final boolean l() {
        kotlin.c.d<T> dVar = this.f38854a;
        if (!(dVar instanceof e)) {
            return false;
        }
        Object obj = ((e) dVar)._reusableCancellableContinuation;
        return obj != null && (!(obj instanceof o) || obj == this);
    }

    private final boolean m() {
        Throwable a2;
        boolean a3 = a();
        if (!ay.b(this.f38696b)) {
            return a3;
        }
        kotlin.c.d<T> dVar = this.f38854a;
        kotlin.c.d<T> dVar2 = dVar;
        if (!(dVar instanceof e)) {
            dVar2 = null;
        }
        e eVar = (e) dVar2;
        if (!(eVar == null || (a2 = eVar.a(this)) == null)) {
            if (a3) {
                return true;
            }
            b(a2);
            return true;
        }
        return a3;
    }

    private final boolean n() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f38853d.compareAndSet(this, 0, 1));
        return true;
    }

    private final boolean o() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f38853d.compareAndSet(this, 0, 2));
        return true;
    }

    @Override // kotlinx.coroutines.n
    public final Object a(Throwable th) {
        Object obj;
        z zVar = new z(th, false, 2, null);
        do {
            obj = this._state;
            if (obj instanceof ch) {
            } else {
                if (obj instanceof y) {
                }
                return null;
            }
        } while (!e.compareAndSet(this, obj, a((ch) obj, zVar, this.f38696b, null, null)));
        h();
        return p.f38856a;
    }

    public Throwable a(bv bvVar) {
        return bvVar.m();
    }

    @Override // kotlinx.coroutines.n
    public final void a(Object obj) {
        if (ao.a()) {
            if (!(obj == p.f38856a)) {
                throw new AssertionError();
            }
        }
        a(this.f38696b);
    }

    @Override // kotlinx.coroutines.ax
    public final void a(Object obj, Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof ch) {
                throw new IllegalStateException("Not completed".toString());
            } else if (!(obj2 instanceof z)) {
                if (obj2 instanceof y) {
                    y yVar = (y) obj2;
                    if (!yVar.a()) {
                        if (e.compareAndSet(this, obj2, y.a(yVar, null, null, null, null, th, 15))) {
                            l lVar = yVar.f38864b;
                            if (lVar != null) {
                                a(lVar, th);
                            }
                            Function1<Throwable, v> function1 = yVar.f38865c;
                            if (function1 != null) {
                                try {
                                    function1.invoke(th);
                                    return;
                                } catch (Throwable th2) {
                                    ah.a(this.f38855c, new CompletionHandlerException("Exception in resume onCancellation handler for ".concat(String.valueOf(this)), th2));
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                    } else {
                        throw new IllegalStateException("Must be called at most once".toString());
                    }
                } else if (e.compareAndSet(this, obj2, new y(obj2, null, null, null, th, 14, null))) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.n
    public final void a(Function1<? super Throwable, v> function1) {
        bs bsVar = function1 instanceof l ? (l) function1 : new bs(function1);
        while (true) {
            Object obj = this._state;
            if (obj instanceof b) {
                if (e.compareAndSet(this, obj, bsVar)) {
                    return;
                }
            } else if (obj instanceof l) {
                a(function1, obj);
            } else {
                boolean z = obj instanceof z;
                if (z) {
                    if (!((z) obj).a()) {
                        a(function1, obj);
                    }
                    if (obj instanceof r) {
                        Throwable th = null;
                        Object obj2 = obj;
                        if (!z) {
                            obj2 = null;
                        }
                        z zVar = (z) obj2;
                        if (zVar != null) {
                            th = zVar.f38868b;
                        }
                        a(function1, th);
                        return;
                    }
                    return;
                } else if (obj instanceof y) {
                    y yVar = (y) obj;
                    if (yVar.f38864b != null) {
                        a(function1, obj);
                    }
                    if (!(bsVar instanceof e)) {
                        if (yVar.a()) {
                            a(function1, yVar.e);
                            return;
                        } else {
                            if (e.compareAndSet(this, obj, y.a(yVar, null, bsVar, null, null, null, 29))) {
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                } else if (!(bsVar instanceof e)) {
                    if (e.compareAndSet(this, obj, new y(obj, bsVar, null, null, null, 28, null))) {
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.n
    public final void a(af afVar, T t) {
        kotlin.c.d<T> dVar = this.f38854a;
        kotlin.c.d<T> dVar2 = dVar;
        if (!(dVar instanceof e)) {
            dVar2 = null;
        }
        e eVar = (e) dVar2;
        a(t, (eVar != null ? eVar.e : null) == afVar ? 4 : this.f38696b, null);
    }

    @Override // kotlinx.coroutines.n
    public final boolean a() {
        return !(this._state instanceof ch);
    }

    @Override // kotlin.c.d
    public final f b() {
        return this.f38855c;
    }

    @Override // kotlin.c.d
    public final void b(Object obj) {
        o<T> oVar = this;
        Throwable c2 = kotlin.o.c(obj);
        if (c2 != null) {
            obj = new z(!ao.c() ? c2 : u.a(c2, oVar), false, 2, null);
        }
        a(obj, this.f38696b, null);
    }

    public final boolean b(Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof ch)) {
                return false;
            }
            z = obj instanceof l;
        } while (!e.compareAndSet(this, obj, new r(this, th, z)));
        if (!z) {
            obj = null;
        }
        l lVar = (l) obj;
        if (lVar != null) {
            a(lVar, th);
        }
        h();
        a(this.f38696b);
        return true;
    }

    @Override // kotlinx.coroutines.ax
    public final <T> T c(Object obj) {
        T t = (T) obj;
        if (obj instanceof y) {
            t = (T) ((y) obj).f38863a;
        }
        return t;
    }

    @Override // kotlin.c.b.a.d
    public final d c() {
        kotlin.c.d<T> dVar = this.f38854a;
        kotlin.c.d<T> dVar2 = dVar;
        if (!(dVar instanceof d)) {
            dVar2 = null;
        }
        return (d) dVar2;
    }

    @Override // kotlin.c.b.a.d
    public final StackTraceElement d() {
        return null;
    }

    @Override // kotlinx.coroutines.ax
    public final Throwable d(Object obj) {
        Throwable d2 = super.d(obj);
        if (d2 == null) {
            return null;
        }
        kotlin.c.d<T> dVar = this.f38854a;
        Throwable th = d2;
        if (ao.c()) {
            th = !(dVar instanceof d) ? d2 : u.a(d2, (d) dVar);
        }
        return th;
    }

    public final void e() {
        bv bvVar;
        if (!m() && ((bb) this._parentHandle) == null && (bvVar = (bv) this.f38854a.b().get(bv.f38758c)) != null) {
            bb a2 = bv.a.a(bvVar, true, false, new s(this), 2);
            this._parentHandle = a2;
            if (a() && !l()) {
                a2.a();
                this._parentHandle = cg.f38780a;
            }
        }
    }

    @Override // kotlinx.coroutines.ax
    public final Object f() {
        return this._state;
    }

    public final Object g() {
        bv bvVar;
        e();
        if (n()) {
            return a.COROUTINE_SUSPENDED;
        }
        Object obj = this._state;
        if (obj instanceof z) {
            Throwable th = ((z) obj).f38868b;
            o<T> oVar = this;
            if (ao.c()) {
                th = u.a(th, oVar);
            }
            throw th;
        } else if (!ay.a(this.f38696b) || (bvVar = (bv) this.f38855c.get(bv.f38758c)) == null || bvVar.e()) {
            return c(obj);
        } else {
            CancellationException m = bvVar.m();
            a(obj, m);
            o<T> oVar2 = this;
            if (ao.c()) {
                m = u.a(m, oVar2);
            }
            throw m;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        if (!l()) {
            i();
        }
    }

    public final void i() {
        bb bbVar = (bb) this._parentHandle;
        if (bbVar != null) {
            bbVar.a();
        }
        this._parentHandle = cg.f38780a;
    }

    protected String j() {
        return "CancellableContinuation";
    }

    @Override // kotlinx.coroutines.ax
    public final kotlin.c.d<T> k() {
        return this.f38854a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(j());
        sb.append('(');
        sb.append(ap.a(this.f38854a));
        sb.append("){");
        Object obj = this._state;
        sb.append(obj instanceof ch ? "Active" : obj instanceof r ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        return sb.toString();
    }
}

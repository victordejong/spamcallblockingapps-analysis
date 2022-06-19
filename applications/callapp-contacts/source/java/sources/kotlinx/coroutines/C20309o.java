package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.C18539o;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p522a.EnumC18307a;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.AbstractC20218bv;
import kotlinx.coroutines.internal.C20269e;
import kotlinx.coroutines.internal.C20295u;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��¶\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0011\u0018��*\u0006\b��\u0010\u0001 ��2\t\u0012\u0004\u0012\u00028��0\u008c\u00012\t\u0012\u0004\u0012\u00028��0\u008d\u00012\u00060rj\u0002`sB\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013JB\u0010\u0012\u001a\u00020\u00112'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0018J\u001e\u0010\u001b\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00110\u0019H\u0082\b¢\u0006\u0004\b\u001b\u0010\u001cJ8\u0010\u001e\u001a\u00020\u00112!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u00142\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u001e\u0010\u0018J\u0019\u0010 \u001a\u00020\u001f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b \u0010!J!\u0010%\u001a\u00020\u00112\b\u0010\"\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0010¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b&\u0010!J\u000f\u0010'\u001a\u00020\u001fH\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\bH\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010.\u001a\u00020\u0011H��¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020\u0011H\u0002¢\u0006\u0004\b/\u0010-J\u0017\u00101\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0004H\u0002¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u000f2\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J\u001b\u0010:\u001a\u0004\u0018\u00010\u000f2\b\u00107\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b8\u00109J\u0011\u0010;\u001a\u0004\u0018\u00010\bH\u0001¢\u0006\u0004\b;\u0010<J\u0017\u0010?\u001a\n\u0018\u00010=j\u0004\u0018\u0001`>H\u0016¢\u0006\u0004\b?\u0010@J\u001f\u0010C\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u00107\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\bA\u0010BJ\u000f\u0010D\u001a\u00020\u0011H\u0016¢\u0006\u0004\bD\u0010-J8\u0010E\u001a\u00020\u00112'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u0017H\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u001fH\u0002¢\u0006\u0004\bG\u0010(J8\u0010H\u001a\u00020\r2'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u0017H\u0002¢\u0006\u0004\bH\u0010IJB\u0010J\u001a\u00020\u00112'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u00172\b\u00107\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\bJ\u0010KJ\u000f\u0010M\u001a\u00020LH\u0014¢\u0006\u0004\bM\u0010NJ\u0017\u0010Q\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH��¢\u0006\u0004\bO\u0010PJ\u000f\u0010R\u001a\u00020\u001fH\u0001¢\u0006\u0004\bR\u0010(J<\u0010T\u001a\u00020\u00112\u0006\u0010S\u001a\u00028��2#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0016¢\u0006\u0004\bT\u0010UJH\u0010V\u001a\u00020\u00112\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042%\b\u0002\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0002¢\u0006\u0004\bV\u0010WJ \u0010Z\u001a\u00020\u00112\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028��0XH\u0016ø\u0001��¢\u0006\u0004\bZ\u0010+JZ\u0010]\u001a\u0004\u0018\u00010\b2\u0006\u00107\u001a\u00020[2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00142\b\u0010\\\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\u0011H\u0002¢\u0006\u0004\b_\u0010-J\u0011\u0010a\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b`\u0010<J\u000f\u0010b\u001a\u00020LH\u0016¢\u0006\u0004\bb\u0010NJ\u000f\u0010c\u001a\u00020\u001fH\u0002¢\u0006\u0004\bc\u0010(J#\u0010c\u001a\u0004\u0018\u00010\b2\u0006\u0010S\u001a\u00028��2\b\u0010\\\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\bc\u0010dJH\u0010c\u001a\u0004\u0018\u00010\b2\u0006\u0010S\u001a\u00028��2\b\u0010\\\u001a\u0004\u0018\u00010\b2#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0016¢\u0006\u0004\bc\u0010eJJ\u0010g\u001a\u0004\u0018\u00010f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\\\u001a\u0004\u0018\u00010\b2#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0002¢\u0006\u0004\bg\u0010hJ\u0019\u0010j\u001a\u0004\u0018\u00010\b2\u0006\u0010i\u001a\u00020\u000fH\u0016¢\u0006\u0004\bj\u0010kJ\u000f\u0010l\u001a\u00020\u001fH\u0002¢\u0006\u0004\bl\u0010(J\u001b\u0010n\u001a\u00020\u0011*\u00020m2\u0006\u0010S\u001a\u00028��H\u0016¢\u0006\u0004\bn\u0010oJ\u001b\u0010p\u001a\u00020\u0011*\u00020m2\u0006\u0010i\u001a\u00020\u000fH\u0016¢\u0006\u0004\bp\u0010qR\u001e\u0010v\u001a\n\u0018\u00010rj\u0004\u0018\u0001`s8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bt\u0010uR\u001c\u0010x\u001a\u00020w8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{R\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u00028��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010|\u001a\u0004\b}\u0010~R\u0016\u0010\u007f\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010(R\u0018\u0010\u0080\u0001\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010(R\u0018\u0010\u0081\u0001\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0081\u0001\u0010(R/\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0082\u00012\t\u0010S\u001a\u0005\u0018\u00010\u0082\u00018B@BX\u0082\u000e¢\u0006\u0010\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u00107\u001a\u0004\u0018\u00010\b8@@��X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010<R\u0018\u0010\u008a\u0001\u001a\u00020L8B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010N\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u008b\u0001"}, m4298d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlin/coroutines/Continuation;", "delegate", "", "resumeMode", "<init>", "(Lkotlin/coroutines/Continuation;I)V", "", "proposedUpdate", "", "alreadyResumedError", "(Ljava/lang/Object;)Ljava/lang/Void;", "Lkotlinx/coroutines/CancelHandler;", "handler", "", "cause", "", "callCancelHandler", "(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V", "Lkotlin/Function0;", "block", "callCancelHandlerSafely", "(Lkotlin/jvm/functions/Function0;)V", "onCancellation", "callOnCancellation", "", "cancel", "(Ljava/lang/Throwable;)Z", "takenState", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "cancelLater", "checkCompleted", "()Z", "token", "completeResume", "(Ljava/lang/Object;)V", "detachChild$kotlinx_coroutines_core", "()V", "detachChild", "detachChildIfNonResuable", "mode", "dispatchResume", "(I)V", "Lkotlinx/coroutines/Job;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "getResult", "()Ljava/lang/Object;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "initCancellability", "invokeOnCancellation", "(Lkotlin/jvm/functions/Function1;)V", "isReusable", "makeCancelHandler", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;", "multipleHandlersError", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V", "", "nameString", "()Ljava/lang/String;", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "resetStateReusable", "value", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "resumeImpl", "(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V", "Lkotlin/Result;", "result", "resumeWith", "Lkotlinx/coroutines/NotCompleted;", "idempotent", "resumedState", "(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;", "setupCancellation", "takeState$kotlinx_coroutines_core", "takeState", "toString", "tryResume", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "trySuspend", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "isActive", "isCancelled", "isCompleted", "Lkotlinx/coroutines/DisposableHandle;", "getParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setParentHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "parentHandle", "getState$kotlinx_coroutines_core", "getStateDebugRepresentation", "stateDebugRepresentation", "kotlinx-coroutines-core", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.o */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/o.class */
public class C20309o<T> extends AbstractC20170ax<T> implements AbstractC18319d, AbstractC20308n<T> {

    /* renamed from: d */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66783d = AtomicIntegerFieldUpdater.newUpdater(C20309o.class, "_decision");

    /* renamed from: e */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66784e = AtomicReferenceFieldUpdater.newUpdater(C20309o.class, Object.class, "_state");
    private volatile /* synthetic */ int _decision;
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    /* renamed from: a */
    final AbstractC18332d<T> f66785a;

    /* renamed from: c */
    private final AbstractC18335f f66786c;

    /* JADX WARN: Multi-variable type inference failed */
    public C20309o(AbstractC18332d<? super T> abstractC18332d, int i) {
        super(i);
        this.f66785a = abstractC18332d;
        if (C20159ao.m1083a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        this.f66786c = abstractC18332d.mo787b();
        this._decision = 0;
        this._state = C20173b.f66579a;
        this._parentHandle = null;
    }

    /* renamed from: a */
    private static Object m789a(AbstractC20239ch abstractC20239ch, Object obj, int i, Function1<? super Throwable, C20128v> function1, Object obj2) {
        if (obj instanceof C20322z) {
            C20159ao.m1083a();
            if (C20159ao.m1083a()) {
                if (!(function1 == null)) {
                    throw new AssertionError();
                }
            }
            return obj;
        } else if (!C20171ay.m1066a(i) || (function1 == null && (!(abstractC20239ch instanceof AbstractC20306l) || (abstractC20239ch instanceof AbstractC20256e)))) {
            return obj;
        } else {
            AbstractC20239ch abstractC20239ch2 = abstractC20239ch;
            if (!(abstractC20239ch instanceof AbstractC20306l)) {
                abstractC20239ch2 = null;
            }
            return new C20321y(obj, (AbstractC20306l) abstractC20239ch2, function1, null, null, 16, null);
        }
    }

    /* renamed from: a */
    private final void m799a(int i) {
        if (m770o()) {
            return;
        }
        C20171ay.m1064a(this, i);
    }

    /* renamed from: a */
    private final void m797a(Object obj, int i, Function1<? super Throwable, C20128v> function1) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof AbstractC20239ch)) {
                if (obj2 instanceof C20312r) {
                    if (C20312r.f66788a.compareAndSet((C20312r) obj2, 0, 1)) {
                        return;
                    }
                }
                throw new IllegalStateException("Already resumed, but proposed with update ".concat(String.valueOf(obj)).toString());
            }
        } while (!f66784e.compareAndSet(this, obj2, m789a((AbstractC20239ch) obj2, obj, i, null, null)));
        m777h();
        m799a(i);
    }

    /* renamed from: a */
    private static void m793a(Function1<? super Throwable, C20128v> function1, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + function1 + ", already has " + obj).toString());
    }

    /* renamed from: a */
    private final void m792a(Function1<? super Throwable, C20128v> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            C20144ah.m1086a(this.f66786c, new CompletionHandlerException("Exception in invokeOnCancellation handler for ".concat(String.valueOf(this)), th2));
        }
    }

    /* renamed from: a */
    private void m788a(AbstractC20306l abstractC20306l, Throwable th) {
        try {
            abstractC20306l.mo801a(th);
        } catch (Throwable th2) {
            C20144ah.m1086a(this.f66786c, new CompletionHandlerException("Exception in invokeOnCancellation handler for ".concat(String.valueOf(this)), th2));
        }
    }

    /* renamed from: l */
    private final boolean m773l() {
        AbstractC18332d<T> abstractC18332d = this.f66785a;
        if (abstractC18332d instanceof C20269e) {
            Object obj = ((C20269e) abstractC18332d)._reusableCancellableContinuation;
            return obj != null && (!(obj instanceof C20309o) || obj == this);
        }
        return false;
    }

    /* renamed from: m */
    private final boolean m772m() {
        Throwable m876a;
        boolean mo800a = mo800a();
        if (!C20171ay.m1062b(this.f66574b)) {
            return mo800a;
        }
        AbstractC18332d<T> abstractC18332d = this.f66785a;
        AbstractC18332d<T> abstractC18332d2 = abstractC18332d;
        if (!(abstractC18332d instanceof C20269e)) {
            abstractC18332d2 = null;
        }
        C20269e c20269e = (C20269e) abstractC18332d2;
        if (c20269e != null && (m876a = c20269e.m876a(this)) != null) {
            if (mo800a) {
                return true;
            }
            m785b(m876a);
            return true;
        }
        return mo800a;
    }

    /* renamed from: n */
    private final boolean m771n() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i != 2) {
                    throw new IllegalStateException("Already suspended".toString());
                }
                return false;
            }
        } while (!f66783d.compareAndSet(this, 0, 1));
        return true;
    }

    /* renamed from: o */
    private final boolean m770o() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                return false;
            }
        } while (!f66783d.compareAndSet(this, 0, 2));
        return true;
    }

    @Override // kotlinx.coroutines.AbstractC20308n
    /* renamed from: a */
    public final Object mo795a(Throwable th) {
        Object obj;
        C20322z c20322z = new C20322z(th, false, 2, null);
        do {
            obj = this._state;
            if (!(obj instanceof AbstractC20239ch)) {
                if (obj instanceof C20321y) {
                }
                return null;
            }
        } while (!f66784e.compareAndSet(this, obj, m789a((AbstractC20239ch) obj, c20322z, this.f66574b, null, null)));
        m777h();
        return C20310p.f66787a;
    }

    /* renamed from: a */
    public Throwable mo790a(AbstractC20218bv abstractC20218bv) {
        return abstractC20218bv.mo938m();
    }

    @Override // kotlinx.coroutines.AbstractC20308n
    /* renamed from: a */
    public final void mo798a(Object obj) {
        if (C20159ao.m1083a()) {
            if (!(obj == C20310p.f66787a)) {
                throw new AssertionError();
            }
        }
        m799a(this.f66574b);
    }

    @Override // kotlinx.coroutines.AbstractC20170ax
    /* renamed from: a */
    public final void mo796a(Object obj, Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (!(obj2 instanceof AbstractC20239ch)) {
                if (obj2 instanceof C20322z) {
                    return;
                }
                if (obj2 instanceof C20321y) {
                    C20321y c20321y = (C20321y) obj2;
                    if (!(!c20321y.m758a())) {
                        throw new IllegalStateException("Must be called at most once".toString());
                    }
                    if (f66784e.compareAndSet(this, obj2, C20321y.m756a(c20321y, null, null, null, null, th, 15))) {
                        AbstractC20306l abstractC20306l = c20321y.f66797b;
                        if (abstractC20306l != null) {
                            m788a(abstractC20306l, th);
                        }
                        Function1<Throwable, C20128v> function1 = c20321y.f66798c;
                        if (function1 == null) {
                            return;
                        }
                        try {
                            function1.invoke(th);
                            return;
                        } catch (Throwable th2) {
                            C20144ah.m1086a(this.f66786c, new CompletionHandlerException("Exception in resume onCancellation handler for ".concat(String.valueOf(this)), th2));
                            return;
                        }
                    }
                } else if (f66784e.compareAndSet(this, obj2, new C20321y(obj2, null, null, null, th, 14, null))) {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.AbstractC20308n
    /* renamed from: a */
    public final void mo794a(Function1<? super Throwable, C20128v> function1) {
        C20215bs c20215bs = function1 instanceof AbstractC20306l ? (AbstractC20306l) function1 : new C20215bs(function1);
        while (true) {
            Object obj = this._state;
            if (obj instanceof C20173b) {
                if (f66784e.compareAndSet(this, obj, c20215bs)) {
                    return;
                }
            } else if (obj instanceof AbstractC20306l) {
                m793a(function1, obj);
            } else {
                boolean z = obj instanceof C20322z;
                if (z) {
                    if (!((C20322z) obj).m755a()) {
                        m793a(function1, obj);
                    }
                    if (!(obj instanceof C20312r)) {
                        return;
                    }
                    Object obj2 = obj;
                    if (!z) {
                        obj2 = null;
                    }
                    C20322z c20322z = (C20322z) obj2;
                    Throwable th = null;
                    if (c20322z != null) {
                        th = c20322z.f66802b;
                    }
                    m792a(function1, th);
                    return;
                } else if (obj instanceof C20321y) {
                    C20321y c20321y = (C20321y) obj;
                    if (c20321y.f66797b != null) {
                        m793a(function1, obj);
                    }
                    if (c20215bs instanceof AbstractC20256e) {
                        return;
                    }
                    if (c20321y.m758a()) {
                        m792a(function1, c20321y.f66800e);
                        return;
                    } else {
                        if (f66784e.compareAndSet(this, obj, C20321y.m756a(c20321y, null, c20215bs, null, null, null, 29))) {
                            return;
                        }
                    }
                } else if (c20215bs instanceof AbstractC20256e) {
                    return;
                } else {
                    if (f66784e.compareAndSet(this, obj, new C20321y(obj, c20215bs, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.AbstractC20308n
    /* renamed from: a */
    public final void mo791a(AbstractC20140af abstractC20140af, T t) {
        AbstractC18332d<T> abstractC18332d = this.f66785a;
        AbstractC18332d<T> abstractC18332d2 = abstractC18332d;
        if (!(abstractC18332d instanceof C20269e)) {
            abstractC18332d2 = null;
        }
        C20269e c20269e = (C20269e) abstractC18332d2;
        m797a(t, (c20269e != null ? c20269e.f66731e : null) == abstractC20140af ? 4 : this.f66574b, null);
    }

    @Override // kotlinx.coroutines.AbstractC20308n
    /* renamed from: a */
    public final boolean mo800a() {
        return !(this._state instanceof AbstractC20239ch);
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final AbstractC18335f mo787b() {
        return this.f66786c;
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final void mo786b(Object obj) {
        C20309o<T> c20309o = this;
        Throwable m3837c = C18539o.m3837c(obj);
        if (m3837c != null) {
            obj = new C20322z(!C20159ao.m1081c() ? m3837c : C20295u.m816a(m3837c, c20309o), false, 2, null);
        }
        m797a(obj, this.f66574b, null);
    }

    /* renamed from: b */
    public final boolean m785b(Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof AbstractC20239ch)) {
                return false;
            }
            z = obj instanceof AbstractC20306l;
        } while (!f66784e.compareAndSet(this, obj, new C20312r(this, th, z)));
        if (!z) {
            obj = null;
        }
        AbstractC20306l abstractC20306l = (AbstractC20306l) obj;
        if (abstractC20306l != null) {
            m788a(abstractC20306l, th);
        }
        m777h();
        m799a(this.f66574b);
        return true;
    }

    @Override // kotlinx.coroutines.AbstractC20170ax
    /* renamed from: c */
    public final <T> T mo783c(Object obj) {
        Object obj2 = obj;
        if (obj instanceof C20321y) {
            obj2 = ((C20321y) obj).f66796a;
        }
        return (T) obj2;
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18319d
    /* renamed from: c */
    public final AbstractC18319d mo784c() {
        AbstractC18332d<T> abstractC18332d = this.f66785a;
        AbstractC18332d<T> abstractC18332d2 = abstractC18332d;
        if (!(abstractC18332d instanceof AbstractC18319d)) {
            abstractC18332d2 = null;
        }
        return (AbstractC18319d) abstractC18332d2;
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18319d
    /* renamed from: d */
    public final StackTraceElement mo782d() {
        return null;
    }

    @Override // kotlinx.coroutines.AbstractC20170ax
    /* renamed from: d */
    public final Throwable mo781d(Object obj) {
        Throwable mo781d = super.mo781d(obj);
        if (mo781d != null) {
            AbstractC18332d<T> abstractC18332d = this.f66785a;
            Throwable th = mo781d;
            if (C20159ao.m1081c()) {
                th = !(abstractC18332d instanceof AbstractC18319d) ? mo781d : C20295u.m816a(mo781d, (AbstractC18319d) abstractC18332d);
            }
            return th;
        }
        return null;
    }

    /* renamed from: e */
    public final void m780e() {
        AbstractC20218bv abstractC20218bv;
        if (!m772m() && ((AbstractC20192bb) this._parentHandle) == null && (abstractC20218bv = (AbstractC20218bv) this.f66785a.mo787b().get(AbstractC20218bv.f66666c)) != null) {
            AbstractC20192bb m982a = AbstractC20218bv.C20219a.m982a(abstractC20218bv, true, false, new C20313s(this), 2);
            this._parentHandle = m982a;
            if (!mo800a() || m773l()) {
                return;
            }
            m982a.mo918a();
            this._parentHandle = C20238cg.f66696a;
        }
    }

    @Override // kotlinx.coroutines.AbstractC20170ax
    /* renamed from: f */
    public final Object mo779f() {
        return this._state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.Throwable] */
    /* renamed from: g */
    public final Object m778g() {
        AbstractC20218bv abstractC20218bv;
        m780e();
        if (m771n()) {
            return EnumC18307a.COROUTINE_SUSPENDED;
        }
        Object obj = this._state;
        if (obj instanceof C20322z) {
            Throwable th = ((C20322z) obj).f66802b;
            C20309o<T> c20309o = this;
            if (C20159ao.m1081c()) {
                th = C20295u.m816a(th, c20309o);
            }
            throw th;
        } else if (!C20171ay.m1066a(this.f66574b) || (abstractC20218bv = (AbstractC20218bv) this.f66786c.get(AbstractC20218bv.f66666c)) == null || abstractC20218bv.mo949e()) {
            return mo783c(obj);
        } else {
            CancellationException mo938m = abstractC20218bv.mo938m();
            mo796a(obj, mo938m);
            C20309o<T> c20309o2 = this;
            if (C20159ao.m1081c()) {
                mo938m = C20295u.m816a(mo938m, c20309o2);
            }
            throw mo938m;
        }
    }

    /* renamed from: h */
    public final void m777h() {
        if (!m773l()) {
            m776i();
        }
    }

    /* renamed from: i */
    public final void m776i() {
        AbstractC20192bb abstractC20192bb = (AbstractC20192bb) this._parentHandle;
        if (abstractC20192bb != null) {
            abstractC20192bb.mo918a();
        }
        this._parentHandle = C20238cg.f66696a;
    }

    /* renamed from: j */
    protected String mo775j() {
        return "CancellableContinuation";
    }

    @Override // kotlinx.coroutines.AbstractC20170ax
    /* renamed from: k */
    public final AbstractC18332d<T> mo774k() {
        return this.f66785a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(mo775j());
        sb.append('(');
        sb.append(C20160ap.m1079a(this.f66785a));
        sb.append("){");
        Object obj = this._state;
        sb.append(obj instanceof AbstractC20239ch ? "Active" : obj instanceof C20312r ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        return sb.toString();
    }
}

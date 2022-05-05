package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\u0006\u0010?\u001a\u00020>\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0003¢\u0006\u0004\bC\u0010DJ\u001b\u0010\b\u001a\u0004\u0018\u00010\u00072\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00028��H��¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0016\u001a\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00192\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010!\u001a\u00020\u00102\f\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u001fH\u0086\bø\u0001��¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u0019H\u0086\b¢\u0006\u0004\b#\u0010$J!\u0010%\u001a\u00020\u00102\f\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u001fH\u0086\bø\u0001��¢\u0006\u0004\b%\u0010\"J \u0010&\u001a\u00020\u00102\f\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u001fH\u0016ø\u0001��¢\u0006\u0004\b&\u0010\"J\u0011\u0010*\u001a\u0004\u0018\u00010'H\u0010¢\u0006\u0004\b(\u0010)J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-R\u001e\u0010.\u001a\u0004\u0018\u00010'8��@��X\u0081\u000e¢\u0006\f\n\u0004\b.\u0010/\u0012\u0004\b0\u00101R$\u00103\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`28\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0016\u0010\u000e\u001a\u00020\r8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b7\u00108R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u00109R\u0016\u0010:\u001a\u00020'8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b:\u0010/R\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00028��0\u00038P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020>8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0019\u0010B\u001a\b\u0012\u0002\b\u0003\u0018\u00010\n8F@\u0006¢\u0006\u0006\u001a\u0004\bA\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006E"}, d2 = {"Lkotlinx/coroutines/DispatchedContinuation;", "T", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "", "checkPostponedCancellation", "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/coroutines/CoroutineContext;", "context", FirebaseAnalytics.Param.VALUE, "", "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "dispatchYield", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "requester", "", "isReusable", "(Lkotlinx/coroutines/CancellableContinuationImpl;)Z", "cause", "postponeCancellation", "(Ljava/lang/Throwable;)Z", "Lkotlin/Result;", "result", "resumeCancellableWith", "(Ljava/lang/Object;)V", "resumeCancelled", "()Z", "resumeUndispatchedWith", "resumeWith", "", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "", "toString", "()Ljava/lang/String;", "_state", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "()V", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "countOrElement", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getReusableCancellableContinuation", "reusableCancellableContinuation", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DispatchedContinuation.class */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements CoroutineStackFrame, Continuation<T> {

    /* renamed from: n */
    private static final AtomicReferenceFieldUpdater f21156n = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;
    @JvmField
    @Nullable

    /* renamed from: i */
    public Object f21157i;
    @Nullable

    /* renamed from: j */
    private final CoroutineStackFrame f21158j;
    @JvmField
    @NotNull

    /* renamed from: k */
    public final Object f21159k;
    @JvmField
    @NotNull

    /* renamed from: l */
    public final CoroutineDispatcher f21160l;
    @JvmField
    @NotNull

    /* renamed from: m */
    public final Continuation<T> f21161m;

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Continuation<? super T> continuation) {
        super(0);
        Symbol symbol;
        this.f21160l = coroutineDispatcher;
        this.f21161m = continuation;
        symbol = DispatchedContinuationKt.f21162a;
        this.f21157i = symbol;
        Continuation<T> continuation2 = this.f21161m;
        this.f21158j = (CoroutineStackFrame) (!(continuation2 instanceof CoroutineStackFrame) ? null : continuation2);
        this.f21159k = ThreadContextKt.m428b(getContext());
        this._reusableCancellableContinuation = null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @NotNull
    /* renamed from: b */
    public Continuation<T> mo1278b() {
        return this;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    /* renamed from: g */
    public Object mo1274g() {
        Symbol symbol;
        Symbol symbol2;
        Object obj = this.f21157i;
        if (DebugKt.m1308a()) {
            symbol2 = DispatchedContinuationKt.f21162a;
            if (!(obj != symbol2)) {
                throw new AssertionError();
            }
        }
        symbol = DispatchedContinuationKt.f21162a;
        this.f21157i = symbol;
        return obj;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        return this.f21158j;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.f21161m.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Nullable
    /* renamed from: h */
    public final Throwable m1291h(@NotNull CancellableContinuation<?> cancellableContinuation) {
        Symbol symbol;
        do {
            Object obj = this._reusableCancellableContinuation;
            symbol = DispatchedContinuationKt.f21163b;
            if (obj != symbol) {
                if (obj == null) {
                    return null;
                }
                if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException(("Inconsistent state " + obj).toString());
                } else if (f21156n.compareAndSet(this, obj, null)) {
                    return (Throwable) obj;
                } else {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            }
        } while (!f21156n.compareAndSet(this, symbol, cancellableContinuation));
        return null;
    }

    @Nullable
    /* renamed from: i */
    public final CancellableContinuationImpl<T> m1290i() {
        Object obj;
        do {
            obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = DispatchedContinuationKt.f21163b;
                return null;
            } else if (!(obj instanceof CancellableContinuationImpl)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!f21156n.compareAndSet(this, obj, DispatchedContinuationKt.f21163b));
        return (CancellableContinuationImpl) obj;
    }

    /* renamed from: j */
    public final void m1289j(@NotNull CoroutineContext coroutineContext, T t) {
        this.f21157i = t;
        this.f21165h = 1;
        this.f21160l.mo349N(coroutineContext, this);
    }

    @Nullable
    /* renamed from: k */
    public final CancellableContinuationImpl<?> m1288k() {
        Object obj = this._reusableCancellableContinuation;
        Object obj2 = obj;
        if (!(obj instanceof CancellableContinuationImpl)) {
            obj2 = null;
        }
        return (CancellableContinuationImpl) obj2;
    }

    /* renamed from: l */
    public final boolean m1287l(@NotNull CancellableContinuationImpl<?> cancellableContinuationImpl) {
        Object obj = this._reusableCancellableContinuation;
        boolean z = false;
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof CancellableContinuationImpl)) {
            return true;
        }
        if (obj == cancellableContinuationImpl) {
            z = true;
        }
        return z;
    }

    /* renamed from: m */
    public final boolean m1286m(@NotNull Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            if (Intrinsics.m1834a(obj, DispatchedContinuationKt.f21163b)) {
                if (f21156n.compareAndSet(this, DispatchedContinuationKt.f21163b, th)) {
                    return true;
                }
            } else if (obj instanceof Throwable) {
                return true;
            } else {
                if (f21156n.compareAndSet(this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        CoroutineContext context = this.f21161m.getContext();
        Object b = CompletedExceptionallyKt.m1327b(obj);
        if (this.f21160l.mo478V(context)) {
            this.f21157i = b;
            this.f21165h = 0;
            this.f21160l.mo241t(context, this);
            return;
        }
        EventLoop a = ThreadLocalEventLoop.f21244b.m1110a();
        if (a.m1261e0()) {
            this.f21157i = b;
            this.f21165h = 0;
            a.m1264Y(this);
            return;
        }
        a.m1263b0(true);
        try {
            CoroutineContext context2 = getContext();
            Object c = ThreadContextKt.m427c(context2, this.f21159k);
            this.f21161m.resumeWith(obj);
            Unit unit = Unit.f20447a;
            ThreadContextKt.m429a(context2, c);
            do {
            } while (a.m1259j0());
        } finally {
            try {
            } finally {
            }
        }
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.f21160l + ", " + DebugStringsKt.m1302c(this.f21161m) + ']';
    }
}

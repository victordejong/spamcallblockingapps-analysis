package kotlinx.coroutines.internal;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.c.b.a.d;
import kotlin.c.f;
import kotlin.jvm.functions.Function1;
import kotlin.v;
import kotlinx.coroutines.aa;
import kotlinx.coroutines.ac;
import kotlinx.coroutines.af;
import kotlinx.coroutines.ao;
import kotlinx.coroutines.ap;
import kotlinx.coroutines.ax;
import kotlinx.coroutines.bf;
import kotlinx.coroutines.cn;
import kotlinx.coroutines.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\b��\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u00028��0N2\u00060>j\u0002`?2\b\u0012\u0004\u0012\u00028��0\u0004B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\u000f\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\nH\u0010¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\n2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00028��H��¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001e\u001a\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020!2\n\u0010 \u001a\u0006\u0012\u0002\b\u00030\u0013¢\u0006\u0004\b\"\u0010#J\u0015\u0010$\u001a\u00020!2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b$\u0010%JH\u0010,\u001a\u00020\f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028��0&2%\b\b\u0010+\u001a\u001f\u0012\u0013\u0012\u00110\n¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010(H\u0086\bø\u0001��¢\u0006\u0004\b,\u0010-J\u001a\u0010/\u001a\u00020!2\b\u0010.\u001a\u0004\u0018\u00010\bH\u0086\b¢\u0006\u0004\b/\u00100J!\u00101\u001a\u00020\f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028��0&H\u0086\bø\u0001��¢\u0006\u0004\b1\u00102J \u00103\u001a\u00020\f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028��0&H\u0016ø\u0001��¢\u0006\u0004\b3\u00102J\u0011\u00106\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b4\u00105J\u000f\u00108\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109R\u001e\u0010:\u001a\u0004\u0018\u00010\b8��@��X\u0081\u000e¢\u0006\f\n\u0004\b:\u0010;\u0012\u0004\b<\u0010=R\u001e\u0010B\u001a\n\u0018\u00010>j\u0004\u0018\u0001`?8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0016\u0010\u0017\u001a\u00020\u00168\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bC\u0010DR\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010ER\u0016\u0010F\u001a\u00020\b8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\bF\u0010;R\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00028��0\u00048P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010JR\u0019\u0010L\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00138F@\u0006¢\u0006\u0006\u001a\u0004\bK\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006M"}, d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", "T", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "Lkotlin/coroutines/Continuation;", "continuation", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "", "takenState", "", "cause", "", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "Lkotlinx/coroutines/CancellableContinuation;", "checkPostponedCancellation", "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/coroutines/CoroutineContext;", "context", "value", "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "dispatchYield", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "requester", "", "isReusable", "(Lkotlinx/coroutines/CancellableContinuationImpl;)Z", "postponeCancellation", "(Ljava/lang/Throwable;)Z", "Lkotlin/Result;", "result", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onCancellation", "resumeCancellableWith", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "resumeCancelled", "(Ljava/lang/Object;)Z", "resumeUndispatchedWith", "(Ljava/lang/Object;)V", "resumeWith", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "", "toString", "()Ljava/lang/String;", "_state", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "()V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "countOrElement", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/CoroutineDispatcher;", "getReusableCancellableContinuation", "reusableCancellableContinuation", "kotlinx-coroutines-core", "Lkotlinx/coroutines/DispatchedTask;"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/e.class */
public final class e<T> extends ax<T> implements d, kotlin.c.d<T> {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f38807d = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_reusableCancellableContinuation");

    /* renamed from: a  reason: collision with root package name */
    public Object f38808a;
    public final af e;
    public final kotlin.c.d<T> f;

    /* renamed from: c  reason: collision with root package name */
    public final Object f38809c = z.a(b());
    public volatile /* synthetic */ Object _reusableCancellableContinuation = null;

    /* JADX WARN: Multi-variable type inference failed */
    public e(af afVar, kotlin.c.d<? super T> dVar) {
        super(-1);
        v vVar;
        this.e = afVar;
        this.f = dVar;
        vVar = f.f38811b;
        this.f38808a = vVar;
    }

    public final Throwable a(n<?> nVar) {
        do {
            Object obj = this._reusableCancellableContinuation;
            if (obj != f.f38810a) {
                if (obj == null) {
                    return null;
                }
                if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException("Inconsistent state ".concat(String.valueOf(obj)).toString());
                } else if (f38807d.compareAndSet(this, obj, null)) {
                    return (Throwable) obj;
                } else {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            }
        } while (!f38807d.compareAndSet(this, f.f38810a, nVar));
        return null;
    }

    @Override // kotlinx.coroutines.ax
    public final void a(Object obj, Throwable th) {
        if (obj instanceof aa) {
            ((aa) obj).f38666b.invoke(th);
        }
    }

    @Override // kotlin.c.d
    public final f b() {
        return this.f.b();
    }

    @Override // kotlin.c.d
    public final void b(Object obj) {
        f b2 = this.f.b();
        Object a2 = ac.a(obj, (Function1<? super Throwable, v>) null);
        if (this.e.b()) {
            this.f38808a = a2;
            this.f38696b = 0;
            this.e.a(b2, this);
            return;
        }
        ao.a();
        cn cnVar = cn.f38784a;
        bf a3 = cn.a();
        if (a3.g()) {
            this.f38808a = a2;
            this.f38696b = 0;
            a3.a((ax<?>) this);
            return;
        }
        e<T> eVar = this;
        a3.a(true);
        try {
            f b3 = b();
            Object a4 = z.a(b3, this.f38809c);
            this.f.b(obj);
            v vVar = v.f38654a;
            z.b(b3, a4);
            do {
            } while (a3.f());
        } catch (Throwable th) {
            try {
                eVar.a(th, (Throwable) null);
            } finally {
                a3.b(true);
            }
        }
    }

    @Override // kotlin.c.b.a.d
    public final d c() {
        kotlin.c.d<T> dVar = this.f;
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
    public final Object f() {
        v vVar;
        v vVar2;
        Object obj = this.f38808a;
        if (ao.a()) {
            vVar2 = f.f38811b;
            if (!(obj != vVar2)) {
                throw new AssertionError();
            }
        }
        vVar = f.f38811b;
        this.f38808a = vVar;
        return obj;
    }

    @Override // kotlinx.coroutines.ax
    public final kotlin.c.d<T> k() {
        return this;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.e + ", " + ap.a(this.f) + ']';
    }
}

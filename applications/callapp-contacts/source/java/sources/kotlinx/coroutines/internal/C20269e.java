package kotlinx.coroutines.internal;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.AbstractC20140af;
import kotlinx.coroutines.AbstractC20170ax;
import kotlinx.coroutines.AbstractC20196bf;
import kotlinx.coroutines.AbstractC20308n;
import kotlinx.coroutines.C20135aa;
import kotlinx.coroutines.C20137ac;
import kotlinx.coroutines.C20159ao;
import kotlinx.coroutines.C20160ap;
import kotlinx.coroutines.C20245cn;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��~\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\b��\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u00028��0N2\u00060>j\u0002`?2\b\u0012\u0004\u0012\u00028��0\u0004B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\u000f\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\nH\u0010¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\n2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00028��H��¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001e\u001a\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020!2\n\u0010 \u001a\u0006\u0012\u0002\b\u00030\u0013¢\u0006\u0004\b\"\u0010#J\u0015\u0010$\u001a\u00020!2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b$\u0010%JH\u0010,\u001a\u00020\f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028��0&2%\b\b\u0010+\u001a\u001f\u0012\u0013\u0012\u00110\n¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010(H\u0086\bø\u0001��¢\u0006\u0004\b,\u0010-J\u001a\u0010/\u001a\u00020!2\b\u0010.\u001a\u0004\u0018\u00010\bH\u0086\b¢\u0006\u0004\b/\u00100J!\u00101\u001a\u00020\f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028��0&H\u0086\bø\u0001��¢\u0006\u0004\b1\u00102J \u00103\u001a\u00020\f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028��0&H\u0016ø\u0001��¢\u0006\u0004\b3\u00102J\u0011\u00106\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b4\u00105J\u000f\u00108\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109R\u001e\u0010:\u001a\u0004\u0018\u00010\b8��@��X\u0081\u000e¢\u0006\f\n\u0004\b:\u0010;\u0012\u0004\b<\u0010=R\u001e\u0010B\u001a\n\u0018\u00010>j\u0004\u0018\u0001`?8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0016\u0010\u0017\u001a\u00020\u00168\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bC\u0010DR\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010ER\u0016\u0010F\u001a\u00020\b8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\bF\u0010;R\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00028��0\u00048P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010JR\u0019\u0010L\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00138F@\u0006¢\u0006\u0006\u001a\u0004\bK\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006M"}, m4298d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", "T", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "Lkotlin/coroutines/Continuation;", "continuation", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "", "takenState", "", "cause", "", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "Lkotlinx/coroutines/CancellableContinuation;", "checkPostponedCancellation", "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/coroutines/CoroutineContext;", "context", "value", "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "dispatchYield", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "requester", "", "isReusable", "(Lkotlinx/coroutines/CancellableContinuationImpl;)Z", "postponeCancellation", "(Ljava/lang/Throwable;)Z", "Lkotlin/Result;", "result", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onCancellation", "resumeCancellableWith", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "resumeCancelled", "(Ljava/lang/Object;)Z", "resumeUndispatchedWith", "(Ljava/lang/Object;)V", "resumeWith", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "", "toString", "()Ljava/lang/String;", "_state", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "()V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "countOrElement", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/CoroutineDispatcher;", "getReusableCancellableContinuation", "reusableCancellableContinuation", "kotlinx-coroutines-core", "Lkotlinx/coroutines/DispatchedTask;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.e */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/e.class */
public final class C20269e<T> extends AbstractC20170ax<T> implements AbstractC18319d, AbstractC18332d<T> {

    /* renamed from: d */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f66728d = AtomicReferenceFieldUpdater.newUpdater(C20269e.class, Object.class, "_reusableCancellableContinuation");

    /* renamed from: a */
    public Object f66729a;

    /* renamed from: e */
    public final AbstractC20140af f66731e;

    /* renamed from: f */
    public final AbstractC18332d<T> f66732f;

    /* renamed from: c */
    public final Object f66730c = C20300z.m806a(mo787b());
    public volatile /* synthetic */ Object _reusableCancellableContinuation = null;

    /* JADX WARN: Multi-variable type inference failed */
    public C20269e(AbstractC20140af abstractC20140af, AbstractC18332d<? super T> abstractC18332d) {
        super(-1);
        C20296v c20296v;
        this.f66731e = abstractC20140af;
        this.f66732f = abstractC18332d;
        c20296v = C20270f.f66734b;
        this.f66729a = c20296v;
    }

    /* renamed from: a */
    public final Throwable m876a(AbstractC20308n<?> abstractC20308n) {
        do {
            Object obj = this._reusableCancellableContinuation;
            if (obj != C20270f.f66733a) {
                if (obj == null) {
                    return null;
                }
                if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException("Inconsistent state ".concat(String.valueOf(obj)).toString());
                }
                if (!f66728d.compareAndSet(this, obj, null)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                return (Throwable) obj;
            }
        } while (!f66728d.compareAndSet(this, C20270f.f66733a, abstractC20308n));
        return null;
    }

    @Override // kotlinx.coroutines.AbstractC20170ax
    /* renamed from: a */
    public final void mo796a(Object obj, Throwable th) {
        if (obj instanceof C20135aa) {
            ((C20135aa) obj).f66541b.invoke(th);
        }
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final AbstractC18335f mo787b() {
        return this.f66732f.mo787b();
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final void mo786b(Object obj) {
        AbstractC18335f mo787b = this.f66732f.mo787b();
        Object m1096a = C20137ac.m1096a(obj, (Function1<? super Throwable, C20128v>) null);
        if (this.f66731e.mo824b()) {
            this.f66729a = m1096a;
            this.f66574b = 0;
            this.f66731e.mo763a(mo787b, this);
            return;
        }
        C20159ao.m1083a();
        C20245cn c20245cn = C20245cn.f66700a;
        AbstractC20196bf m913a = C20245cn.m913a();
        if (m913a.m1007g()) {
            this.f66729a = m1096a;
            this.f66574b = 0;
            m913a.m1014a((AbstractC20170ax<?>) this);
            return;
        }
        C20269e<T> c20269e = this;
        m913a.m1012a(true);
        try {
            AbstractC18335f mo787b2 = mo787b();
            Object m805a = C20300z.m805a(mo787b2, this.f66730c);
            this.f66732f.mo786b(obj);
            C20128v c20128v = C20128v.f66529a;
            C20300z.m804b(mo787b2, m805a);
            do {
            } while (m913a.m1008f());
        } catch (Throwable th) {
            try {
                c20269e.m1067a(th, (Throwable) null);
            } finally {
                m913a.m1010b(true);
            }
        }
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18319d
    /* renamed from: c */
    public final AbstractC18319d mo784c() {
        AbstractC18332d<T> abstractC18332d = this.f66732f;
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
    /* renamed from: f */
    public final Object mo779f() {
        C20296v c20296v;
        C20296v c20296v2;
        Object obj = this.f66729a;
        if (C20159ao.m1083a()) {
            c20296v2 = C20270f.f66734b;
            if (!(obj != c20296v2)) {
                throw new AssertionError();
            }
        }
        c20296v = C20270f.f66734b;
        this.f66729a = c20296v;
        return obj;
    }

    @Override // kotlinx.coroutines.AbstractC20170ax
    /* renamed from: k */
    public final AbstractC18332d<T> mo774k() {
        return this;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f66731e + ", " + C20160ap.m1079a(this.f66732f) + ']';
    }
}

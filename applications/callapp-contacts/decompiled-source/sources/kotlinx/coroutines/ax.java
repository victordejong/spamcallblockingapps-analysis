package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.b;
import kotlin.c.d;
import kotlin.c.f;
import kotlin.jvm.internal.p;
import kotlin.o;
import kotlin.v;
import kotlinx.coroutines.b.j;
import kotlinx.coroutines.b.k;
import kotlinx.coroutines.internal.e;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.z;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u000e\b \u0018��*\u0006\b��\u0010\u0001 ��2\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010¢\u0006\u0002\b\u0014J\u001f\u0010\u0015\u001a\u0002H\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0018\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001b\u001a\u00020\fJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000eH ¢\u0006\u0002\b\u001dR\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bX \u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/DispatchedTask;", "T", "Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/SchedulerTask;", "resumeMode", "", "(I)V", "delegate", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "cancelCompletedResult", "", "takenState", "", "cause", "", "cancelCompletedResult$kotlinx_coroutines_core", "getExceptionalResult", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "getExceptionalResult$kotlinx_coroutines_core", "getSuccessfulResult", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "handleFatalException", "exception", "finallyException", "run", "takeState", "takeState$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ax.class */
public abstract class ax<T> extends j {

    /* renamed from: b  reason: collision with root package name */
    public int f38696b;

    public ax(int i) {
        this.f38696b = i;
    }

    public void a(Object obj, Throwable th) {
    }

    public final void a(Throwable th, Throwable th2) {
        if (th != null || th2 != null) {
            if (!(th == null || th2 == null)) {
                b.a(th, th2);
            }
            Throwable th3 = th;
            if (th == null) {
                th3 = th2;
            }
            p.a((Object) th3);
            ah.a(k().b(), new an("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th3));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T c(Object obj) {
        return obj;
    }

    public Throwable d(Object obj) {
        Object obj2 = obj;
        if (!(obj instanceof z)) {
            obj2 = null;
        }
        z zVar = (z) obj2;
        if (zVar != null) {
            return zVar.f38868b;
        }
        return null;
    }

    public abstract Object f();

    public abstract d<T> k();

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        CancellationException cancellationException;
        if (ao.a()) {
            if (!(this.f38696b != -1)) {
                throw new AssertionError();
            }
        }
        k kVar = this.h;
        try {
            d<T> k = k();
            if (k != null) {
                e eVar = (e) k;
                d<T> dVar = eVar.f;
                Object obj3 = eVar.f38809c;
                f b2 = dVar.b();
                Object a2 = z.a(b2, obj3);
                cs<?> a3 = a2 != z.f38845a ? ae.a(dVar, b2, a2) : null;
                f b3 = dVar.b();
                Object f = f();
                Throwable d2 = d(f);
                bv bvVar = (d2 != null || !ay.a(this.f38696b)) ? null : (bv) b3.get(bv.f38758c);
                if (bvVar != null && !bvVar.e()) {
                    CancellationException m = bvVar.m();
                    a(f, m);
                    o.a aVar = o.f36812a;
                    if (ao.c() && (dVar instanceof kotlin.c.b.a.d)) {
                        cancellationException = u.a(m, (kotlin.c.b.a.d) dVar);
                        dVar.b(o.d(kotlin.p.a(cancellationException)));
                    }
                    cancellationException = m;
                    dVar.b(o.d(kotlin.p.a(cancellationException)));
                } else if (d2 != null) {
                    o.a aVar2 = o.f36812a;
                    dVar.b(o.d(kotlin.p.a(d2)));
                } else {
                    T c2 = c(f);
                    o.a aVar3 = o.f36812a;
                    dVar.b(o.d(c2));
                }
                v vVar = v.f38654a;
                if (a3 == null || a3.r()) {
                    z.b(b2, a2);
                }
                try {
                    o.a aVar4 = o.f36812a;
                    kVar.c();
                    obj2 = o.d(v.f38654a);
                } catch (Throwable th) {
                    o.a aVar5 = o.f36812a;
                    obj2 = o.d(kotlin.p.a(th));
                }
                a((Throwable) null, o.c(obj2));
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>");
        } catch (Throwable th2) {
            try {
                o.a aVar6 = o.f36812a;
                kVar.c();
                obj = o.d(v.f38654a);
            } catch (Throwable th3) {
                o.a aVar7 = o.f36812a;
                obj = o.d(kotlin.p.a(th3));
            }
            a(th2, o.c(obj));
        }
    }
}

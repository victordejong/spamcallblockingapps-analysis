package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.coroutines.AbstractC20218bv;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0001\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0007J\u0011\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\tH\u0082\bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Landroidx/lifecycle/LifecycleController;", "", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "minState", "Landroidx/lifecycle/Lifecycle$State;", "dispatchQueue", "Landroidx/lifecycle/DispatchQueue;", "parentJob", "Lkotlinx/coroutines/Job;", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/Job;)V", "observer", "Landroidx/lifecycle/LifecycleEventObserver;", "finish", "", "handleDestroy", "lifecycle-runtime-ktx_release"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: androidx.lifecycle.k */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/k.class */
public final class C1257k {

    /* renamed from: a */
    final AbstractC1253j.EnumC1256b f4833a;

    /* renamed from: b */
    final C1247d f4834b;

    /* renamed from: c */
    private final AbstractC1261n f4835c;

    /* renamed from: d */
    private final AbstractC1253j f4836d;

    public C1257k(AbstractC1253j lifecycle, AbstractC1253j.EnumC1256b minState, C1247d dispatchQueue, final AbstractC20218bv parentJob) {
        C18524p.m3840d(lifecycle, "lifecycle");
        C18524p.m3840d(minState, "minState");
        C18524p.m3840d(dispatchQueue, "dispatchQueue");
        C18524p.m3840d(parentJob, "parentJob");
        this.f4836d = lifecycle;
        this.f4833a = minState;
        this.f4834b = dispatchQueue;
        AbstractC1261n abstractC1261n = new AbstractC1261n() { // from class: androidx.lifecycle.LifecycleController$observer$1
            @Override // androidx.lifecycle.AbstractC1261n
            /* renamed from: a */
            public final void mo39588a(AbstractC1263p source, AbstractC1253j.EnumC1255a enumC1255a) {
                C18524p.m3840d(source, "source");
                C18524p.m3840d(enumC1255a, "<anonymous parameter 1>");
                AbstractC1253j lifecycle2 = source.getLifecycle();
                C18524p.m3843b(lifecycle2, "source.lifecycle");
                if (lifecycle2.getCurrentState() == AbstractC1253j.EnumC1256b.DESTROYED) {
                    C1257k c1257k = C1257k.this;
                    parentJob.mo970a((CancellationException) null);
                    c1257k.m43296a();
                    return;
                }
                AbstractC1253j lifecycle3 = source.getLifecycle();
                C18524p.m3843b(lifecycle3, "source.lifecycle");
                if (lifecycle3.getCurrentState().compareTo(C1257k.this.f4833a) < 0) {
                    C1257k.this.f4834b.f4827a = true;
                    return;
                }
                C1247d c1247d = C1257k.this.f4834b;
                if (!c1247d.f4827a) {
                    return;
                }
                if (!(true ^ c1247d.f4828b)) {
                    throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
                }
                c1247d.f4827a = false;
                c1247d.m43297a();
            }
        };
        this.f4835c = abstractC1261n;
        if (lifecycle.getCurrentState() != AbstractC1253j.EnumC1256b.DESTROYED) {
            lifecycle.addObserver(abstractC1261n);
            return;
        }
        parentJob.mo970a((CancellationException) null);
        m43296a();
    }

    /* renamed from: a */
    public final void m43296a() {
        this.f4836d.removeObserver(this.f4835c);
        C1247d c1247d = this.f4834b;
        c1247d.f4828b = true;
        c1247d.m43297a();
    }
}

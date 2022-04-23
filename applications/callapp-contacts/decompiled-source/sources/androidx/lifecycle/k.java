package androidx.lifecycle;

import androidx.lifecycle.j;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.bv;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0001\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0007J\u0011\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\tH\u0082\bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Landroidx/lifecycle/LifecycleController;", "", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "minState", "Landroidx/lifecycle/Lifecycle$State;", "dispatchQueue", "Landroidx/lifecycle/DispatchQueue;", "parentJob", "Lkotlinx/coroutines/Job;", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/Job;)V", "observer", "Landroidx/lifecycle/LifecycleEventObserver;", "finish", "", "handleDestroy", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    final j.b f2580a;

    /* renamed from: b  reason: collision with root package name */
    final d f2581b;

    /* renamed from: c  reason: collision with root package name */
    private final n f2582c;

    /* renamed from: d  reason: collision with root package name */
    private final j f2583d;

    public k(j lifecycle, j.b minState, d dispatchQueue, final bv parentJob) {
        p.d(lifecycle, "lifecycle");
        p.d(minState, "minState");
        p.d(dispatchQueue, "dispatchQueue");
        p.d(parentJob, "parentJob");
        this.f2583d = lifecycle;
        this.f2580a = minState;
        this.f2581b = dispatchQueue;
        n lifecycleController$observer$1 = new n() { // from class: androidx.lifecycle.LifecycleController$observer$1
            @Override // androidx.lifecycle.n
            public final void a(p source, j.a aVar) {
                p.d(source, "source");
                p.d(aVar, "<anonymous parameter 1>");
                j lifecycle2 = source.getLifecycle();
                p.b(lifecycle2, "source.lifecycle");
                if (lifecycle2.getCurrentState() == j.b.DESTROYED) {
                    k kVar = k.this;
                    parentJob.a((CancellationException) null);
                    kVar.a();
                    return;
                }
                j lifecycle3 = source.getLifecycle();
                p.b(lifecycle3, "source.lifecycle");
                if (lifecycle3.getCurrentState().compareTo(k.this.f2580a) < 0) {
                    k.this.f2581b.f2574a = true;
                    return;
                }
                d dVar = k.this.f2581b;
                if (!dVar.f2574a) {
                    return;
                }
                if (true ^ dVar.f2575b) {
                    dVar.f2574a = false;
                    dVar.a();
                    return;
                }
                throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
            }
        };
        this.f2582c = lifecycleController$observer$1;
        if (lifecycle.getCurrentState() == j.b.DESTROYED) {
            parentJob.a((CancellationException) null);
            a();
            return;
        }
        lifecycle.addObserver(lifecycleController$observer$1);
    }

    public final void a() {
        this.f2583d.removeObserver(this.f2582c);
        d dVar = this.f2581b;
        dVar.f2575b = true;
        dVar.a();
    }
}

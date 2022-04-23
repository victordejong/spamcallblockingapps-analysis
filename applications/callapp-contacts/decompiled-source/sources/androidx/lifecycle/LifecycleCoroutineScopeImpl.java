package androidx.lifecycle;

import androidx.lifecycle.j;
import com.appsflyer.internal.referrer.Payload;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.by;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0006\u0010\u0012\u001a\u00020\rR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u0004X\u0090\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Landroidx/lifecycle/LifecycleCoroutineScopeImpl;", "Landroidx/lifecycle/LifecycleCoroutineScope;", "Landroidx/lifecycle/LifecycleEventObserver;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "getLifecycle$lifecycle_runtime_ktx_release", "()Landroidx/lifecycle/Lifecycle;", "onStateChanged", "", Payload.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", "event", "Landroidx/lifecycle/Lifecycle$Event;", "register", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleCoroutineScopeImpl.class */
public final class LifecycleCoroutineScopeImpl extends l implements n {

    /* renamed from: a  reason: collision with root package name */
    private final j f2529a;

    /* renamed from: b  reason: collision with root package name */
    private final f f2530b;

    public LifecycleCoroutineScopeImpl(j lifecycle, f coroutineContext) {
        p.d(lifecycle, "lifecycle");
        p.d(coroutineContext, "coroutineContext");
        this.f2529a = lifecycle;
        this.f2530b = coroutineContext;
        if (lifecycle.getCurrentState() == j.b.DESTROYED) {
            by.a(coroutineContext, null);
        }
    }

    @Override // androidx.lifecycle.n
    public final void a(p source, j.a event) {
        p.d(source, "source");
        p.d(event, "event");
        if (this.f2529a.getCurrentState().compareTo(j.b.DESTROYED) <= 0) {
            this.f2529a.removeObserver(this);
            by.a(this.f2530b, null);
        }
    }

    @Override // kotlinx.coroutines.ak
    public final f az_() {
        return this.f2530b;
    }
}

package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\r\u001a\u00020\f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\u00020\u00118\u0010@\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Landroidx/lifecycle/LifecycleCoroutineScopeImpl;", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroidx/lifecycle/LifecycleCoroutineScope;", "Landroidx/lifecycle/LifecycleOwner;", "source", "Landroidx/lifecycle/Lifecycle$Event;", Constants.FirelogAnalytics.PARAM_EVENT, "", "onStateChanged", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V", "register", "()V", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "getLifecycle$lifecycle_runtime_ktx_release", "()Landroidx/lifecycle/Lifecycle;", "<init>", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleCoroutineScopeImpl.class */
public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements LifecycleEventObserver {
    @NotNull

    /* renamed from: f */
    private final Lifecycle f4010f;
    @NotNull

    /* renamed from: g */
    private final CoroutineContext f4011g;

    public LifecycleCoroutineScopeImpl(@NotNull Lifecycle lifecycle, @NotNull CoroutineContext coroutineContext) {
        Intrinsics.m1829f(lifecycle, "lifecycle");
        Intrinsics.m1829f(coroutineContext, "coroutineContext");
        this.f4010f = lifecycle;
        this.f4011g = coroutineContext;
        if (mo18236h().mo18230b() == Lifecycle.State.DESTROYED) {
            JobKt__JobKt.m1206d(mo567u(), null, 1, null);
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Intrinsics.m1829f(source, "source");
        Intrinsics.m1829f(event, "event");
        if (mo18236h().mo18230b().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            mo18236h().mo18229c(this);
            JobKt__JobKt.m1206d(mo567u(), null, 1, null);
        }
    }

    @Override // androidx.lifecycle.LifecycleCoroutineScope
    @NotNull
    /* renamed from: h */
    public Lifecycle mo18236h() {
        return this.f4010f;
    }

    /* renamed from: i */
    public final void m18235i() {
        BuildersKt.m1373b(this, Dispatchers.m1267b().mo477W(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    @NotNull
    /* renamed from: u */
    public CoroutineContext mo567u() {
        return this.f4011g;
    }
}

package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
import com.appsflyer.internal.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.C20223by;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0006\u0010\u0012\u001a\u00020\rR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u0004X\u0090\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, m4298d2 = {"Landroidx/lifecycle/LifecycleCoroutineScopeImpl;", "Landroidx/lifecycle/LifecycleCoroutineScope;", "Landroidx/lifecycle/LifecycleEventObserver;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "getLifecycle$lifecycle_runtime_ktx_release", "()Landroidx/lifecycle/Lifecycle;", "onStateChanged", "", Payload.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", "event", "Landroidx/lifecycle/Lifecycle$Event;", "register", "lifecycle-runtime-ktx_release"}, m4297k = 1, m4296mv = {1, 4, 1})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleCoroutineScopeImpl.class */
public final class LifecycleCoroutineScopeImpl extends AbstractC1258l implements AbstractC1261n {

    /* renamed from: a */
    private final AbstractC1253j f4771a;

    /* renamed from: b */
    private final AbstractC18335f f4772b;

    public LifecycleCoroutineScopeImpl(AbstractC1253j lifecycle, AbstractC18335f coroutineContext) {
        C18524p.m3840d(lifecycle, "lifecycle");
        C18524p.m3840d(coroutineContext, "coroutineContext");
        this.f4771a = lifecycle;
        this.f4772b = coroutineContext;
        if (lifecycle.getCurrentState() == AbstractC1253j.EnumC1256b.DESTROYED) {
            C20223by.m981a(coroutineContext, null);
        }
    }

    @Override // androidx.lifecycle.AbstractC1261n
    /* renamed from: a */
    public final void mo39588a(AbstractC1263p source, AbstractC1253j.EnumC1255a event) {
        C18524p.m3840d(source, "source");
        C18524p.m3840d(event, "event");
        if (this.f4771a.getCurrentState().compareTo(AbstractC1253j.EnumC1256b.DESTROYED) <= 0) {
            this.f4771a.removeObserver(this);
            C20223by.m981a(this.f4772b, null);
        }
    }

    @Override // kotlinx.coroutines.AbstractC20149ak
    public final AbstractC18335f az_() {
        return this.f4772b;
    }
}

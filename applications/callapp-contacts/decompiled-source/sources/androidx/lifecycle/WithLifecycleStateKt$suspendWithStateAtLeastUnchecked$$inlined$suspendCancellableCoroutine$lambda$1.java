package androidx.lifecycle;

import androidx.lifecycle.j;
import com.appsflyer.internal.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.o;
import kotlinx.coroutines.af;
import kotlinx.coroutines.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b¸\u0006��"}, d2 = {"androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1", "Landroidx/lifecycle/LifecycleEventObserver;", "onStateChanged", "", Payload.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", "event", "Landroidx/lifecycle/Lifecycle$Event;", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1.class */
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1 implements n {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ n f2554a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ j f2555b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ j.b f2556c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function0 f2557d;
    final /* synthetic */ boolean e;
    final /* synthetic */ af f;

    WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1(n nVar, j jVar, j.b bVar, Function0 function0, boolean z, af afVar) {
        this.f2554a = nVar;
        this.f2555b = jVar;
        this.f2556c = bVar;
        this.f2557d = function0;
        this.e = z;
        this.f = afVar;
    }

    @Override // androidx.lifecycle.n
    public final void a(p source, j.a event) {
        Object obj;
        p.d(source, "source");
        p.d(event, "event");
        if (event == j.a.upTo(this.f2556c)) {
            this.f2555b.removeObserver(this);
            n nVar = this.f2554a;
            Function0 function0 = this.f2557d;
            try {
                o.a aVar = o.f36812a;
                obj = o.d(function0.invoke());
            } catch (Throwable th) {
                o.a aVar2 = o.f36812a;
                obj = o.d(kotlin.p.a(th));
            }
            nVar.b(obj);
        } else if (event == j.a.ON_DESTROY) {
            this.f2555b.removeObserver(this);
            n nVar2 = this.f2554a;
            LifecycleDestroyedException lifecycleDestroyedException = new LifecycleDestroyedException();
            o.a aVar3 = o.f36812a;
            nVar2.b(o.d(kotlin.p.a((Throwable) lifecycleDestroyedException)));
        }
    }
}

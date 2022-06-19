package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
import com.appsflyer.internal.referrer.Payload;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlinx.coroutines.AbstractC20140af;
import kotlinx.coroutines.AbstractC20308n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b¸\u0006��"}, m4298d2 = {"androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1", "Landroidx/lifecycle/LifecycleEventObserver;", "onStateChanged", "", Payload.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", "event", "Landroidx/lifecycle/Lifecycle$Event;", "lifecycle-runtime-ktx_release"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1 */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1.class */
public final class C1227x3029b39e implements AbstractC1261n {

    /* renamed from: a */
    final /* synthetic */ AbstractC20308n f4805a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1253j f4806b;

    /* renamed from: c */
    final /* synthetic */ AbstractC1253j.EnumC1256b f4807c;

    /* renamed from: d */
    final /* synthetic */ Function0 f4808d;

    /* renamed from: e */
    final /* synthetic */ boolean f4809e;

    /* renamed from: f */
    final /* synthetic */ AbstractC20140af f4810f;

    C1227x3029b39e(AbstractC20308n abstractC20308n, AbstractC1253j abstractC1253j, AbstractC1253j.EnumC1256b enumC1256b, Function0 function0, boolean z, AbstractC20140af abstractC20140af) {
        this.f4805a = abstractC20308n;
        this.f4806b = abstractC1253j;
        this.f4807c = enumC1256b;
        this.f4808d = function0;
        this.f4809e = z;
        this.f4810f = abstractC20140af;
    }

    @Override // androidx.lifecycle.AbstractC1261n
    /* renamed from: a */
    public final void mo39588a(AbstractC1263p source, AbstractC1253j.EnumC1255a event) {
        Object obj;
        C18524p.m3840d(source, "source");
        C18524p.m3840d(event, "event");
        if (event != AbstractC1253j.EnumC1255a.upTo(this.f4807c)) {
            if (event != AbstractC1253j.EnumC1255a.ON_DESTROY) {
                return;
            }
            this.f4806b.removeObserver(this);
            AbstractC20308n abstractC20308n = this.f4805a;
            LifecycleDestroyedException lifecycleDestroyedException = new LifecycleDestroyedException();
            C18539o.C18540a c18540a = C18539o.f63626a;
            abstractC20308n.mo786b(C18539o.m3836d(C18542p.m3834a((Throwable) lifecycleDestroyedException)));
            return;
        }
        this.f4806b.removeObserver(this);
        AbstractC20308n abstractC20308n2 = this.f4805a;
        Function0 function0 = this.f4808d;
        try {
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            obj = C18539o.m3836d(function0.invoke());
        } catch (Throwable th) {
            C18539o.C18540a c18540a3 = C18539o.f63626a;
            obj = C18539o.m3836d(C18542p.m3834a(th));
        }
        abstractC20308n2.mo786b(obj);
    }
}

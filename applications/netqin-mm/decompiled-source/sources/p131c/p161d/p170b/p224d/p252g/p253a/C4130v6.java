package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdyr;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: c.d.b.d.g.a.v6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v6.class */
public final class C4130v6 implements zzdyr<T> {

    /* renamed from: a */
    public final /* synthetic */ zzbcn f15700a;

    public C4130v6(zzbcn zzbcnVar) {
        this.f15700a = zzbcnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f15700a.f24773b;
        atomicInteger.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final void onSuccess(T t) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f15700a.f24773b;
        atomicInteger.set(1);
    }
}

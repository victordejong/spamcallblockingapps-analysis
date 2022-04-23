package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbck;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdyr;
/* renamed from: c.d.b.d.g.a.w6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w6.class */
public final class C4167w6 implements zzdyr<T> {

    /* renamed from: a */
    public final /* synthetic */ zzbck f15910a;

    /* renamed from: b */
    public final /* synthetic */ zzbci f15911b;

    public C4167w6(zzbcn zzbcnVar, zzbck zzbckVar, zzbci zzbciVar) {
        this.f15910a = zzbckVar;
        this.f15911b = zzbciVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        this.f15911b.run();
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final void onSuccess(T t) {
        this.f15910a.mo15830a(t);
    }
}

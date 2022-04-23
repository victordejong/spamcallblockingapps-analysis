package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzalm;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbci;
/* renamed from: c.d.b.d.g.a.u1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u1.class */
public final class C4088u1 implements zzbci {

    /* renamed from: a */
    public final /* synthetic */ zzalm f15438a;

    /* renamed from: b */
    public final /* synthetic */ zzakr f15439b;

    public C4088u1(zzakr zzakrVar, zzalm zzalmVar) {
        this.f15439b = zzakrVar;
        this.f15438a = zzalmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbci
    public final void run() {
        Object obj;
        obj = this.f15439b.f24158a;
        synchronized (obj) {
            this.f15439b.f24165h = 1;
            zzayp.m16153g("Failed loading new engine. Marking new engine destroyable.");
            this.f15438a.m16675e();
        }
    }
}

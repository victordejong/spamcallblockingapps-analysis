package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzdwp;
import com.google.android.gms.internal.ads.zzdwx;
import com.google.android.gms.internal.ads.zzdxu;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.List;
/* renamed from: c.d.b.d.g.a.u10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u10.class */
public abstract class u10<V, C> extends zzdxu<V, C> {

    /* renamed from: p */
    public List<w10<V>> f15440p;

    public u10(zzdwk<? extends zzdzc<? extends V>> zzdwkVar, boolean z) {
        super(zzdwkVar, true, true);
        List<w10<V>> zzaxo = zzdwkVar.isEmpty() ? zzdwp.zzaxo() : zzdwx.m13075a(zzdwkVar.size());
        for (int i = 0; i < zzdwkVar.size(); i++) {
            zzaxo.add(null);
        }
        this.f15440p = zzaxo;
    }

    /* renamed from: a */
    public abstract C mo26311a(List<w10<V>> list);

    @Override // com.google.android.gms.internal.ads.zzdxu
    /* renamed from: a */
    public final void mo13041a(int i, V v) {
        List<w10<V>> list = this.f15440p;
        if (list != null) {
            list.set(i, new w10<>(v));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxu
    /* renamed from: a */
    public final void mo13038a(zzdxu.zza zzaVar) {
        super.mo13038a(zzaVar);
        this.f15440p = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdxu
    /* renamed from: l */
    public final void mo13027l() {
        List<w10<V>> list = this.f15440p;
        if (list != null) {
            mo12972a((u10<V, C>) mo26311a((List) list));
        }
    }
}

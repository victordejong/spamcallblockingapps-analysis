package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdpz;
import com.google.android.gms.internal.ads.zzdqi;
import com.google.android.gms.internal.ads.zzdqk;
import com.google.android.gms.internal.ads.zzdqs;
import com.google.android.gms.internal.ads.zzdqv;
import com.google.android.gms.internal.ads.zzdqy;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzdzj;
/* renamed from: c.d.b.d.g.a.vy */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/vy.class */
public final class C4158vy implements zzdyr<zzdqk<AdT>> {

    /* renamed from: a */
    public final /* synthetic */ zzdqs f15889a;

    public C4158vy(zzdqs zzdqsVar) {
        this.f15889a = zzdqsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzdqv zzdqvVar;
        zzdzj zzdzjVar;
        synchronized (this.f15889a) {
            zzdqvVar = this.f15889a.f27760g;
            zzdqvVar.mo13291a(th);
            zzdzjVar = this.f15889a.f27756c;
            zzdzjVar.mo12971a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(Object obj) {
        zzdqv zzdqvVar;
        int i;
        int i2;
        zzdzj zzdzjVar;
        zzdqy zzdqyVar;
        zzdpz zzdpzVar;
        zzdqy zzdqyVar2;
        zzdqk<?> zzdqkVar = (zzdqk) obj;
        synchronized (this.f15889a) {
            zzdqvVar = this.f15889a.f27760g;
            zzdqvVar.mo13293a(zzdqkVar);
            i = this.f15889a.f27758e;
            if (i != zzdqi.f27743h) {
                zzdpzVar = this.f15889a.f27759f;
                zzdqyVar2 = this.f15889a.f27755b;
                zzdpzVar.mo13317a(zzdqyVar2.mo13290a(), zzdqkVar);
            }
            i2 = this.f15889a.f27758e;
            if (i2 == zzdqi.f27742g) {
                zzdqs zzdqsVar = this.f15889a;
                zzdqyVar = this.f15889a.f27755b;
                zzdqsVar.m13296c(zzdqyVar);
            }
            this.f15889a.f27758e = zzdqi.f27742g;
            zzdzjVar = this.f15889a.f27756c;
            zzdzjVar.mo12972a((zzdzj) zzdqkVar);
        }
    }
}

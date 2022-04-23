package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzcjg;
import com.google.android.gms.internal.ads.zzdag;
import com.google.android.gms.internal.ads.zzdnj;
/* renamed from: c.d.b.d.g.a.ay */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ay.class */
public final class C3372ay implements zzdag<zzcjg> {

    /* renamed from: a */
    public final /* synthetic */ zzdnj f12317a;

    public C3372ay(zzdnj zzdnjVar) {
        this.f12317a = zzdnjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    /* renamed from: a */
    public final void mo13703a() {
        synchronized (this.f12317a) {
            this.f12317a.f27533f = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    public final /* synthetic */ void onSuccess(zzcjg zzcjgVar) {
        zzcjg zzcjgVar2;
        zzcjg zzcjgVar3 = zzcjgVar;
        synchronized (this.f12317a) {
            this.f12317a.f27533f = zzcjgVar3;
            zzcjgVar2 = this.f12317a.f27533f;
            zzcjgVar2.mo14749b();
        }
    }
}

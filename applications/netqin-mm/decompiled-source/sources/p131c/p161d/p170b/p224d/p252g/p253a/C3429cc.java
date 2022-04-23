package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbmh;
import com.google.android.gms.internal.ads.zzcsq;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdor;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzdyr;
import java.util.List;
/* renamed from: c.d.b.d.g.a.cc */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cc.class */
public final class C3429cc implements zzdyr<String> {

    /* renamed from: a */
    public final /* synthetic */ zzbmh f12543a;

    public C3429cc(zzbmh zzbmhVar) {
        this.f12543a = zzbmhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzdor zzdorVar;
        zzdsr zzdsrVar;
        zzdog zzdogVar;
        zzdnv zzdnvVar;
        zzdnv zzdnvVar2;
        Context context;
        zzdorVar = this.f12543a.f25161g;
        zzdsrVar = this.f12543a.f25160f;
        zzdogVar = this.f12543a.f25158d;
        zzdnvVar = this.f12543a.f25159e;
        zzdnvVar2 = this.f12543a.f25159e;
        List<String> a = zzdsrVar.m13240a(zzdogVar, zzdnvVar, false, "", "failure_click_attok", zzdnvVar2.f27584c);
        zzp.m17969c();
        context = this.f12543a.f25155a;
        zzdorVar.m13398a(a, zzayu.m16077q(context) ? zzcsq.f26479b : zzcsq.f26478a);
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(String str) {
        zzdor zzdorVar;
        zzdsr zzdsrVar;
        zzdog zzdogVar;
        zzdnv zzdnvVar;
        zzdnv zzdnvVar2;
        Context context;
        zzdorVar = this.f12543a.f25161g;
        zzdsrVar = this.f12543a.f25160f;
        zzdogVar = this.f12543a.f25158d;
        zzdnvVar = this.f12543a.f25159e;
        zzdnvVar2 = this.f12543a.f25159e;
        List<String> a = zzdsrVar.m13240a(zzdogVar, zzdnvVar, false, "", str, zzdnvVar2.f27584c);
        zzp.m17969c();
        context = this.f12543a.f25155a;
        zzdorVar.m13398a(a, zzayu.m16077q(context) ? zzcsq.f26479b : zzcsq.f26478a);
    }
}

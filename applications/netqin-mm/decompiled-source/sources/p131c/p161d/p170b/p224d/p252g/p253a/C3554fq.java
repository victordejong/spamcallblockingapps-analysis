package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzahx;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbgv;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzccc;
import com.google.android.gms.internal.ads.zzccm;
import com.google.android.gms.internal.ads.zzcji;
import com.google.android.gms.internal.ads.zzcjt;
import com.google.android.gms.internal.ads.zzckj;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdny;
import com.google.android.gms.internal.ads.zzdok;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzux;
import com.google.android.gms.internal.ads.zzwm;
/* renamed from: c.d.b.d.g.a.fq */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/fq.class */
public final class C3554fq implements zzccm {

    /* renamed from: a */
    public final Context f12990a;

    /* renamed from: b */
    public final zzcjt f12991b;

    /* renamed from: c */
    public final zzdok f12992c;

    /* renamed from: d */
    public final zzbbx f12993d;

    /* renamed from: e */
    public final zzdnv f12994e;

    /* renamed from: f */
    public final zzdzc<zzcji> f12995f;

    /* renamed from: g */
    public final zzbgj f12996g;

    public C3554fq(Context context, zzcjt zzcjtVar, zzdok zzdokVar, zzbbx zzbbxVar, zzdnv zzdnvVar, zzdzc<zzcji> zzdzcVar, zzbgj zzbgjVar) {
        this.f12990a = context;
        this.f12991b = zzcjtVar;
        this.f12992c = zzdokVar;
        this.f12993d = zzbbxVar;
        this.f12994e = zzdnvVar;
        this.f12995f = zzdzcVar;
        this.f12996g = zzbgjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccm
    /* renamed from: a */
    public final void mo14809a(boolean z, Context context) {
        final zzbgj zzbgjVar;
        zzcji zzcjiVar = (zzcji) zzdyq.m12983b(this.f12995f);
        try {
            zzdnv zzdnvVar = this.f12994e;
            if (!this.f12996g.mo15604E()) {
                zzbgjVar = this.f12996g;
            } else {
                if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23839k0)).booleanValue()) {
                    zzbgjVar = this.f12996g;
                } else {
                    zzbgjVar = this.f12991b.m14129a(this.f12992c.f27643e);
                    zzahx.m16747a(zzbgjVar, zzcjiVar.mo14143l());
                    final zzckj zzckjVar = new zzckj();
                    zzckjVar.m14114a(this.f12990a, zzbgjVar.getView());
                    zzcjiVar.mo14147h().m14122a(zzbgjVar, true);
                    zzbgjVar.mo15543z().mo15492a(new zzbhu(zzckjVar, zzbgjVar) { // from class: c.d.b.d.g.a.iq

                        /* renamed from: a */
                        public final zzckj f13559a;

                        /* renamed from: b */
                        public final zzbgj f13560b;

                        {
                            this.f13559a = zzckjVar;
                            this.f13560b = zzbgjVar;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbhu
                        /* renamed from: a */
                        public final void mo15515a(boolean z2) {
                            zzckj zzckjVar2 = this.f13559a;
                            zzbgj zzbgjVar2 = this.f13560b;
                            zzckjVar2.m14115a();
                            zzbgjVar2.mo15603F();
                            zzbgjVar2.mo15543z().mo15475e();
                        }
                    });
                    zzbhv z2 = zzbgjVar.mo15543z();
                    zzbgjVar.getClass();
                    z2.mo15491a(C3628hq.m26806a(zzbgjVar));
                    zzbgjVar.mo15578a(zzdnvVar.f27602r.f27620b, zzdnvVar.f27602r.f27619a, (String) null);
                    zzbgjVar.mo15559g(true);
                    zzp.m17969c();
                    boolean n = zzayu.m16080n(this.f12990a);
                    zzdnv zzdnvVar2 = this.f12994e;
                    zzi zziVar = new zzi(false, n, false, 0.0f, -1, z, zzdnvVar2.f27563J, zzdnvVar2.f27564K);
                    zzp.m17970b();
                    zzccc i = zzcjiVar.mo14146i();
                    zzdnv zzdnvVar3 = this.f12994e;
                    int i2 = zzdnvVar3.f27565L;
                    zzbbx zzbbxVar = this.f12993d;
                    String str = zzdnvVar3.f27554A;
                    zzdny zzdnyVar = zzdnvVar3.f27602r;
                    zzl.m18002a(context, new AdOverlayInfoParcel((zzux) null, i, (zzv) null, zzbgjVar, i2, zzbbxVar, str, zziVar, zzdnyVar.f27620b, zzdnyVar.f27619a), true);
                }
            }
            zzbgjVar.mo15559g(true);
            zzp.m17969c();
            boolean n2 = zzayu.m16080n(this.f12990a);
            zzdnv zzdnvVar22 = this.f12994e;
            zzi zziVar2 = new zzi(false, n2, false, 0.0f, -1, z, zzdnvVar22.f27563J, zzdnvVar22.f27564K);
            zzp.m17970b();
            zzccc i3 = zzcjiVar.mo14146i();
            zzdnv zzdnvVar32 = this.f12994e;
            int i22 = zzdnvVar32.f27565L;
            zzbbx zzbbxVar2 = this.f12993d;
            String str2 = zzdnvVar32.f27554A;
            zzdny zzdnyVar2 = zzdnvVar32.f27602r;
            zzl.m18002a(context, new AdOverlayInfoParcel((zzux) null, i3, (zzv) null, zzbgjVar, i22, zzbbxVar2, str2, zziVar2, zzdnyVar2.f27620b, zzdnyVar2.f27619a), true);
        } catch (zzbgv e) {
            zzbbq.m15855b("", e);
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzccl;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzdos;
import com.google.android.gms.internal.ads.zzdpa;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvd.class */
public final class zzcvd implements zzcti<zzcbe, zzdpa, zzcuu> {

    /* renamed from: a */
    public final Context f26583a;

    /* renamed from: b */
    public final zzcce f26584b;

    /* renamed from: c */
    public final zzbbx f26585c;

    /* renamed from: d */
    public final Executor f26586d;

    public zzcvd(Context context, zzbbx zzbbxVar, zzcce zzcceVar, Executor executor) {
        this.f26583a = context;
        this.f26585c = zzbbxVar;
        this.f26584b = zzcceVar;
        this.f26586d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzcbe mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, final zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos, zzcwn {
        zzcbg a = this.f26584b.mo14814a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzcbf(new zzccm(zzctcVar) { // from class: c.d.b.d.g.a.lp

            /* renamed from: a */
            public final zzctc f13993a;

            {
                this.f13993a = zzctcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzccm
            /* renamed from: a */
            public final void mo14809a(boolean z, Context context) {
                zzctc zzctcVar2 = this.f13993a;
                try {
                    ((zzdpa) zzctcVar2.f26497b).m13358a(z);
                    ((zzdpa) zzctcVar2.f26497b).m13349g();
                } catch (zzdos e) {
                    zzbbq.m15854c("Cannot show interstitial.");
                    throw new zzccl(e.getCause());
                }
            }
        }));
        a.mo15163a().m14939a((zzbvb) new zzbmf(zzctcVar.f26497b), this.f26586d);
        zzctcVar.f26498c.m13836a((zzanh) a.mo15158f());
        return a.mo14839j();
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos {
        if (this.f26585c.f24761c < 4100000) {
            zzctcVar.f26497b.m13365a(this.f26583a, zzdogVar.f27633a.f27632a.f27642d, zzdnvVar.f27605u.toString(), zzctcVar.f26498c);
        } else {
            zzctcVar.f26497b.m13363a(this.f26583a, zzdogVar.f27633a.f27632a.f27642d, zzdnvVar.f27605u.toString(), zzbao.m15960a((zzbat) zzdnvVar.f27602r), zzctcVar.f26498c);
        }
    }
}

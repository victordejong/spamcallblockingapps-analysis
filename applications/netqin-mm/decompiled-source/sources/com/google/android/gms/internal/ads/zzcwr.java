package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzccl;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzdos;
import com.google.android.gms.internal.ads.zzdpa;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwr.class */
public final class zzcwr implements zzcti<zzcjg, zzdpa, zzcuu> {

    /* renamed from: a */
    public final Context f26677a;

    /* renamed from: b */
    public final Executor f26678b;

    /* renamed from: c */
    public final zzcjj f26679c;

    public zzcwr(Context context, Executor executor, zzcjj zzcjjVar) {
        this.f26677a = context;
        this.f26678b = executor;
        this.f26679c = zzcjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzcjg mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, final zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos, zzcwn {
        zzcji a = this.f26679c.mo14139a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzcjh(new zzccm(zzctcVar) { // from class: c.d.b.d.g.a.xp

            /* renamed from: a */
            public final zzctc f16062a;

            {
                this.f16062a = zzctcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzccm
            /* renamed from: a */
            public final void mo14809a(boolean z, Context context) {
                zzctc zzctcVar2 = this.f16062a;
                try {
                    ((zzdpa) zzctcVar2.f26497b).m13358a(z);
                    ((zzdpa) zzctcVar2.f26497b).m13356b(context);
                } catch (zzdos e) {
                    throw new zzccl(e.getCause());
                }
            }
        }));
        a.mo15163a().m14939a((zzbvb) new zzbmf(zzctcVar.f26497b), this.f26678b);
        zzctcVar.f26498c.m13836a((zzanh) a.mo14142m());
        return a.mo14144k();
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos {
        try {
            zzdok zzdokVar = zzdogVar.f27633a.f27632a;
            if (zzdokVar.f27652n.f27623a == zzdoc.f27626c) {
                zzctcVar.f26497b.m13353c(this.f26677a, zzdokVar.f27642d, zzdnvVar.f27605u.toString(), zzctcVar.f26498c);
            } else {
                zzctcVar.f26497b.m13355b(this.f26677a, zzdokVar.f27642d, zzdnvVar.f27605u.toString(), zzctcVar.f26498c);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(zzctcVar.f26496a);
            zzbbq.m15853c(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }
}

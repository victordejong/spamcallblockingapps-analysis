package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdok;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbl.class */
public final class zzcbl implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<Context> f25675a;

    /* renamed from: b */
    public final zzeph<zzbbx> f25676b;

    /* renamed from: c */
    public final zzeph<zzdnv> f25677c;

    /* renamed from: d */
    public final zzeph<zzdok> f25678d;

    public zzcbl(zzcbf zzcbfVar, zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzdok> zzephVar4) {
        this.f25675a = zzephVar;
        this.f25676b = zzephVar2;
        this.f25677c = zzephVar3;
        this.f25678d = zzephVar4;
    }

    /* renamed from: a */
    public static zzcbl m14835a(zzcbf zzcbfVar, zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzdok> zzephVar4) {
        return new zzcbl(zzcbfVar, zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        final Context context = this.f25675a.get();
        final zzbbx zzbbxVar = this.f25676b.get();
        final zzdnv zzdnvVar = this.f25677c.get();
        final zzdok zzdokVar = this.f25678d.get();
        zzcab zzcabVar = new zzcab(new zzbvs(context, zzbbxVar, zzdnvVar, zzdokVar) { // from class: c.d.b.d.g.a.zg

            /* renamed from: a */
            public final Context f16449a;

            /* renamed from: b */
            public final zzbbx f16450b;

            /* renamed from: c */
            public final zzdnv f16451c;

            /* renamed from: d */
            public final zzdok f16452d;

            {
                this.f16449a = context;
                this.f16450b = zzbbxVar;
                this.f16451c = zzdnvVar;
                this.f16452d = zzdokVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvs
            /* renamed from: x */
            public final void mo13495x() {
                zzp.m17959m().m15997b(this.f16449a, this.f16450b.f24759a, this.f16451c.f27555B.toString(), this.f16452d.f27644f);
            }
        }, zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

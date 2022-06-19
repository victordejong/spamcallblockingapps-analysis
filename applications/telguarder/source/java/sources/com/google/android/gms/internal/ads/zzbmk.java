package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmk.class */
public final class zzbmk implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzdmw> zzfta;
    private final zzbmc zzfvc;
    private final zzeqo<zzdnp> zzfvf;

    public zzbmk(zzbmc zzbmcVar, zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzdnp> zzeqoVar4) {
        this.zzfvc = zzbmcVar;
        this.zzewk = zzeqoVar;
        this.zzfqo = zzeqoVar2;
        this.zzfta = zzeqoVar3;
        this.zzfvf = zzeqoVar4;
    }

    public static zzbya<zzbtb> zza(zzbmc zzbmcVar, Context context, zzazn zzaznVar, zzdmw zzdmwVar, zzdnp zzdnpVar) {
        return (zzbya) zzeqh.zza(new zzbya(new zzbtb(context, zzaznVar, zzdmwVar, zzdnpVar) { // from class: com.google.android.gms.internal.ads.zzbmb
            private final Context zzcmi;
            private final zzazn zzfuz;
            private final zzdmw zzfva;
            private final zzdnp zzfvb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
                this.zzfuz = zzaznVar;
                this.zzfva = zzdmwVar;
                this.zzfvb = zzdnpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtb
            public final void onAdLoaded() {
                zzr.zzlb().zzb(this.zzcmi, this.zzfuz.zzbrp, this.zzfva.zzhjl.toString(), this.zzfvb.zzhkx);
            }
        }, zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzewk.get(), this.zzfqo.get(), this.zzfta.get(), this.zzfvf.get());
    }
}

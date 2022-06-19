package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqf.class */
public final class zzbqf implements zzbua {
    private final Context zzaad;
    private final zzazn zzboz;
    private final zzf zzedg;
    private final zzclq zzfqm;
    private final zzdnp zzfwy;

    public zzbqf(Context context, zzdnp zzdnpVar, zzazn zzaznVar, zzf zzfVar, zzclq zzclqVar) {
        this.zzaad = context;
        this.zzfwy = zzdnpVar;
        this.zzboz = zzaznVar;
        this.zzedg = zzfVar;
        this.zzfqm = zzclqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatqVar) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcts)).booleanValue()) {
            zzr.zzkz().zza(this.zzaad, this.zzboz, this.zzfwy.zzhkx, this.zzedg.zzyn());
        }
        this.zzfqm.zzarb();
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzena.class */
public final class zzena implements zzeht<zzcyw> {
    private final Context zza;
    private final zzczt zzb;
    private final zzbme zzc;
    private final zzfxb zzd;
    private final zzfie zze;

    public zzena(Context context, zzczt zzcztVar, zzfie zzfieVar, zzfxb zzfxbVar, zzbme zzbmeVar) {
        this.zza = context;
        this.zzb = zzcztVar;
        this.zze = zzfieVar;
        this.zzd = zzfxbVar;
        this.zzc = zzbmeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzcyw> zza(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzcyx zza = this.zzb.zza(new zzdbk(zzfdzVar, zzfdnVar, null), new zzemy(this, new View(this.zza), null, zzemw.zza, zzfdnVar.zzv.get(0)));
        zzemz zzk = zza.zzk();
        zzfds zzfdsVar = zzfdnVar.zzt;
        final zzblz zzblzVar = new zzblz(zzk, zzfdsVar.zzb, zzfdsVar.zza);
        zzfie zzfieVar = this.zze;
        return zzfho.zzd(new zzfhi() { // from class: com.google.android.gms.internal.ads.zzemx
            @Override // com.google.android.gms.internal.ads.zzfhi
            public final void zza() {
                zzena.this.zzc(zzblzVar);
            }
        }, this.zzd, zzfhy.CUSTOM_RENDER_SYN, zzfieVar).zzb(zzfhy.CUSTOM_RENDER_ACK).zzd(zzfwq.zzi(zza.zza())).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzfds zzfdsVar;
        return (this.zzc == null || (zzfdsVar = zzfdnVar.zzt) == null || zzfdsVar.zza == null) ? false : true;
    }

    public final /* synthetic */ void zzc(zzblz zzblzVar) throws Exception {
        this.zzc.zze(zzblzVar);
    }
}

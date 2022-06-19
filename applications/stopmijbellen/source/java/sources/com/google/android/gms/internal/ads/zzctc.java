package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctc.class */
final class zzctc implements zzeaa {
    private final Long zza;
    private final String zzb;
    private final zzcui zzc;
    private final zzctg zzd;
    private final zzctc zze = this;

    public /* synthetic */ zzctc(zzcui zzcuiVar, zzctg zzctgVar, Long l, String str, zzctb zzctbVar) {
        this.zzc = zzcuiVar;
        this.zzd = zzctgVar;
        this.zza = l;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzeaa
    public final zzeak zza() {
        Context context;
        zzead zzc;
        long longValue = this.zza.longValue();
        context = this.zzd.zza;
        zzc = zzeae.zzc(this.zzd.zzb);
        return zzeal.zza(longValue, context, zzc, this.zzc, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzeaa
    public final zzeao zzb() {
        Context context;
        zzead zzc;
        long longValue = this.zza.longValue();
        context = this.zzd.zza;
        zzc = zzeae.zzc(this.zzd.zzb);
        return zzeap.zza(longValue, context, zzc, this.zzc, this.zzb);
    }
}

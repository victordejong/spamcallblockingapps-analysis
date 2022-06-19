package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcto.class */
final class zzcto implements zzfbs {
    private final zzcui zza;
    private Context zzb;
    private String zzc;
    private zzbfi zzd;

    public /* synthetic */ zzcto(zzcui zzcuiVar, zzctn zzctnVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbs
    public final /* synthetic */ zzfbs zza(zzbfi zzbfiVar) {
        Objects.requireNonNull(zzbfiVar);
        this.zzd = zzbfiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbs
    public final /* synthetic */ zzfbs zzb(String str) {
        Objects.requireNonNull(str);
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbs
    public final /* synthetic */ zzfbs zzc(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbs
    public final zzfbt zzd() {
        zzgpz.zzc(this.zzb, Context.class);
        zzgpz.zzc(this.zzc, String.class);
        zzgpz.zzc(this.zzd, zzbfi.class);
        return new zzctq(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}

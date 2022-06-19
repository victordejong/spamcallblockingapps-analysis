package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcte.class */
final class zzcte implements zzeah {
    private final zzcui zza;
    private Context zzb;
    private zzbso zzc;

    public /* synthetic */ zzcte(zzcui zzcuiVar, zzctd zzctdVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeah
    public final /* synthetic */ zzeah zza(zzbso zzbsoVar) {
        Objects.requireNonNull(zzbsoVar);
        this.zzc = zzbsoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeah
    public final /* synthetic */ zzeah zzb(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeah
    public final zzeai zzc() {
        zzgpz.zzc(this.zzb, Context.class);
        zzgpz.zzc(this.zzc, zzbso.class);
        return new zzctg(this.zza, this.zzb, this.zzc, null);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsq.class */
final class zzcsq implements zzezz {
    private final zzcui zza;
    private Context zzb;
    private String zzc;
    private zzbfi zzd;

    public /* synthetic */ zzcsq(zzcui zzcuiVar, zzcsp zzcspVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final /* synthetic */ zzezz zza(zzbfi zzbfiVar) {
        Objects.requireNonNull(zzbfiVar);
        this.zzd = zzbfiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final /* synthetic */ zzezz zzb(String str) {
        Objects.requireNonNull(str);
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final /* synthetic */ zzezz zzc(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final zzfaa zzd() {
        zzgpz.zzc(this.zzb, Context.class);
        zzgpz.zzc(this.zzc, String.class);
        zzgpz.zzc(this.zzd, zzbfi.class);
        return new zzcss(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}

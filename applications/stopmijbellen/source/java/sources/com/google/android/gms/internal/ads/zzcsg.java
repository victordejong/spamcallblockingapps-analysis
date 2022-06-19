package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsg.class */
final class zzcsg implements zzeyl {
    private final zzcui zza;
    private Context zzb;
    private String zzc;

    public /* synthetic */ zzcsg(zzcui zzcuiVar, zzcsf zzcsfVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeyl
    public final /* synthetic */ zzeyl zza(String str) {
        Objects.requireNonNull(str);
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeyl
    public final /* synthetic */ zzeyl zzb(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeyl
    public final zzeym zzc() {
        zzgpz.zzc(this.zzb, Context.class);
        zzgpz.zzc(this.zzc, String.class);
        return new zzcsi(this.zza, this.zzb, this.zzc, null);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcts.class */
final class zzcts implements zzfdg {
    private final zzcui zza;
    private Context zzb;
    private String zzc;

    public /* synthetic */ zzcts(zzcui zzcuiVar, zzctr zzctrVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfdg
    public final /* synthetic */ zzfdg zza(String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfdg
    public final /* synthetic */ zzfdg zzb(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfdg
    public final zzfdh zzc() {
        zzgpz.zzc(this.zzb, Context.class);
        return new zzctu(this.zza, this.zzb, this.zzc, null);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqe.class */
public final class zzcqe implements zzdwq {
    private final zzcqu zza;
    private Context zzb;
    private zzbqm zzc;

    public /* synthetic */ zzcqe(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwq
    public final zzdwr zza() {
        zzgli.zzc(this.zzb, Context.class);
        zzgli.zzc(this.zzc, zzbqm.class);
        return new zzcqf(this.zza, this.zzb, this.zzc, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdwq
    public final /* bridge */ /* synthetic */ zzdwq zzb(zzbqm zzbqmVar) {
        Objects.requireNonNull(zzbqmVar);
        this.zzc = zzbqmVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdwq
    public final /* bridge */ /* synthetic */ zzdwq zzc(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }
}

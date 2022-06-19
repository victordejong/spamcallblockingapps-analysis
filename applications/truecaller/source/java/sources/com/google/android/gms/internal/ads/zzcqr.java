package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nonagon.signalgeneration.zzf;
import com.google.android.gms.ads.nonagon.signalgeneration.zzg;
import com.google.android.gms.ads.nonagon.signalgeneration.zzz;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqr.class */
public final class zzcqr implements zzf {
    private final zzcqu zza;
    private zzdao zzb;
    private zzz zzc;

    public /* synthetic */ zzcqr(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzf
    public final zzg zza() {
        zzgli.zzc(this.zzb, zzdao.class);
        zzgli.zzc(this.zzc, zzz.class);
        return new zzcqs(this.zza, this.zzc, new zzcyl(), new zzdvv(), this.zzb, new zzfbt(), null, null, null);
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzf
    public final /* bridge */ /* synthetic */ zzf zzb(zzz zzzVar) {
        this.zzc = zzzVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzf
    public final /* bridge */ /* synthetic */ zzf zzc(zzdao zzdaoVar) {
        this.zzb = zzdaoVar;
        return this;
    }
}

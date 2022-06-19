package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzto.class */
public final class zzto implements zzdh {
    private final Context zza;
    private final zzdh zzb;

    public zzto(Context context) {
        zzdn zzdnVar = new zzdn();
        this.zza = context.getApplicationContext();
        this.zzb = zzdnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdh
    public final /* bridge */ /* synthetic */ zzdi zza() {
        return new zztp(this.zza, ((zzdn) this.zzb).zza());
    }
}

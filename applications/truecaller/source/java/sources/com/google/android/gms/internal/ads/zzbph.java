package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzcb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbph.class */
public final class zzbph implements zzfrz<String> {
    public final /* synthetic */ zzcml zza;

    public zzbph(zzcml zzcmlVar) {
        this.zza = zzcmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(String str) {
        new zzcb(this.zza.getContext(), this.zza.zzt().zza, str).zzc();
    }
}

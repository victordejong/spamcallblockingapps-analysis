package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewy.class */
public final class zzewy implements zzfrz<Void> {
    public zzewy(zzexa zzexaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zze.zza("Notification of cache hit failed.");
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(Void r3) {
        zze.zza("Notification of cache hit successful.");
    }
}

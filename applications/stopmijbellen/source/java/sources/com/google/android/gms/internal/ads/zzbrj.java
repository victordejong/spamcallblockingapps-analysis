package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzcc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrj.class */
final class zzbrj implements zzfwm<String> {
    public final /* synthetic */ zzcop zza;

    public zzbrj(zzcop zzcopVar) {
        this.zza = zzcopVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(String str) {
        new zzcc(this.zza.getContext(), this.zza.zzp().zza, str).zzb();
    }
}

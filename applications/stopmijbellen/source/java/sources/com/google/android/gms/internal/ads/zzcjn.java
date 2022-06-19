package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjn.class */
public final class zzcjn implements zzfwm<Object> {
    public final /* synthetic */ String zza;

    public zzcjn(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzt.zzo().zzs(th, this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zzb(Object obj) {
    }
}

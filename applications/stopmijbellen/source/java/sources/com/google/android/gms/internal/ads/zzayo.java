package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayo.class */
public final class zzayo extends zzbhq {
    private final AppEventListener zza;

    public zzayo(AppEventListener appEventListener) {
        this.zza = appEventListener;
    }

    public final AppEventListener zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhr
    public final void zzc(String str, String str2) {
        this.zza.onAppEvent(str, str2);
    }
}

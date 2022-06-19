package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawr.class */
public final class zzawr extends zzbft {
    private final AppEventListener zza;

    public zzawr(AppEventListener appEventListener) {
        this.zza = appEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zzb(String str, String str2) {
        this.zza.onAppEvent(str, str2);
    }

    public final AppEventListener zzc() {
        return this.zza;
    }
}

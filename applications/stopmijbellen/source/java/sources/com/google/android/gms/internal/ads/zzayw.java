package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayw.class */
public final class zzayw implements ValueCallback<String> {
    public final /* synthetic */ zzayx zza;

    public zzayw(zzayx zzayxVar) {
        this.zza = zzayxVar;
    }

    /* renamed from: zza */
    public final void onReceiveValue(String str) {
        zzayx zzayxVar = this.zza;
        zzayxVar.zze.zzd(zzayxVar.zzb, zzayxVar.zzc, str, zzayxVar.zzd);
    }
}

package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbe.class */
public final class zzcbe implements zzaif<Object> {
    private WeakReference<zzcbc> zzgcw;

    /* JADX INFO: Access modifiers changed from: private */
    public zzcbe(zzcbc zzcbcVar) {
        this.zzgcw = new WeakReference<>(zzcbcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        zzbrl zzbrlVar;
        zzcbc zzcbcVar = this.zzgcw.get();
        if (zzcbcVar != null && "_ac".equals(map.get("eventName"))) {
            zzbrlVar = zzcbcVar.zzgcj;
            zzbrlVar.onAdClicked();
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhq.class */
public final class zzbhq extends zzbgp {
    private zzbhq() {
    }

    public /* synthetic */ zzbhq(zzbhp zzbhpVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zze(zzbcz zzbczVar) {
        OnAdInspectorClosedListener onAdInspectorClosedListener;
        onAdInspectorClosedListener = zzbhs.zze().zzg;
        if (onAdInspectorClosedListener != null) {
            onAdInspectorClosedListener.onAdInspectorClosed(zzbczVar == null ? null : new AdInspectorError(zzbczVar.zza, zzbczVar.zzb, zzbczVar.zzc));
        }
    }
}

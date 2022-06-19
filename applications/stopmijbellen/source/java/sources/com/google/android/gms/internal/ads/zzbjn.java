package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjn.class */
public final class zzbjn extends zzbim {
    private zzbjn() {
    }

    public /* synthetic */ zzbjn(zzbjm zzbjmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbin
    public final void zze(@Nullable zzbew zzbewVar) {
        OnAdInspectorClosedListener onAdInspectorClosedListener;
        onAdInspectorClosedListener = zzbjq.zzf().zzg;
        if (onAdInspectorClosedListener != null) {
            onAdInspectorClosedListener.onAdInspectorClosed(zzbewVar == null ? null : new AdInspectorError(zzbewVar.zza, zzbewVar.zzb, zzbewVar.zzc));
        }
    }
}

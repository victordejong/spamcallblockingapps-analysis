package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqy.class */
final class zzaqy {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public static /* bridge */ /* synthetic */ void zza(zzaqy zzaqyVar, int i, int i2) {
        zzaqyVar.zzb.set(0, 0);
        zzaqyVar.zza.setPattern(zzaqyVar.zzb);
    }
}

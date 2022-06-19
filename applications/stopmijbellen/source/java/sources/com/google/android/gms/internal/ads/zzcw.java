package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcw.class */
final class zzcw {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public static /* bridge */ /* synthetic */ void zza(zzcw zzcwVar, int i, int i2) {
        zzcwVar.zzb.set(i, i2);
        zzcwVar.zza.setPattern(zzcwVar.zzb);
    }
}

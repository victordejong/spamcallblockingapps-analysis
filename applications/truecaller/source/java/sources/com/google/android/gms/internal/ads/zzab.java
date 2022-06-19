package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzab.class */
public final class zzab {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public static /* synthetic */ void zza(zzab zzabVar, int i, int i2) {
        zzabVar.zzb.set(i, i2);
        zzabVar.zza.setPattern(zzabVar.zzb);
    }
}

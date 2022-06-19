package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarp.class */
public final class zzarp implements zzarn {
    private final int zza;
    private MediaCodecInfo[] zzb;

    public zzarp(boolean z) {
        this.zza = z ? 1 : 0;
    }

    private final void zze() {
        if (this.zzb == null) {
            this.zzb = new MediaCodecList(this.zza).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarn
    public final int zza() {
        zze();
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.ads.zzarn
    public final MediaCodecInfo zzb(int i) {
        zze();
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.ads.zzarn
    public final boolean zzc() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzarn
    public final boolean zzd(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }
}

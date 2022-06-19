package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatn.class */
final class zzatn implements zzatk {
    private final int zza;
    private MediaCodecInfo[] zzb;

    public zzatn(boolean z) {
        this.zza = z ? 1 : 0;
    }

    private final void zze() {
        if (this.zzb == null) {
            this.zzb = new MediaCodecList(this.zza).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final int zza() {
        zze();
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final MediaCodecInfo zzb(int i) {
        zze();
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final boolean zzc(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final boolean zzd() {
        return true;
    }
}

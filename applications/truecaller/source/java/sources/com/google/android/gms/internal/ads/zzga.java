package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzga.class */
public final class zzga implements zzfz {
    private zzga() {
    }

    public /* synthetic */ zzga(zzgc zzgcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final MediaCodecInfo zzb(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final boolean zzc() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final boolean zzd(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final boolean zze(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }
}

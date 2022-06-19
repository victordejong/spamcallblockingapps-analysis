package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatm.class */
final class zzatm implements zzatk {
    private zzatm() {
    }

    public /* synthetic */ zzatm(zzatl zzatlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final MediaCodecInfo zzb(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final boolean zzc(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final boolean zzd() {
        return false;
    }
}

package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i83.class */
final class i83 implements g73 {
    public /* synthetic */ i83(ka3 ka3Var) {
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: a */
    public final MediaCodecInfo mo14155a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: b */
    public final boolean mo14154b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: c */
    public final boolean mo14153c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: d */
    public final boolean mo14152d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.g73
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }
}

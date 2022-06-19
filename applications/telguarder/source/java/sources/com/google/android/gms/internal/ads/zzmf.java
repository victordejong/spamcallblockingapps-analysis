package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmf.class */
final class zzmf implements zzmc {
    /* JADX INFO: Access modifiers changed from: private */
    public zzmf() {
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final int getCodecCount() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final MediaCodecInfo getCodecInfoAt(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final boolean zza(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final boolean zzhl() {
        return false;
    }
}

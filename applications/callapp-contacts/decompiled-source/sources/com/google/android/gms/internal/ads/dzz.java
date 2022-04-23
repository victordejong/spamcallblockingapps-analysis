package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzz.class */
final class dzz implements dzx {
    private dzz() {
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final int a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final MediaCodecInfo a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final boolean b() {
        return false;
    }
}

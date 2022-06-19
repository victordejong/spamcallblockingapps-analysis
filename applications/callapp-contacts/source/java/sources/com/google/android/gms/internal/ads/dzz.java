package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzz.class */
final class dzz implements dzx {
    /* JADX INFO: Access modifiers changed from: private */
    public dzz() {
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final int mo15379a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final MediaCodecInfo mo15378a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final boolean mo15377a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final boolean mo15376b() {
        return false;
    }
}

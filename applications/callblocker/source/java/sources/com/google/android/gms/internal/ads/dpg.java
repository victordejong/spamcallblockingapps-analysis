package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpg.class */
final class dpg implements dpe {
    /* JADX INFO: Access modifiers changed from: private */
    public dpg() {
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: a */
    public final int mo8937a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: a */
    public final MediaCodecInfo mo8936a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: a */
    public final boolean mo8935a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: b */
    public final boolean mo8934b() {
        return false;
    }
}

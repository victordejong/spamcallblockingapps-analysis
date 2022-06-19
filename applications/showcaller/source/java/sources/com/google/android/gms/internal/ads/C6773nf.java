package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* renamed from: com.google.android.gms.internal.ads.nf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nf.class */
final class C6773nf implements AbstractC6736mf {
    public /* synthetic */ C6773nf(C6847pf c6847pf) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    /* renamed from: a */
    public final MediaCodecInfo mo12688a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    /* renamed from: b */
    public final boolean mo12687b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    /* renamed from: c */
    public final boolean mo12686c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }
}

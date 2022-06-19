package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j93.class */
final class j93 implements g73 {

    /* renamed from: a */
    private final int f24816a;

    /* renamed from: b */
    private MediaCodecInfo[] f24817b;

    public j93(boolean z, boolean z2) {
        this.f24816a = !z ? z2 ? 1 : 0 : 1;
    }

    @EnsuresNonNull({"mediaCodecInfos"})
    /* renamed from: e */
    private final void m14151e() {
        if (this.f24817b == null) {
            this.f24817b = new MediaCodecList(this.f24816a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: a */
    public final MediaCodecInfo mo14155a(int i) {
        m14151e();
        return this.f24817b[i];
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: b */
    public final boolean mo14154b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: c */
    public final boolean mo14153c() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.g73
    /* renamed from: d */
    public final boolean mo14152d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    @Override // com.google.android.gms.internal.ads.g73
    public final int zza() {
        m14151e();
        return this.f24817b.length;
    }
}

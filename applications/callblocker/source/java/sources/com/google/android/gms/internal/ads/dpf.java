package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpf.class */
final class dpf implements dpe {

    /* renamed from: a */
    private final int f15284a;

    /* renamed from: b */
    private MediaCodecInfo[] f15285b;

    public dpf(boolean z) {
        this.f15284a = z ? 1 : 0;
    }

    /* renamed from: c */
    private final void m8938c() {
        if (this.f15285b == null) {
            this.f15285b = new MediaCodecList(this.f15284a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: a */
    public final int mo8937a() {
        m8938c();
        return this.f15285b.length;
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: a */
    public final MediaCodecInfo mo8936a(int i) {
        m8938c();
        return this.f15285b[i];
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: a */
    public final boolean mo8935a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.dpe
    /* renamed from: b */
    public final boolean mo8934b() {
        return true;
    }
}

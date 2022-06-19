package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzy.class */
final class dzy implements dzx {

    /* renamed from: a */
    private final int f48458a;

    /* renamed from: b */
    private MediaCodecInfo[] f48459b;

    public dzy(boolean z) {
        this.f48458a = z ? 1 : 0;
    }

    /* renamed from: c */
    private final void m15380c() {
        if (this.f48459b == null) {
            this.f48459b = new MediaCodecList(this.f48458a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final int mo15379a() {
        m15380c();
        return this.f48459b.length;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final MediaCodecInfo mo15378a(int i) {
        m15380c();
        return this.f48459b[i];
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final boolean mo15377a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final boolean mo15376b() {
        return true;
    }
}

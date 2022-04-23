package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzy.class */
final class dzy implements dzx {

    /* renamed from: a  reason: collision with root package name */
    private final int f27512a;

    /* renamed from: b  reason: collision with root package name */
    private MediaCodecInfo[] f27513b;

    public dzy(boolean z) {
        this.f27512a = z ? 1 : 0;
    }

    private final void c() {
        if (this.f27513b == null) {
            this.f27513b = new MediaCodecList(this.f27512a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final int a() {
        c();
        return this.f27513b.length;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final MediaCodecInfo a(int i) {
        c();
        return this.f27513b[i];
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.dzx
    public final boolean b() {
        return true;
    }
}

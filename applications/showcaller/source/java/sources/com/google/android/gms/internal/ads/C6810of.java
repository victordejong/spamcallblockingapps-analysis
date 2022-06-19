package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
@TargetApi(21)
/* renamed from: com.google.android.gms.internal.ads.of */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/of.class */
final class C6810of implements AbstractC6736mf {

    /* renamed from: a */
    private final int f27514a;

    /* renamed from: b */
    private MediaCodecInfo[] f27515b;

    public C6810of(boolean z) {
        this.f27514a = z ? 1 : 0;
    }

    /* renamed from: d */
    private final void m12685d() {
        if (this.f27515b == null) {
            this.f27515b = new MediaCodecList(this.f27514a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    /* renamed from: a */
    public final MediaCodecInfo mo12688a(int i) {
        m12685d();
        return this.f27515b[i];
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    /* renamed from: b */
    public final boolean mo12687b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    /* renamed from: c */
    public final boolean mo12686c() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6736mf
    public final int zza() {
        m12685d();
        return this.f27515b.length;
    }
}

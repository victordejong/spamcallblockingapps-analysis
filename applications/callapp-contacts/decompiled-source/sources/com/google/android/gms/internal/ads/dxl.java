package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxl.class */
final class dxl {

    /* renamed from: a  reason: collision with root package name */
    final MediaCodec.CryptoInfo f27373a;

    /* renamed from: b  reason: collision with root package name */
    final MediaCodec.CryptoInfo.Pattern f27374b;

    private dxl(MediaCodec.CryptoInfo cryptoInfo) {
        this.f27373a = cryptoInfo;
        this.f27374b = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }
}

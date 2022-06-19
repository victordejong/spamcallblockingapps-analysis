package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.z0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z0.class */
public final class C7202z0 {

    /* renamed from: a */
    public byte[] f32737a;

    /* renamed from: b */
    public byte[] f32738b;

    /* renamed from: c */
    public int[] f32739c;

    /* renamed from: d */
    public int[] f32740d;

    /* renamed from: e */
    private final MediaCodec.CryptoInfo f32741e;

    /* renamed from: f */
    private final C6275a0 f32742f;

    public C7202z0() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f32741e = cryptoInfo;
        this.f32742f = C7101wa.f31475a >= 24 ? new C6275a0(cryptoInfo, null) : null;
    }

    /* renamed from: a */
    public final void m8639a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.f32739c = iArr;
        this.f32740d = iArr2;
        this.f32738b = bArr;
        this.f32737a = bArr2;
        MediaCodec.CryptoInfo cryptoInfo = this.f32741e;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (C7101wa.f31475a >= 24) {
            C6275a0 c6275a0 = this.f32742f;
            Objects.requireNonNull(c6275a0);
            C6275a0.m16721a(c6275a0, i3, i4);
        }
    }

    /* renamed from: b */
    public final MediaCodec.CryptoInfo m8638b() {
        return this.f32741e;
    }

    /* renamed from: c */
    public final void m8637c(int i) {
        if (i == 0) {
            return;
        }
        if (this.f32739c == null) {
            int[] iArr = new int[1];
            this.f32739c = iArr;
            this.f32741e.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f32739c;
        iArr2[0] = iArr2[0] + i;
    }
}

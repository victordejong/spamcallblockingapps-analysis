package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qm2.class */
public final class qm2 {

    /* renamed from: a */
    public byte[] f8221a;

    /* renamed from: b */
    public byte[] f8222b;

    /* renamed from: c */
    public int f8223c;

    /* renamed from: d */
    public int[] f8224d;

    /* renamed from: e */
    public int[] f8225e;

    /* renamed from: f */
    public int f8226f;

    /* renamed from: g */
    private final MediaCodec.CryptoInfo f8227g;

    /* renamed from: h */
    private final pm2 f8228h;

    public qm2() {
        int i = zr2.f9434a;
        pm2 pm2Var = null;
        MediaCodec.CryptoInfo cryptoInfo = i >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f8227g = cryptoInfo;
        this.f8228h = i >= 24 ? new pm2(cryptoInfo, null) : pm2Var;
    }

    /* renamed from: a */
    public final void m6089a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.f8226f = i;
        this.f8224d = iArr;
        this.f8225e = iArr2;
        this.f8222b = bArr;
        this.f8221a = bArr2;
        this.f8223c = 1;
        int i3 = zr2.f9434a;
        if (i3 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.f8227g;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr;
            cryptoInfo.iv = bArr2;
            cryptoInfo.mode = 1;
            if (i3 >= 24) {
                pm2.m6188a(this.f8228h, 0, 0);
            }
        }
    }

    @TargetApi(16)
    /* renamed from: b */
    public final MediaCodec.CryptoInfo m6088b() {
        return this.f8227g;
    }
}

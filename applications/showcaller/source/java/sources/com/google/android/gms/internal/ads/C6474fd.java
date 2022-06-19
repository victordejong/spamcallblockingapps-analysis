package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
/* renamed from: com.google.android.gms.internal.ads.fd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fd.class */
public final class C6474fd {

    /* renamed from: a */
    public byte[] f22787a;

    /* renamed from: b */
    public byte[] f22788b;

    /* renamed from: c */
    public int f22789c;

    /* renamed from: d */
    public int[] f22790d;

    /* renamed from: e */
    public int[] f22791e;

    /* renamed from: f */
    public int f22792f;

    /* renamed from: g */
    private final MediaCodec.CryptoInfo f22793g;

    /* renamed from: h */
    private final C6437ed f22794h;

    public C6474fd() {
        int i = C6961si.f29514a;
        C6437ed c6437ed = null;
        MediaCodec.CryptoInfo cryptoInfo = i >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f22793g = cryptoInfo;
        this.f22794h = i >= 24 ? new C6437ed(cryptoInfo, null) : c6437ed;
    }

    /* renamed from: a */
    public final void m15280a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.f22792f = i;
        this.f22790d = iArr;
        this.f22791e = iArr2;
        this.f22788b = bArr;
        this.f22787a = bArr2;
        this.f22789c = 1;
        int i3 = C6961si.f29514a;
        if (i3 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.f22793g;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr;
            cryptoInfo.iv = bArr2;
            cryptoInfo.mode = 1;
            if (i3 < 24) {
                return;
            }
            C6437ed.m15523a(this.f22794h, 0, 0);
        }
    }

    @TargetApi(16)
    /* renamed from: b */
    public final MediaCodec.CryptoInfo m15279b() {
        return this.f22793g;
    }
}

package com.google.android.exoplayer2.p242b1;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.b1.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/b1/b.class */
public final class C4853b {

    /* renamed from: a */
    public byte[] f14753a;

    /* renamed from: b */
    public byte[] f14754b;

    /* renamed from: c */
    public int f14755c;

    /* renamed from: d */
    public int[] f14756d;

    /* renamed from: e */
    public int[] f14757e;

    /* renamed from: f */
    public int f14758f;

    /* renamed from: g */
    public int f14759g;

    /* renamed from: h */
    public int f14760h;

    /* renamed from: i */
    private final MediaCodec.CryptoInfo f14761i;

    /* renamed from: j */
    private final C4855b f14762j;

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(24)
    /* renamed from: com.google.android.exoplayer2.b1.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/b1/b$b.class */
    public static final class C4855b {

        /* renamed from: a */
        private final MediaCodec.CryptoInfo f14763a;

        /* renamed from: b */
        private final MediaCodec.CryptoInfo.Pattern f14764b;

        private C4855b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f14763a = cryptoInfo;
            this.f14764b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        /* renamed from: b */
        public void m21431b(int i, int i2) {
            this.f14764b.set(i, i2);
            this.f14763a.setPattern(this.f14764b);
        }
    }

    public C4853b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f14761i = cryptoInfo;
        this.f14762j = C5515h0.f17876a >= 24 ? new C4855b(cryptoInfo) : null;
    }

    /* renamed from: a */
    public MediaCodec.CryptoInfo m21434a() {
        return this.f14761i;
    }

    /* renamed from: b */
    public void m21433b(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.f14758f = i;
        this.f14756d = iArr;
        this.f14757e = iArr2;
        this.f14754b = bArr;
        this.f14753a = bArr2;
        this.f14755c = i2;
        this.f14759g = i3;
        this.f14760h = i4;
        MediaCodec.CryptoInfo cryptoInfo = this.f14761i;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (C5515h0.f17876a >= 24) {
            this.f14762j.m21431b(i3, i4);
        }
    }
}

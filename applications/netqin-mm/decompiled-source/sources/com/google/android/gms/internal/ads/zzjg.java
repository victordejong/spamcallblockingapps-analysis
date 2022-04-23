package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import p131c.p161d.p170b.p224d.p252g.p253a.nc0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjg.class */
public final class zzjg {

    /* renamed from: a */
    public byte[] f28399a;

    /* renamed from: b */
    public byte[] f28400b;

    /* renamed from: c */
    public int f28401c;

    /* renamed from: d */
    public int[] f28402d;

    /* renamed from: e */
    public int[] f28403e;

    /* renamed from: f */
    public int f28404f;

    /* renamed from: g */
    public final MediaCodec.CryptoInfo f28405g;

    /* renamed from: h */
    public final nc0 f28406h;

    public zzjg() {
        nc0 nc0Var = null;
        MediaCodec.CryptoInfo cryptoInfo = zzpq.f28786a >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f28405g = cryptoInfo;
        this.f28406h = zzpq.f28786a >= 24 ? new nc0(cryptoInfo) : nc0Var;
    }

    /* renamed from: a */
    public final MediaCodec.CryptoInfo m11917a() {
        return this.f28405g;
    }

    /* renamed from: a */
    public final void m11916a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.f28404f = i;
        this.f28402d = iArr;
        this.f28403e = iArr2;
        this.f28400b = bArr;
        this.f28399a = bArr2;
        this.f28401c = i2;
        int i3 = zzpq.f28786a;
        if (i3 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.f28405g;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr;
            cryptoInfo.iv = bArr2;
            cryptoInfo.mode = i2;
            if (i3 >= 24) {
                this.f28406h.m26619a(0, 0);
            }
        }
    }
}

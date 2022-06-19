package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dms.class */
public final class dms {

    /* renamed from: a */
    public byte[] f14851a;

    /* renamed from: b */
    public int[] f14852b;

    /* renamed from: c */
    public int[] f14853c;

    /* renamed from: d */
    private byte[] f14854d;

    /* renamed from: e */
    private int f14855e;

    /* renamed from: f */
    private int f14856f;

    /* renamed from: g */
    private int f14857g;

    /* renamed from: h */
    private int f14858h;

    /* renamed from: i */
    private final MediaCodec.CryptoInfo f14859i;

    /* renamed from: j */
    private final dmu f14860j;

    public dms() {
        this.f14859i = dsn.f15576a >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f14860j = dsn.f15576a >= 24 ? new dmu(this.f14859i) : null;
    }

    @TargetApi(16)
    /* renamed from: a */
    public final MediaCodec.CryptoInfo m9090a() {
        return this.f14859i;
    }

    /* renamed from: a */
    public final void m9089a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.f14856f = i;
        this.f14852b = iArr;
        this.f14853c = iArr2;
        this.f14854d = bArr;
        this.f14851a = bArr2;
        this.f14855e = i2;
        this.f14857g = 0;
        this.f14858h = 0;
        if (dsn.f15576a >= 16) {
            this.f14859i.numSubSamples = this.f14856f;
            this.f14859i.numBytesOfClearData = this.f14852b;
            this.f14859i.numBytesOfEncryptedData = this.f14853c;
            this.f14859i.key = this.f14854d;
            this.f14859i.iv = this.f14851a;
            this.f14859i.mode = this.f14855e;
            if (dsn.f15576a < 24) {
                return;
            }
            this.f14860j.m9087a(0, 0);
        }
    }
}

package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxj.class */
public final class dxj {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f27365a;

    /* renamed from: b  reason: collision with root package name */
    byte[] f27366b;

    /* renamed from: c  reason: collision with root package name */
    int f27367c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f27368d;
    public int[] e;
    int f;
    int g;
    int h;
    final MediaCodec.CryptoInfo i;
    final dxl j;

    public dxj() {
        dxl dxlVar = null;
        MediaCodec.CryptoInfo cryptoInfo = ede.f27664a >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.i = cryptoInfo;
        this.j = ede.f27664a >= 24 ? new dxl(cryptoInfo) : dxlVar;
    }
}

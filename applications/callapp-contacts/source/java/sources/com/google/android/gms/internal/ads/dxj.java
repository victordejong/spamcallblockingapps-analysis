package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxj.class */
public final class dxj {

    /* renamed from: a */
    public byte[] f47954a;

    /* renamed from: b */
    byte[] f47955b;

    /* renamed from: c */
    int f47956c;

    /* renamed from: d */
    public int[] f47957d;

    /* renamed from: e */
    public int[] f47958e;

    /* renamed from: f */
    int f47959f;

    /* renamed from: g */
    int f47960g;

    /* renamed from: h */
    int f47961h;

    /* renamed from: i */
    final MediaCodec.CryptoInfo f47962i;

    /* renamed from: j */
    final dxl f47963j;

    public dxj() {
        dxl dxlVar = null;
        MediaCodec.CryptoInfo cryptoInfo = ede.f48739a >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f47962i = cryptoInfo;
        this.f47963j = ede.f48739a >= 24 ? new dxl(cryptoInfo) : dxlVar;
    }
}

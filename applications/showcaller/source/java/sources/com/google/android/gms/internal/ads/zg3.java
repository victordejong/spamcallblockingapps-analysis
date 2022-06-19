package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zg3.class */
final class zg3 extends ah3 {
    public zg3(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: a */
    public final void mo8398a(Object obj, long j, byte b) {
        if (bh3.f20463j) {
            bh3.m16356g(obj, j, b);
        } else {
            bh3.m16355h(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: b */
    public final boolean mo8397b(Object obj, long j) {
        return bh3.f20463j ? bh3.m16365F(obj, j) : bh3.m16364G(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: c */
    public final void mo8396c(Object obj, long j, boolean z) {
        if (bh3.f20463j) {
            bh3.m16356g(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            bh3.m16355h(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: d */
    public final float mo8395d(Object obj, long j) {
        return Float.intBitsToFloat(m16602m(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: e */
    public final void mo8394e(Object obj, long j, float f) {
        m16601n(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: f */
    public final double mo8393f(Object obj, long j) {
        return Double.longBitsToDouble(m16600o(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: g */
    public final void mo8392g(Object obj, long j, double d) {
        m16599p(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: h */
    public final byte mo8391h(long j) {
        return Memory.peekByte(j);
    }

    @Override // com.google.android.gms.internal.ads.ah3
    /* renamed from: i */
    public final void mo8390i(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray(j, bArr, (int) j2, (int) j3);
    }
}

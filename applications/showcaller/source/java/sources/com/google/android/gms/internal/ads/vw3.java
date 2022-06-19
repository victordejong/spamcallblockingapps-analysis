package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vw3.class */
final class vw3 {

    /* renamed from: a */
    private final int f31390a;

    /* renamed from: b */
    private boolean f31391b;

    /* renamed from: c */
    private boolean f31392c;

    /* renamed from: d */
    public byte[] f31393d;

    /* renamed from: e */
    public int f31394e;

    public vw3(int i, int i2) {
        this.f31390a = i;
        byte[] bArr = new byte[131];
        this.f31393d = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public final void m9848a() {
        this.f31391b = false;
        this.f31392c = false;
    }

    /* renamed from: b */
    public final boolean m9847b() {
        return this.f31392c;
    }

    /* renamed from: c */
    public final void m9846c(int i) {
        boolean z = true;
        C7173y8.m8895d(!this.f31391b);
        if (i != this.f31390a) {
            z = false;
        }
        this.f31391b = z;
        if (z) {
            this.f31394e = 3;
            this.f31392c = false;
        }
    }

    /* renamed from: d */
    public final void m9845d(byte[] bArr, int i, int i2) {
        if (!this.f31391b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f31393d;
        int length = bArr2.length;
        int i4 = this.f31394e + i3;
        if (length < i4) {
            this.f31393d = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.f31393d, this.f31394e, i3);
        this.f31394e += i3;
    }

    /* renamed from: e */
    public final boolean m9844e(int i) {
        if (!this.f31391b) {
            return false;
        }
        this.f31394e -= i;
        this.f31391b = false;
        this.f31392c = true;
        return true;
    }
}

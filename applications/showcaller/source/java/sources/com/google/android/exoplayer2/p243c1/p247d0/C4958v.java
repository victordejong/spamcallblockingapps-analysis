package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.util.C5508e;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.d0.v */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/v.class */
final class C4958v {

    /* renamed from: a */
    private final int f15388a;

    /* renamed from: b */
    private boolean f15389b;

    /* renamed from: c */
    private boolean f15390c;

    /* renamed from: d */
    public byte[] f15391d;

    /* renamed from: e */
    public int f15392e;

    public C4958v(int i, int i2) {
        this.f15388a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f15391d = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public void m21066a(byte[] bArr, int i, int i2) {
        if (!this.f15389b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f15391d;
        int length = bArr2.length;
        int i4 = this.f15392e;
        if (length < i4 + i3) {
            this.f15391d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
        }
        System.arraycopy(bArr, i, this.f15391d, this.f15392e, i3);
        this.f15392e += i3;
    }

    /* renamed from: b */
    public boolean m21065b(int i) {
        if (!this.f15389b) {
            return false;
        }
        this.f15392e -= i;
        this.f15389b = false;
        this.f15390c = true;
        return true;
    }

    /* renamed from: c */
    public boolean m21064c() {
        return this.f15390c;
    }

    /* renamed from: d */
    public void m21063d() {
        this.f15389b = false;
        this.f15390c = false;
    }

    /* renamed from: e */
    public void m21062e(int i) {
        boolean z = true;
        C5508e.m18910f(!this.f15389b);
        if (i != this.f15388a) {
            z = false;
        }
        this.f15389b = z;
        if (z) {
            this.f15392e = 3;
            this.f15390c = false;
        }
    }
}

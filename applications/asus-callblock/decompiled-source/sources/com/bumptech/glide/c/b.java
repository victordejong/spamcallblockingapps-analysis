package com.bumptech.glide.c;

import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    int f3385a;

    /* renamed from: b  reason: collision with root package name */
    int f3386b;
    int c;
    int d;
    int e;
    int f;
    int h;
    int o;
    int p;
    int q;
    int u;
    private byte[] w;
    int g = 12;
    int i = 4096;
    int[] j = new int[5003];
    int[] k = new int[5003];
    int l = 5003;
    int m = 0;
    boolean n = false;
    int r = 0;
    int s = 0;
    int[] t = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    byte[] v = new byte[256];

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i, int i2, byte[] bArr, int i3) {
        this.f3385a = i;
        this.f3386b = i2;
        this.w = bArr;
        this.c = Math.max(2, i3);
    }

    private int a() {
        int i;
        if (this.d == 0) {
            i = -1;
        } else {
            this.d--;
            byte[] bArr = this.w;
            int i2 = this.e;
            this.e = i2 + 1;
            i = bArr[i2] & 255;
        }
        return i;
    }

    private void a(byte b2, OutputStream outputStream) {
        byte[] bArr = this.v;
        int i = this.u;
        this.u = i + 1;
        bArr[i] = b2;
        if (this.u >= 254) {
            a(outputStream);
        }
    }

    private void a(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2] = -1;
        }
    }

    private void a(OutputStream outputStream) {
        if (this.u > 0) {
            outputStream.write(this.u);
            outputStream.write(this.v, 0, this.u);
            this.u = 0;
        }
    }

    private void b(int i, OutputStream outputStream) {
        this.r &= this.t[this.s];
        if (this.s > 0) {
            this.r |= i << this.s;
        } else {
            this.r = i;
        }
        this.s += this.f;
        while (this.s >= 8) {
            a((byte) (this.r & 255), outputStream);
            this.r >>= 8;
            this.s -= 8;
        }
        if (this.m > this.h || this.n) {
            if (this.n) {
                int i2 = this.o;
                this.f = i2;
                this.h = (1 << i2) - 1;
                this.n = false;
            } else {
                this.f++;
                if (this.f == this.g) {
                    this.h = this.i;
                } else {
                    this.h = (1 << this.f) - 1;
                }
            }
        }
        if (i == this.q) {
            while (this.s > 0) {
                a((byte) (this.r & 255), outputStream);
                this.r >>= 8;
                this.s -= 8;
            }
            a(outputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, OutputStream outputStream) {
        int i2;
        int i3 = 0;
        this.o = i;
        this.n = false;
        this.f = this.o;
        this.h = (1 << this.f) - 1;
        this.p = 1 << (i - 1);
        this.q = this.p + 1;
        this.m = this.p + 2;
        this.u = 0;
        int a2 = a();
        for (int i4 = this.l; i4 < 65536; i4 *= 2) {
            i3++;
        }
        int i5 = this.l;
        a(i5);
        b(this.p, outputStream);
        while (true) {
            int a3 = a();
            if (a3 != -1) {
                int i6 = (a3 << this.g) + a2;
                int i7 = (a3 << (8 - i3)) ^ a2;
                if (this.j[i7] == i6) {
                    a2 = this.k[i7];
                } else {
                    int i8 = i7;
                    if (this.j[i7] >= 0) {
                        int i9 = i5 - i7;
                        int i10 = i7;
                        if (i7 == 0) {
                            i9 = 1;
                            i10 = i7;
                        }
                        do {
                            int i11 = i10 - i9;
                            i2 = i11;
                            if (i11 < 0) {
                                i2 = i11 + i5;
                            }
                            if (this.j[i2] == i6) {
                                a2 = this.k[i2];
                                break;
                            }
                            i10 = i2;
                        } while (this.j[i2] >= 0);
                        i8 = i2;
                    }
                    b(a2, outputStream);
                    if (this.m < this.i) {
                        int[] iArr = this.k;
                        int i12 = this.m;
                        this.m = i12 + 1;
                        iArr[i8] = i12;
                        this.j[i8] = i6;
                        a2 = a3;
                    } else {
                        a(this.l);
                        this.m = this.p + 2;
                        this.n = true;
                        b(this.p, outputStream);
                        a2 = a3;
                    }
                }
            } else {
                b(a2, outputStream);
                b(this.q, outputStream);
                return;
            }
        }
    }
}

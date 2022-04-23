package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmk.class */
public final class dmk extends dmi {
    private final byte[] e;
    private final boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;

    private dmk(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.l = Integer.MAX_VALUE;
        this.e = bArr;
        this.g = i2 + i;
        this.i = i;
        this.j = i;
        this.f = z;
    }

    private final byte A() throws IOException {
        int i = this.i;
        if (i != this.g) {
            byte[] bArr = this.e;
            this.i = i + 1;
            return bArr[i];
        }
        throw zzenn.a();
    }

    private final void f(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.g;
            int i3 = this.i;
            if (i <= i2 - i3) {
                this.i = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzenn.b();
        }
        throw zzenn.a();
    }

    private final int v() throws IOException {
        int i;
        int i2 = this.i;
        int i3 = this.g;
        if (i3 != i2) {
            byte[] bArr = this.e;
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.i = i4;
                return b2;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b2 ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            byte b3 = bArr[i5];
                            int i11 = (i9 ^ (b3 << 28)) ^ 266354560;
                            i = i11;
                            i5 = i10;
                            if (b3 < 0) {
                                int i12 = i10 + 1;
                                i = i11;
                                i5 = i12;
                                if (bArr[i10] < 0) {
                                    int i13 = i12 + 1;
                                    i = i11;
                                    i5 = i13;
                                    if (bArr[i12] < 0) {
                                        int i14 = i13 + 1;
                                        i = i11;
                                        i5 = i14;
                                        if (bArr[i13] < 0) {
                                            int i15 = i14 + 1;
                                            i = i11;
                                            i5 = i15;
                                            if (bArr[i14] < 0) {
                                                i5 = i15 + 1;
                                                if (bArr[i15] >= 0) {
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.i = i5;
                return i;
            }
        }
        return (int) s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0156, code lost:
        if (r0[r0] >= 0) goto L_0x015f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long w() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmk.w():long");
    }

    private final int x() throws IOException {
        int i = this.i;
        if (this.g - i >= 4) {
            byte[] bArr = this.e;
            this.i = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzenn.a();
    }

    private final long y() throws IOException {
        int i = this.i;
        if (this.g - i >= 8) {
            byte[] bArr = this.e;
            this.i = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzenn.a();
    }

    private final void z() {
        int i = this.g + this.h;
        this.g = i;
        int i2 = i - this.j;
        int i3 = this.l;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.h = i4;
            this.g = i - i4;
            return;
        }
        this.h = 0;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int a() throws IOException {
        if (t()) {
            this.k = 0;
            return 0;
        }
        int v = v();
        this.k = v;
        if ((v >>> 3) != 0) {
            return v;
        }
        throw zzenn.d();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final void a(int i) throws zzenn {
        if (this.k != i) {
            throw zzenn.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final double b() throws IOException {
        return Double.longBitsToDouble(y());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final boolean b(int i) throws IOException {
        int a2;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                f(8);
                return true;
            } else if (i2 == 2) {
                f(v());
                return true;
            } else if (i2 == 3) {
                do {
                    a2 = a();
                    if (a2 == 0) {
                        break;
                    }
                } while (b(a2));
                a(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    f(4);
                    return true;
                }
                throw zzenn.f();
            }
        } else if (this.g - this.i >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.e;
                int i4 = this.i;
                this.i = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzenn.c();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (A() >= 0) {
                    return true;
                }
            }
            throw zzenn.c();
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final float c() throws IOException {
        return Float.intBitsToFloat(x());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int c(int i) throws zzenn {
        if (i >= 0) {
            int u = i + u();
            int i2 = this.l;
            if (u <= i2) {
                this.l = u;
                z();
                return i2;
            }
            throw zzenn.a();
        }
        throw zzenn.b();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final long d() throws IOException {
        return w();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final void d(int i) {
        this.l = i;
        z();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final long e() throws IOException {
        return w();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int f() throws IOException {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final long g() throws IOException {
        return y();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int h() throws IOException {
        return x();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final boolean i() throws IOException {
        return w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final String j() throws IOException {
        int v = v();
        if (v > 0 && v <= this.g - this.i) {
            String str = new String(this.e, this.i, v, dnj.f27001a);
            this.i += v;
            return str;
        } else if (v == 0) {
            return "";
        } else {
            if (v < 0) {
                throw zzenn.b();
            }
            throw zzenn.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final String k() throws IOException {
        int v = v();
        if (v > 0) {
            int i = this.g;
            int i2 = this.i;
            if (v <= i - i2) {
                String b2 = dqp.b(this.e, i2, v);
                this.i += v;
                return b2;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v <= 0) {
            throw zzenn.b();
        }
        throw zzenn.a();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final dlw l() throws IOException {
        byte[] bArr;
        int v = v();
        if (v > 0) {
            int i = this.g;
            int i2 = this.i;
            if (v <= i - i2) {
                dlw a2 = dlw.a(this.e, i2, v);
                this.i += v;
                return a2;
            }
        }
        if (v == 0) {
            return dlw.f26941a;
        }
        if (v > 0) {
            int i3 = this.g;
            int i4 = this.i;
            if (v <= i3 - i4) {
                int i5 = v + i4;
                this.i = i5;
                bArr = Arrays.copyOfRange(this.e, i4, i5);
                return dlw.b(bArr);
            }
        }
        if (v > 0) {
            throw zzenn.a();
        } else if (v == 0) {
            bArr = dnj.f27002b;
            return dlw.b(bArr);
        } else {
            throw zzenn.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int m() throws IOException {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int n() throws IOException {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int o() throws IOException {
        return x();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final long p() throws IOException {
        return y();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int q() throws IOException {
        return e(v());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final long r() throws IOException {
        return a(w());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dmi
    public final long s() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte A = A();
            j |= (A & Byte.MAX_VALUE) << i;
            if ((A & 128) == 0) {
                return j;
            }
        }
        throw zzenn.c();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final boolean t() throws IOException {
        return this.i == this.g;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int u() {
        return this.i - this.j;
    }
}

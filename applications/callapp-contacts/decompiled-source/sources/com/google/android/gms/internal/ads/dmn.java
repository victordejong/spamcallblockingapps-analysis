package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmn.class */
final class dmn extends dmi {
    private final InputStream e;
    private final byte[] f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private dmm m;

    private dmn(InputStream inputStream, int i) {
        super();
        this.l = Integer.MAX_VALUE;
        this.m = null;
        dnj.a(inputStream, "input");
        this.e = inputStream;
        this.f = new byte[4096];
        this.g = 0;
        this.i = 0;
        this.k = 0;
    }

    private final byte A() throws IOException {
        if (this.i == this.g) {
            f(1);
        }
        byte[] bArr = this.f;
        int i = this.i;
        this.i = i + 1;
        return bArr[i];
    }

    private final void f(int i) throws IOException {
        if (g(i)) {
            return;
        }
        if (i > (this.f26958c - this.k) - this.i) {
            throw zzenn.g();
        }
        throw zzenn.a();
    }

    private final boolean g(int i) throws IOException {
        while (this.i + i > this.g) {
            int i2 = this.f26958c;
            int i3 = this.k;
            int i4 = this.i;
            if (i > (i2 - i3) - i4 || i3 + i4 + i > this.l) {
                return false;
            }
            if (i4 > 0) {
                int i5 = this.g;
                if (i5 > i4) {
                    byte[] bArr = this.f;
                    System.arraycopy(bArr, i4, bArr, 0, i5 - i4);
                }
                this.k += i4;
                this.g -= i4;
                this.i = 0;
            }
            InputStream inputStream = this.e;
            byte[] bArr2 = this.f;
            int i6 = this.g;
            int read = inputStream.read(bArr2, i6, Math.min(bArr2.length - i6, (this.f26958c - this.k) - this.g));
            if (read == 0 || read < -1 || read > this.f.length) {
                String valueOf = String.valueOf(this.e.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 91);
                sb.append(valueOf);
                sb.append("#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.g += read;
                z();
                if (this.g >= i) {
                    return true;
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(77);
        sb2.append("refillBuffer() called when ");
        sb2.append(i);
        sb2.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb2.toString());
    }

    private final byte[] h(int i) throws IOException {
        byte[] i2 = i(i);
        if (i2 != null) {
            return i2;
        }
        int i3 = this.i;
        int i4 = this.g;
        int i5 = i4 - i3;
        this.k += i4;
        this.i = 0;
        this.g = 0;
        List<byte[]> j = j(i - i5);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, i3, bArr, 0, i5);
        int i6 = i5;
        for (byte[] bArr2 : j) {
            System.arraycopy(bArr2, 0, bArr, i6, bArr2.length);
            i6 += bArr2.length;
        }
        return bArr;
    }

    private final byte[] i(int i) throws IOException {
        if (i == 0) {
            return dnj.f27002b;
        }
        if (i >= 0) {
            int i2 = this.k + this.i + i;
            if (i2 - this.f26958c <= 0) {
                int i3 = this.l;
                if (i2 <= i3) {
                    int i4 = this.g - this.i;
                    int i5 = i - i4;
                    if (i5 >= 4096 && i5 > this.e.available()) {
                        return null;
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.f, this.i, bArr, 0, i4);
                    this.k += this.g;
                    this.i = 0;
                    this.g = 0;
                    while (i4 < i) {
                        int read = this.e.read(bArr, i4, i - i4);
                        if (read != -1) {
                            this.k += read;
                            i4 += read;
                        } else {
                            throw zzenn.a();
                        }
                    }
                    return bArr;
                }
                k((i3 - this.k) - this.i);
                throw zzenn.a();
            }
            throw zzenn.g();
        }
        throw zzenn.b();
    }

    private final List<byte[]> j(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.e.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.k += read;
                    i2 += read;
                } else {
                    throw zzenn.a();
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void k(int i) throws IOException {
        int i2 = this.g;
        int i3 = this.i;
        if (i <= i2 - i3 && i >= 0) {
            this.i = i3 + i;
        } else if (i >= 0) {
            int i4 = this.k;
            int i5 = this.l;
            if (i4 + i3 + i <= i5) {
                this.k = i4 + i3;
                int i6 = i2 - i3;
                this.g = 0;
                this.i = 0;
                while (i6 < i) {
                    try {
                        long j = i - i6;
                        long skip = this.e.skip(j);
                        int i7 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                        if (i7 >= 0 && skip <= j) {
                            if (i7 == 0) {
                                break;
                            }
                            i6 += (int) skip;
                        } else {
                            String valueOf = String.valueOf(this.e.getClass());
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                            sb.append(valueOf);
                            sb.append("#skip returned invalid result: ");
                            sb.append(skip);
                            sb.append("\nThe InputStream implementation is buggy.");
                            throw new IllegalStateException(sb.toString());
                        }
                    } finally {
                        this.k += i6;
                        z();
                    }
                }
                if (i6 < i) {
                    int i8 = this.g;
                    int i9 = i8 - this.i;
                    this.i = i8;
                    f(1);
                    while (true) {
                        int i10 = i - i9;
                        int i11 = this.g;
                        if (i10 > i11) {
                            i9 += i11;
                            this.i = i11;
                            f(1);
                        } else {
                            this.i = i10;
                            return;
                        }
                    }
                }
            } else {
                k((i5 - i4) - i3);
                throw zzenn.a();
            }
        } else {
            throw zzenn.b();
        }
    }

    private final int v() throws IOException {
        int i;
        int i2 = this.i;
        int i3 = this.g;
        if (i3 != i2) {
            byte[] bArr = this.f;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmn.w():long");
    }

    private final int x() throws IOException {
        int i = this.i;
        int i2 = i;
        if (this.g - i < 4) {
            f(4);
            i2 = this.i;
        }
        byte[] bArr = this.f;
        this.i = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private final long y() throws IOException {
        int i = this.i;
        int i2 = i;
        if (this.g - i < 8) {
            f(8);
            i2 = this.i;
        }
        byte[] bArr = this.f;
        this.i = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    private final void z() {
        int i = this.g + this.h;
        this.g = i;
        int i2 = this.k + i;
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
            this.j = 0;
            return 0;
        }
        int v = v();
        this.j = v;
        if ((v >>> 3) != 0) {
            return v;
        }
        throw zzenn.d();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final void a(int i) throws zzenn {
        if (this.j != i) {
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
                k(8);
                return true;
            } else if (i2 == 2) {
                k(v());
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
                    k(4);
                    return true;
                }
                throw zzenn.f();
            }
        } else if (this.g - this.i >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f;
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
            int i2 = i + this.k + this.i;
            int i3 = this.l;
            if (i2 <= i3) {
                this.l = i2;
                z();
                return i3;
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
            String str = new String(this.f, this.i, v, dnj.f27001a);
            this.i += v;
            return str;
        } else if (v == 0) {
            return "";
        } else {
            if (v > this.g) {
                return new String(h(v), dnj.f27001a);
            }
            f(v);
            String str2 = new String(this.f, this.i, v, dnj.f27001a);
            this.i += v;
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final String k() throws IOException {
        byte[] bArr;
        int v = v();
        int i = this.i;
        int i2 = this.g;
        if (v <= i2 - i && v > 0) {
            bArr = this.f;
            this.i = i + v;
        } else if (v == 0) {
            return "";
        } else {
            if (v <= i2) {
                f(v);
                bArr = this.f;
                this.i = v;
            } else {
                bArr = h(v);
            }
            i = 0;
        }
        return dqp.b(bArr, i, v);
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final dlw l() throws IOException {
        int v = v();
        int i = this.g;
        int i2 = this.i;
        if (v <= i - i2 && v > 0) {
            dlw a2 = dlw.a(this.f, i2, v);
            this.i += v;
            return a2;
        } else if (v == 0) {
            return dlw.f26941a;
        } else {
            byte[] i3 = i(v);
            if (i3 != null) {
                return dlw.a(i3);
            }
            int i4 = this.i;
            int i5 = this.g;
            int i6 = i5 - i4;
            this.k += i5;
            this.i = 0;
            this.g = 0;
            List<byte[]> j = j(v - i6);
            byte[] bArr = new byte[v];
            System.arraycopy(this.f, i4, bArr, 0, i6);
            for (byte[] bArr2 : j) {
                System.arraycopy(bArr2, 0, bArr, i6, bArr2.length);
                i6 += bArr2.length;
            }
            return dlw.b(bArr);
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
        return this.i == this.g && !g(1);
    }

    @Override // com.google.android.gms.internal.ads.dmi
    public final int u() {
        return this.k + this.i;
    }
}

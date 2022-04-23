package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzemk.class */
public abstract class zzemk extends dlt {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f28622b = Logger.getLogger(zzemk.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f28623c = dqm.a();

    /* renamed from: a  reason: collision with root package name */
    dms f28624a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzemk$a.class */
    static final class a extends zzemk {

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f28625b;

        /* renamed from: c  reason: collision with root package name */
        private final int f28626c;

        /* renamed from: d  reason: collision with root package name */
        private final int f28627d;
        private int e;

        a(byte[] bArr, int i, int i2) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.f28625b = bArr;
                this.f28626c = 0;
                this.e = 0;
                this.f28627d = i2;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
        }

        private final void b(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f28625b, this.e, i2);
                this.e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f28627d), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(byte b2) throws IOException {
            try {
                byte[] bArr = this.f28625b;
                int i = this.e;
                this.e = i + 1;
                bArr[i] = b2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f28627d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(int i) throws IOException {
            if (i >= 0) {
                b(i);
            } else {
                a(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(int i, int i2) throws IOException {
            b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(int i, long j) throws IOException {
            a(i, 0);
            a(j);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(int i, dlw dlwVar) throws IOException {
            a(i, 2);
            a(dlwVar);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(int i, dot dotVar) throws IOException {
            a(1, 3);
            c(2, i);
            a(3, 2);
            a(dotVar);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        final void a(int i, dot dotVar, dpp dppVar) throws IOException {
            a(i, 2);
            dln dlnVar = (dln) dotVar;
            int h = dlnVar.h();
            int i2 = h;
            if (h == -1) {
                i2 = dppVar.b(dlnVar);
                dlnVar.a(i2);
            }
            b(i2);
            dppVar.a((dpp) dotVar, (drd) this.f28624a);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(int i, String str) throws IOException {
            a(i, 2);
            a(str);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(int i, boolean z) throws IOException {
            a(i, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.ads.zzemk
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemk.a.a(long):void");
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(dlw dlwVar) throws IOException {
            b(dlwVar.b());
            dlwVar.a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(dot dotVar) throws IOException {
            b(dotVar.l());
            dotVar.a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(String str) throws IOException {
            int i = this.e;
            try {
                int n = n(str.length() * 3);
                int n2 = n(str.length());
                if (n2 == n) {
                    int i2 = i + n2;
                    this.e = i2;
                    int a2 = dqp.a(str, this.f28625b, i2, h());
                    this.e = i;
                    b((a2 - i) - n2);
                    this.e = a2;
                    return;
                }
                b(dqp.a(str));
                this.e = dqp.a(str, this.f28625b, this.e, h());
            } catch (dqs e) {
                this.e = i;
                a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void a(byte[] bArr, int i) throws IOException {
            b(i);
            b(bArr, 0, i);
        }

        @Override // com.google.android.gms.internal.ads.dlt
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            b(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void b(int i) throws IOException {
            int i2 = i;
            if (zzemk.f28623c) {
                i2 = i;
                if (!dlp.a()) {
                    i2 = i;
                    if (h() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f28625b;
                            int i3 = this.e;
                            this.e = i3 + 1;
                            dqm.a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f28625b;
                        int i4 = this.e;
                        this.e = i4 + 1;
                        dqm.a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f28625b;
                            int i6 = this.e;
                            this.e = i6 + 1;
                            dqm.a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f28625b;
                        int i7 = this.e;
                        this.e = i7 + 1;
                        dqm.a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f28625b;
                            int i9 = this.e;
                            this.e = i9 + 1;
                            dqm.a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f28625b;
                        int i10 = this.e;
                        this.e = i10 + 1;
                        dqm.a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f28625b;
                            int i12 = this.e;
                            this.e = i12 + 1;
                            dqm.a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f28625b;
                        int i13 = this.e;
                        this.e = i13 + 1;
                        dqm.a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f28625b;
                        int i14 = this.e;
                        this.e = i14 + 1;
                        dqm.a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f28625b;
                    int i15 = this.e;
                    this.e = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f28627d), 1), e);
                }
            }
            byte[] bArr11 = this.f28625b;
            int i16 = this.e;
            this.e = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void b(int i, int i2) throws IOException {
            a(i, 0);
            a(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void b(int i, dlw dlwVar) throws IOException {
            a(1, 3);
            c(2, i);
            a(3, dlwVar);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void c(int i, int i2) throws IOException {
            a(i, 0);
            b(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void c(int i, long j) throws IOException {
            a(i, 1);
            c(j);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void c(long j) throws IOException {
            try {
                byte[] bArr = this.f28625b;
                int i = this.e;
                int i2 = i + 1;
                this.e = i2;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                this.e = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                this.e = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                this.e = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                this.e = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                this.e = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                this.e = i8;
                bArr[i7] = (byte) (j >> 48);
                this.e = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f28627d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void d(int i) throws IOException {
            try {
                byte[] bArr = this.f28625b;
                int i2 = this.e;
                int i3 = i2 + 1;
                this.e = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.e = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.e = i5;
                bArr[i4] = (byte) (i >> 16);
                this.e = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f28627d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final void e(int i, int i2) throws IOException {
            a(i, 5);
            d(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        public final int h() {
            return this.f28627d - this.e;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzemk$zza.class */
    public static final class zza extends IOException {
        zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zza(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L_0x0020:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemk.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzemk() {
    }

    public static int a() {
        return 4;
    }

    public static int a(int i, dnx dnxVar) {
        int n = n(i << 3);
        int b2 = dnxVar.b();
        return n + n(b2) + b2;
    }

    public static int a(dnx dnxVar) {
        int b2 = dnxVar.b();
        return n(b2) + b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(dot dotVar, dpp dppVar) {
        dln dlnVar = (dln) dotVar;
        int h = dlnVar.h();
        int i = h;
        if (h == -1) {
            i = dppVar.b(dlnVar);
            dlnVar.a(i);
        }
        return n(i) + i;
    }

    public static zzemk a(byte[] bArr) {
        return new a(bArr, 0, bArr.length);
    }

    public static int b() {
        return 4;
    }

    public static int b(int i, dnx dnxVar) {
        return (n(8) << 1) + g(2, i) + a(3, dnxVar);
    }

    public static int b(int i, dot dotVar) {
        return (n(8) << 1) + g(2, i) + n(24) + b(dotVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i, dot dotVar, dpp dppVar) {
        return n(i << 3) + a(dotVar, dppVar);
    }

    public static int b(int i, String str) {
        return n(i << 3) + b(str);
    }

    public static int b(dlw dlwVar) {
        int b2 = dlwVar.b();
        return n(b2) + b2;
    }

    public static int b(dot dotVar) {
        int l = dotVar.l();
        return n(l) + l;
    }

    public static int b(String str) {
        int i;
        try {
            i = dqp.a(str);
        } catch (dqs e) {
            i = str.getBytes(dnj.f27001a).length;
        }
        return n(i) + i;
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        return n(length) + length;
    }

    public static int c() {
        return 8;
    }

    public static int c(int i, dlw dlwVar) {
        int n = n(i << 3);
        int b2 = dlwVar.b();
        return n + n(b2) + b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int c(int i, dot dotVar, dpp dppVar) {
        int n = n(i << 3);
        dln dlnVar = (dln) dotVar;
        int h = dlnVar.h();
        int i2 = h;
        if (h == -1) {
            i2 = dppVar.b(dlnVar);
            dlnVar.a(i2);
        }
        return (n << 1) + i2;
    }

    @Deprecated
    public static int c(dot dotVar) {
        return dotVar.l();
    }

    public static int d() {
        return 8;
    }

    public static int d(int i, long j) {
        return n(i << 3) + e(j);
    }

    public static int d(int i, dlw dlwVar) {
        return (n(8) << 1) + g(2, i) + c(3, dlwVar);
    }

    public static int d(long j) {
        return e(j);
    }

    public static int e() {
        return 4;
    }

    public static int e(int i) {
        return n(i << 3) + 4;
    }

    public static int e(int i, long j) {
        return n(i << 3) + e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int e(long r5) {
        /*
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = 1
            return r0
        L_0x000c:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
            r0 = 10
            return r0
        L_0x0015:
            r0 = -34359738368(0xfffffff800000000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002a
            r0 = 6
            r7 = r0
            r0 = r5
            r1 = 28
            long r0 = r0 >>> r1
            r5 = r0
            goto L_0x002c
        L_0x002a:
            r0 = 2
            r7 = r0
        L_0x002c:
            r0 = r7
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = -2097152(0xffffffffffe00000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r7
            r1 = 2
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = 14
            long r0 = r0 >>> r1
            r9 = r0
        L_0x0045:
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = -16384(0xffffffffffffc000, double:NaN)
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0056
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x0056:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemk.e(long):int");
    }

    public static int f() {
        return 8;
    }

    public static int f(int i) {
        return n(i << 3) + 4;
    }

    public static int f(int i, int i2) {
        return n(i << 3) + m(i2);
    }

    public static int f(int i, long j) {
        return n(i << 3) + e(g(j));
    }

    public static int f(long j) {
        return e(g(j));
    }

    public static int g() {
        return 1;
    }

    public static int g(int i) {
        return n(i << 3) + 8;
    }

    public static int g(int i, int i2) {
        return n(i << 3) + n(i2);
    }

    private static long g(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int h(int i) {
        return n(i << 3) + 8;
    }

    public static int h(int i, int i2) {
        return n(i << 3) + n(r(i2));
    }

    public static int i(int i) {
        return n(i << 3) + 4;
    }

    public static int i(int i, int i2) {
        return n(i << 3) + m(i2);
    }

    public static int j(int i) {
        return n(i << 3) + 8;
    }

    public static int k(int i) {
        return n(i << 3) + 1;
    }

    public static int l(int i) {
        return n(i << 3);
    }

    public static int m(int i) {
        if (i >= 0) {
            return n(i);
        }
        return 10;
    }

    public static int n(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int o(int i) {
        return n(r(i));
    }

    public static int p(int i) {
        return m(i);
    }

    @Deprecated
    public static int q(int i) {
        return n(i);
    }

    private static int r(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public abstract void a(byte b2) throws IOException;

    public final void a(double d2) throws IOException {
        c(Double.doubleToRawLongBits(d2));
    }

    public final void a(float f) throws IOException {
        d(Float.floatToRawIntBits(f));
    }

    public abstract void a(int i) throws IOException;

    public final void a(int i, double d2) throws IOException {
        c(i, Double.doubleToRawLongBits(d2));
    }

    public final void a(int i, float f) throws IOException {
        e(i, Float.floatToRawIntBits(f));
    }

    public abstract void a(int i, int i2) throws IOException;

    public abstract void a(int i, long j) throws IOException;

    public abstract void a(int i, dlw dlwVar) throws IOException;

    public abstract void a(int i, dot dotVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int i, dot dotVar, dpp dppVar) throws IOException;

    public abstract void a(int i, String str) throws IOException;

    public abstract void a(int i, boolean z) throws IOException;

    public abstract void a(long j) throws IOException;

    public abstract void a(dlw dlwVar) throws IOException;

    public abstract void a(dot dotVar) throws IOException;

    public abstract void a(String str) throws IOException;

    final void a(String str, dqs dqsVar) throws IOException {
        f28622b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) dqsVar);
        byte[] bytes = str.getBytes(dnj.f27001a);
        try {
            b(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    public final void a(boolean z) throws IOException {
        a(z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(byte[] bArr, int i) throws IOException;

    public abstract void b(int i) throws IOException;

    public abstract void b(int i, int i2) throws IOException;

    public final void b(int i, long j) throws IOException {
        a(i, g(j));
    }

    public abstract void b(int i, dlw dlwVar) throws IOException;

    public final void b(long j) throws IOException {
        a(g(j));
    }

    public final void c(int i) throws IOException {
        b(r(i));
    }

    public abstract void c(int i, int i2) throws IOException;

    public abstract void c(int i, long j) throws IOException;

    public abstract void c(long j) throws IOException;

    public abstract void d(int i) throws IOException;

    public final void d(int i, int i2) throws IOException {
        c(i, r(i2));
    }

    public abstract void e(int i, int i2) throws IOException;

    public abstract int h();

    public final void i() {
        if (h() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }
}

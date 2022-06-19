package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebk.class */
public abstract class zzebk extends dbj {

    /* renamed from: b */
    private static final Logger f17738b = Logger.getLogger(zzebk.class.getName());

    /* renamed from: c */
    private static final boolean f17739c = dgb.m9716a();

    /* renamed from: a */
    dcf f17740a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzebk$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebk$a.class */
    public static final class C3697a extends zzebk {

        /* renamed from: b */
        private final byte[] f17741b;

        /* renamed from: c */
        private final int f17742c;

        /* renamed from: d */
        private final int f17743d;

        /* renamed from: e */
        private int f17744e;

        C3697a(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if ((i2 | 0 | (bArr.length - (i2 + 0))) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            this.f17741b = bArr;
            this.f17742c = 0;
            this.f17744e = 0;
            this.f17743d = i2 + 0;
        }

        /* renamed from: c */
        private final void m6554c(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f17741b, this.f17744e, i2);
                this.f17744e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17744e), Integer.valueOf(this.f17743d), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final int mo6576a() {
            return this.f17743d - this.f17744e;
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6575a(byte b) {
            try {
                byte[] bArr = this.f17741b;
                int i = this.f17744e;
                this.f17744e = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17744e), Integer.valueOf(this.f17743d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6574a(int i) {
            if (i >= 0) {
                mo6561b(i);
            } else {
                mo6566a(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6573a(int i, int i2) {
            mo6561b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6572a(int i, long j) {
            mo6573a(i, 0);
            mo6566a(j);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6571a(int i, dbi dbiVar) {
            mo6573a(i, 2);
            mo6565a(dbiVar);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6570a(int i, deg degVar) {
            mo6573a(1, 3);
            mo6557c(2, i);
            mo6573a(3, 2);
            mo6564a(degVar);
            mo6573a(1, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6569a(int i, deg degVar, dfd dfdVar) {
            mo6573a(i, 2);
            day dayVar = (day) degVar;
            int mo10080m = dayVar.mo10080m();
            int i2 = mo10080m;
            if (mo10080m == -1) {
                i2 = dfdVar.mo9840b(dayVar);
                dayVar.mo10096a(i2);
            }
            mo6561b(i2);
            dfdVar.mo9843a((dfd) degVar, (dgo) this.f17740a);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6568a(int i, String str) {
            mo6573a(i, 2);
            mo6563a(str);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6567a(int i, boolean z) {
            mo6573a(i, 0);
            int i2 = 0;
            if (z) {
                i2 = 1;
            }
            mo6575a((byte) i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6566a(long j) {
            char c = j;
            if (zzebk.f17739c) {
                c = j;
                char c2 = j;
                if (mo6576a() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.f17741b;
                        int i = this.f17744e;
                        this.f17744e = i + 1;
                        dgb.m9704a(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.f17741b;
                    int i2 = this.f17744e;
                    this.f17744e = i2 + 1;
                    dgb.m9704a(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.f17741b;
                    int i3 = this.f17744e;
                    this.f17744e = i3 + 1;
                    bArr3[i3] = (byte) ((c & 127) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17744e), Integer.valueOf(this.f17743d), 1), e);
                }
            }
            byte[] bArr4 = this.f17741b;
            int i4 = this.f17744e;
            this.f17744e = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6565a(dbi dbiVar) {
            mo6561b(dbiVar.mo9911b());
            dbiVar.mo9914a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6564a(deg degVar) {
            mo6561b(degVar.mo9983q());
            degVar.mo9986a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: a */
        public final void mo6563a(String str) {
            int i = this.f17744e;
            try {
                int g = m6593g(str.length() * 3);
                int g2 = m6593g(str.length());
                if (g2 == g) {
                    this.f17744e = i + g2;
                    int m9643a = dgd.m9643a(str, this.f17741b, this.f17744e, mo6576a());
                    this.f17744e = i;
                    mo6561b((m9643a - i) - g2);
                    this.f17744e = m9643a;
                } else {
                    mo6561b(dgd.m9644a(str));
                    this.f17744e = dgd.m9643a(str, this.f17741b, this.f17744e, mo6576a());
                }
            } catch (dgh e) {
                this.f17744e = i;
                m6629a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.dbj
        /* renamed from: a */
        public final void mo6562a(byte[] bArr, int i, int i2) {
            m6554c(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: b */
        public final void mo6561b(int i) {
            int i2 = i;
            if (zzebk.f17739c) {
                i2 = i;
                if (!dbf.m10230a()) {
                    i2 = i;
                    if (mo6576a() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f17741b;
                            int i3 = this.f17744e;
                            this.f17744e = i3 + 1;
                            dgb.m9704a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f17741b;
                        int i4 = this.f17744e;
                        this.f17744e = i4 + 1;
                        dgb.m9704a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f17741b;
                            int i6 = this.f17744e;
                            this.f17744e = i6 + 1;
                            dgb.m9704a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f17741b;
                        int i7 = this.f17744e;
                        this.f17744e = i7 + 1;
                        dgb.m9704a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f17741b;
                            int i9 = this.f17744e;
                            this.f17744e = i9 + 1;
                            dgb.m9704a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f17741b;
                        int i10 = this.f17744e;
                        this.f17744e = i10 + 1;
                        dgb.m9704a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f17741b;
                            int i12 = this.f17744e;
                            this.f17744e = i12 + 1;
                            dgb.m9704a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f17741b;
                        int i13 = this.f17744e;
                        this.f17744e = i13 + 1;
                        dgb.m9704a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f17741b;
                        int i14 = this.f17744e;
                        this.f17744e = i14 + 1;
                        dgb.m9704a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f17741b;
                    int i15 = this.f17744e;
                    this.f17744e = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17744e), Integer.valueOf(this.f17743d), 1), e);
                }
            }
            byte[] bArr11 = this.f17741b;
            int i16 = this.f17744e;
            this.f17744e = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: b */
        public final void mo6560b(int i, int i2) {
            mo6573a(i, 0);
            mo6574a(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: b */
        public final void mo6559b(int i, dbi dbiVar) {
            mo6573a(1, 3);
            mo6557c(2, i);
            mo6571a(3, dbiVar);
            mo6573a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: b */
        public final void mo6558b(byte[] bArr, int i, int i2) {
            mo6561b(i2);
            m6554c(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: c */
        public final void mo6557c(int i, int i2) {
            mo6573a(i, 0);
            mo6561b(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: c */
        public final void mo6556c(int i, long j) {
            mo6573a(i, 1);
            mo6555c(j);
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: c */
        public final void mo6555c(long j) {
            try {
                byte[] bArr = this.f17741b;
                int i = this.f17744e;
                this.f17744e = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f17741b;
                int i2 = this.f17744e;
                this.f17744e = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f17741b;
                int i3 = this.f17744e;
                this.f17744e = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f17741b;
                int i4 = this.f17744e;
                this.f17744e = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f17741b;
                int i5 = this.f17744e;
                this.f17744e = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f17741b;
                int i6 = this.f17744e;
                this.f17744e = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f17741b;
                int i7 = this.f17744e;
                this.f17744e = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f17741b;
                int i8 = this.f17744e;
                this.f17744e = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17744e), Integer.valueOf(this.f17743d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: d */
        public final void mo6553d(int i) {
            try {
                byte[] bArr = this.f17741b;
                int i2 = this.f17744e;
                this.f17744e = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f17741b;
                int i3 = this.f17744e;
                this.f17744e = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f17741b;
                int i4 = this.f17744e;
                this.f17744e = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f17741b;
                int i5 = this.f17744e;
                this.f17744e = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17744e), Integer.valueOf(this.f17743d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzebk
        /* renamed from: e */
        public final void mo6552e(int i, int i2) {
            mo6573a(i, 5);
            mo6553d(i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebk$zzb.class */
    public static final class zzb extends IOException {
        zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zzb(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r7 = r0
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L1f
                r0 = r7
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
            L18:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            L1f:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                r2 = r7
                r1.<init>(r2)
                r5 = r0
                goto L18
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebk.zzb.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zzb(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzebk() {
    }

    /* renamed from: a */
    public static int m6632a(int i, ddk ddkVar) {
        int m6600e = m6600e(i);
        int m10033b = ddkVar.m10033b();
        return m6600e + m10033b + m6593g(m10033b);
    }

    /* renamed from: a */
    public static int m6631a(ddk ddkVar) {
        int m10033b = ddkVar.m10033b();
        return m10033b + m6593g(m10033b);
    }

    /* renamed from: a */
    public static int m6630a(deg degVar, dfd dfdVar) {
        day dayVar = (day) degVar;
        int mo10080m = dayVar.mo10080m();
        int i = mo10080m;
        if (mo10080m == -1) {
            i = dfdVar.mo9840b(dayVar);
            dayVar.mo10096a(i);
        }
        return i + m6593g(i);
    }

    /* renamed from: a */
    public static zzebk m6627a(byte[] bArr) {
        return new C3697a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m6625b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m6624b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m6623b(int i, double d) {
        return m6600e(i) + 8;
    }

    /* renamed from: b */
    public static int m6622b(int i, float f) {
        return m6600e(i) + 4;
    }

    /* renamed from: b */
    public static int m6620b(int i, ddk ddkVar) {
        return (m6600e(1) << 1) + m6592g(2, i) + m6632a(3, ddkVar);
    }

    /* renamed from: b */
    public static int m6619b(int i, deg degVar) {
        return (m6600e(1) << 1) + m6592g(2, i) + m6600e(3) + m6613b(degVar);
    }

    /* renamed from: b */
    public static int m6618b(int i, deg degVar, dfd dfdVar) {
        return m6600e(i) + m6630a(degVar, dfdVar);
    }

    /* renamed from: b */
    public static int m6617b(int i, String str) {
        return m6600e(i) + m6612b(str);
    }

    /* renamed from: b */
    public static int m6616b(int i, boolean z) {
        return m6600e(i) + 1;
    }

    /* renamed from: b */
    public static int m6614b(dbi dbiVar) {
        int mo9911b = dbiVar.mo9911b();
        return mo9911b + m6593g(mo9911b);
    }

    /* renamed from: b */
    public static int m6613b(deg degVar) {
        int mo9983q = degVar.mo9983q();
        return mo9983q + m6593g(mo9983q);
    }

    /* renamed from: b */
    public static int m6612b(String str) {
        int length;
        try {
            length = dgd.m9644a(str);
        } catch (dgh e) {
            length = str.getBytes(dcz.f14093a).length;
        }
        return length + m6593g(length);
    }

    /* renamed from: b */
    public static int m6611b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m6610b(byte[] bArr) {
        int length = bArr.length;
        return length + m6593g(length);
    }

    /* renamed from: c */
    public static int m6607c(int i, dbi dbiVar) {
        int m6600e = m6600e(i);
        int mo9911b = dbiVar.mo9911b();
        return m6600e + mo9911b + m6593g(mo9911b);
    }

    @Deprecated
    /* renamed from: c */
    public static int m6606c(int i, deg degVar, dfd dfdVar) {
        int m6600e = m6600e(i);
        day dayVar = (day) degVar;
        int mo10080m = dayVar.mo10080m();
        int i2 = mo10080m;
        if (mo10080m == -1) {
            i2 = dfdVar.mo9840b(dayVar);
            dayVar.mo10096a(i2);
        }
        return i2 + (m6600e << 1);
    }

    @Deprecated
    /* renamed from: c */
    public static int m6605c(deg degVar) {
        return degVar.mo9983q();
    }

    /* renamed from: d */
    public static int m6603d(int i, long j) {
        return m6600e(i) + m6598e(j);
    }

    /* renamed from: d */
    public static int m6602d(int i, dbi dbiVar) {
        return (m6600e(1) << 1) + m6592g(2, i) + m6607c(3, dbiVar);
    }

    /* renamed from: d */
    public static int m6601d(long j) {
        return m6598e(j);
    }

    /* renamed from: e */
    public static int m6600e(int i) {
        return m6593g(i << 3);
    }

    /* renamed from: e */
    public static int m6599e(int i, long j) {
        return m6600e(i) + m6598e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: e */
    public static int m6598e(long j) {
        int i;
        if (((-128) & j) == 0) {
            i = 1;
        } else if (j < 0) {
            i = 10;
        } else {
            int i2 = 2;
            int i3 = (((-34359738368L) & j) > 0L ? 1 : (((-34359738368L) & j) == 0L ? 0 : -1));
            ?? r5 = j;
            if (i3 != 0) {
                i2 = 6;
                r5 = j >>> 28;
            }
            int i4 = i2;
            byte b = r5;
            if ((0 & r5) != 0) {
                i4 = i2 + 2;
                b = r5 >>> 14;
            }
            i = i4;
            if ((b & (-16384)) != 0) {
                i = i4 + 1;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static int m6597f(int i) {
        return i >= 0 ? m6593g(i) : 10;
    }

    /* renamed from: f */
    public static int m6596f(int i, int i2) {
        return m6600e(i) + m6597f(i2);
    }

    /* renamed from: f */
    public static int m6595f(int i, long j) {
        return m6600e(i) + m6598e(m6583i(j));
    }

    /* renamed from: f */
    public static int m6594f(long j) {
        return m6598e(m6583i(j));
    }

    /* renamed from: g */
    public static int m6593g(int i) {
        return (i & (-128)) == 0 ? 1 : (i & (-16384)) == 0 ? 2 : ((-2097152) & i) == 0 ? 3 : ((-268435456) & i) == 0 ? 4 : 5;
    }

    /* renamed from: g */
    public static int m6592g(int i, int i2) {
        return m6600e(i) + m6593g(i2);
    }

    /* renamed from: g */
    public static int m6591g(int i, long j) {
        return m6600e(i) + 8;
    }

    /* renamed from: g */
    public static int m6590g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m6589h(int i) {
        return m6593g(m6577m(i));
    }

    /* renamed from: h */
    public static int m6588h(int i, int i2) {
        return m6600e(i) + m6593g(m6577m(i2));
    }

    /* renamed from: h */
    public static int m6587h(int i, long j) {
        return m6600e(i) + 8;
    }

    /* renamed from: h */
    public static int m6586h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m6585i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m6584i(int i, int i2) {
        return m6600e(i) + 4;
    }

    /* renamed from: i */
    private static long m6583i(long j) {
        return (j << 1) ^ (j >> 63);
    }

    /* renamed from: j */
    public static int m6582j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m6581j(int i, int i2) {
        return m6600e(i) + 4;
    }

    /* renamed from: k */
    public static int m6580k(int i) {
        return m6597f(i);
    }

    /* renamed from: k */
    public static int m6579k(int i, int i2) {
        return m6600e(i) + m6597f(i2);
    }

    @Deprecated
    /* renamed from: l */
    public static int m6578l(int i) {
        return m6593g(i);
    }

    /* renamed from: m */
    private static int m6577m(int i) {
        return (i << 1) ^ (i >> 31);
    }

    /* renamed from: a */
    public abstract int mo6576a();

    /* renamed from: a */
    public abstract void mo6575a(byte b);

    /* renamed from: a */
    public final void m6636a(double d) {
        mo6555c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m6635a(float f) {
        mo6553d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo6574a(int i);

    /* renamed from: a */
    public final void m6634a(int i, double d) {
        mo6556c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m6633a(int i, float f) {
        mo6552e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo6573a(int i, int i2);

    /* renamed from: a */
    public abstract void mo6572a(int i, long j);

    /* renamed from: a */
    public abstract void mo6571a(int i, dbi dbiVar);

    /* renamed from: a */
    public abstract void mo6570a(int i, deg degVar);

    /* renamed from: a */
    public abstract void mo6569a(int i, deg degVar, dfd dfdVar);

    /* renamed from: a */
    public abstract void mo6568a(int i, String str);

    /* renamed from: a */
    public abstract void mo6567a(int i, boolean z);

    /* renamed from: a */
    public abstract void mo6566a(long j);

    /* renamed from: a */
    public abstract void mo6565a(dbi dbiVar);

    /* renamed from: a */
    public abstract void mo6564a(deg degVar);

    /* renamed from: a */
    public abstract void mo6563a(String str);

    /* renamed from: a */
    final void m6629a(String str, dgh dghVar) {
        f17738b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) dghVar);
        byte[] bytes = str.getBytes(dcz.f14093a);
        try {
            mo6561b(bytes.length);
            mo6562a(bytes, 0, bytes.length);
        } catch (zzb e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzb(e2);
        }
    }

    /* renamed from: a */
    public final void m6628a(boolean z) {
        mo6575a((byte) (z ? 1 : 0));
    }

    /* renamed from: b */
    public final void m6626b() {
        if (mo6576a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: b */
    public abstract void mo6561b(int i);

    /* renamed from: b */
    public abstract void mo6560b(int i, int i2);

    /* renamed from: b */
    public final void m6621b(int i, long j) {
        mo6572a(i, m6583i(j));
    }

    /* renamed from: b */
    public abstract void mo6559b(int i, dbi dbiVar);

    /* renamed from: b */
    public final void m6615b(long j) {
        mo6566a(m6583i(j));
    }

    /* renamed from: b */
    public abstract void mo6558b(byte[] bArr, int i, int i2);

    /* renamed from: c */
    public final void m6608c(int i) {
        mo6561b(m6577m(i));
    }

    /* renamed from: c */
    public abstract void mo6557c(int i, int i2);

    /* renamed from: c */
    public abstract void mo6556c(int i, long j);

    /* renamed from: c */
    public abstract void mo6555c(long j);

    /* renamed from: d */
    public abstract void mo6553d(int i);

    /* renamed from: d */
    public final void m6604d(int i, int i2) {
        mo6557c(i, m6577m(i2));
    }

    /* renamed from: e */
    public abstract void mo6552e(int i, int i2);
}

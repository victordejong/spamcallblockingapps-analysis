package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzes.class */
public abstract class zzes extends AbstractC3861cv {

    /* renamed from: b */
    private static final Logger f18549b = Logger.getLogger(zzes.class.getName());

    /* renamed from: c */
    private static final boolean f18550c = C3984ha.m5299a();

    /* renamed from: a */
    C3883do f18551a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.measurement.zzes$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzes$a.class */
    public static final class C4152a extends zzes {

        /* renamed from: b */
        private final byte[] f18552b;

        /* renamed from: c */
        private final int f18553c;

        /* renamed from: d */
        private final int f18554d;

        /* renamed from: e */
        private int f18555e;

        C4152a(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if ((i2 | 0 | (bArr.length - (i2 + 0))) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            this.f18552b = bArr;
            this.f18553c = 0;
            this.f18555e = 0;
            this.f18554d = i2 + 0;
        }

        /* renamed from: c */
        private final void m4857c(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f18552b, this.f18555e, i2);
                this.f18555e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18555e), Integer.valueOf(this.f18554d), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final int mo4879a() {
            return this.f18554d - this.f18555e;
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4878a(byte b) {
            try {
                byte[] bArr = this.f18552b;
                int i = this.f18555e;
                this.f18555e = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18555e), Integer.valueOf(this.f18554d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4877a(int i) {
            if (i >= 0) {
                mo4864b(i);
            } else {
                mo4869a(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4876a(int i, int i2) {
            mo4864b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4875a(int i, long j) {
            mo4876a(i, 0);
            mo4869a(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4874a(int i, AbstractC3859ct abstractC3859ct) {
            mo4876a(i, 2);
            mo4868a(abstractC3859ct);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4873a(int i, AbstractC3943fn abstractC3943fn) {
            mo4876a(1, 3);
            mo4860c(2, i);
            mo4876a(3, 2);
            mo4867a(abstractC3943fn);
            mo4876a(1, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4872a(int i, AbstractC3943fn abstractC3943fn, AbstractC3960gd abstractC3960gd) {
            mo4876a(i, 2);
            AbstractC3850ck abstractC3850ck = (AbstractC3850ck) abstractC3943fn;
            int mo5644aj = abstractC3850ck.mo5644aj();
            int i2 = mo5644aj;
            if (mo5644aj == -1) {
                i2 = abstractC3960gd.mo5466b(abstractC3850ck);
                abstractC3850ck.mo5638c(i2);
            }
            mo4864b(i2);
            abstractC3960gd.mo5469a((AbstractC3960gd) abstractC3943fn, (AbstractC4005hr) this.f18551a);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4871a(int i, String str) {
            mo4876a(i, 2);
            mo4866a(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4870a(int i, boolean z) {
            mo4876a(i, 0);
            int i2 = 0;
            if (z) {
                i2 = 1;
            }
            mo4878a((byte) i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4869a(long j) {
            char c = j;
            if (zzes.f18550c) {
                c = j;
                char c2 = j;
                if (mo4879a() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.f18552b;
                        int i = this.f18555e;
                        this.f18555e = i + 1;
                        C3984ha.m5287a(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.f18552b;
                    int i2 = this.f18555e;
                    this.f18555e = i2 + 1;
                    C3984ha.m5287a(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.f18552b;
                    int i3 = this.f18555e;
                    this.f18555e = i3 + 1;
                    bArr3[i3] = (byte) ((c & 127) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18555e), Integer.valueOf(this.f18554d), 1), e);
                }
            }
            byte[] bArr4 = this.f18552b;
            int i4 = this.f18555e;
            this.f18555e = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4868a(AbstractC3859ct abstractC3859ct) {
            mo4864b(abstractC3859ct.mo5753a());
            abstractC3859ct.mo5749a(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4867a(AbstractC3943fn abstractC3943fn) {
            mo4864b(abstractC3943fn.mo5541an());
            abstractC3943fn.mo5543a(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: a */
        public final void mo4866a(String str) {
            int i = this.f18555e;
            try {
                int g = m4896g(str.length() * 3);
                int g2 = m4896g(str.length());
                if (g2 == g) {
                    this.f18555e = i + g2;
                    int m5242a = C3991hd.m5242a(str, this.f18552b, this.f18555e, mo4879a());
                    this.f18555e = i;
                    mo4864b((m5242a - i) - g2);
                    this.f18555e = m5242a;
                } else {
                    mo4864b(C3991hd.m5243a(str));
                    this.f18555e = C3991hd.m5242a(str, this.f18552b, this.f18555e, mo4879a());
                }
            } catch (C3994hg e) {
                this.f18555e = i;
                m4932a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3861cv
        /* renamed from: a */
        public final void mo4865a(byte[] bArr, int i, int i2) {
            m4857c(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: b */
        public final void mo4864b(int i) {
            int i2 = i;
            if (zzes.f18550c) {
                i2 = i;
                if (!C3856cq.m5819a()) {
                    i2 = i;
                    if (mo4879a() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f18552b;
                            int i3 = this.f18555e;
                            this.f18555e = i3 + 1;
                            C3984ha.m5287a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f18552b;
                        int i4 = this.f18555e;
                        this.f18555e = i4 + 1;
                        C3984ha.m5287a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f18552b;
                            int i6 = this.f18555e;
                            this.f18555e = i6 + 1;
                            C3984ha.m5287a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f18552b;
                        int i7 = this.f18555e;
                        this.f18555e = i7 + 1;
                        C3984ha.m5287a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f18552b;
                            int i9 = this.f18555e;
                            this.f18555e = i9 + 1;
                            C3984ha.m5287a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f18552b;
                        int i10 = this.f18555e;
                        this.f18555e = i10 + 1;
                        C3984ha.m5287a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f18552b;
                            int i12 = this.f18555e;
                            this.f18555e = i12 + 1;
                            C3984ha.m5287a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f18552b;
                        int i13 = this.f18555e;
                        this.f18555e = i13 + 1;
                        C3984ha.m5287a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f18552b;
                        int i14 = this.f18555e;
                        this.f18555e = i14 + 1;
                        C3984ha.m5287a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f18552b;
                    int i15 = this.f18555e;
                    this.f18555e = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18555e), Integer.valueOf(this.f18554d), 1), e);
                }
            }
            byte[] bArr11 = this.f18552b;
            int i16 = this.f18555e;
            this.f18555e = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: b */
        public final void mo4863b(int i, int i2) {
            mo4876a(i, 0);
            mo4877a(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: b */
        public final void mo4862b(int i, AbstractC3859ct abstractC3859ct) {
            mo4876a(1, 3);
            mo4860c(2, i);
            mo4874a(3, abstractC3859ct);
            mo4876a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: b */
        public final void mo4861b(byte[] bArr, int i, int i2) {
            mo4864b(i2);
            m4857c(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: c */
        public final void mo4860c(int i, int i2) {
            mo4876a(i, 0);
            mo4864b(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: c */
        public final void mo4859c(int i, long j) {
            mo4876a(i, 1);
            mo4858c(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: c */
        public final void mo4858c(long j) {
            try {
                byte[] bArr = this.f18552b;
                int i = this.f18555e;
                this.f18555e = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f18552b;
                int i2 = this.f18555e;
                this.f18555e = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f18552b;
                int i3 = this.f18555e;
                this.f18555e = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f18552b;
                int i4 = this.f18555e;
                this.f18555e = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f18552b;
                int i5 = this.f18555e;
                this.f18555e = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f18552b;
                int i6 = this.f18555e;
                this.f18555e = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f18552b;
                int i7 = this.f18555e;
                this.f18555e = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f18552b;
                int i8 = this.f18555e;
                this.f18555e = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18555e), Integer.valueOf(this.f18554d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: d */
        public final void mo4856d(int i) {
            try {
                byte[] bArr = this.f18552b;
                int i2 = this.f18555e;
                this.f18555e = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f18552b;
                int i3 = this.f18555e;
                this.f18555e = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f18552b;
                int i4 = this.f18555e;
                this.f18555e = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f18552b;
                int i5 = this.f18555e;
                this.f18555e = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18555e), Integer.valueOf(this.f18554d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzes
        /* renamed from: e */
        public final void mo4855e(int i, int i2) {
            mo4876a(i, 5);
            mo4856d(i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzes$zza.class */
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzes.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzes() {
    }

    /* renamed from: a */
    public static int m4935a(int i, C3920er c3920er) {
        int m4903e = m4903e(i);
        int m5592b = c3920er.m5592b();
        return m4903e + m5592b + m4896g(m5592b);
    }

    /* renamed from: a */
    public static int m4934a(C3920er c3920er) {
        int m5592b = c3920er.m5592b();
        return m5592b + m4896g(m5592b);
    }

    /* renamed from: a */
    public static int m4933a(AbstractC3943fn abstractC3943fn, AbstractC3960gd abstractC3960gd) {
        AbstractC3850ck abstractC3850ck = (AbstractC3850ck) abstractC3943fn;
        int mo5644aj = abstractC3850ck.mo5644aj();
        int i = mo5644aj;
        if (mo5644aj == -1) {
            i = abstractC3960gd.mo5466b(abstractC3850ck);
            abstractC3850ck.mo5638c(i);
        }
        return i + m4896g(i);
    }

    /* renamed from: a */
    public static zzes m4930a(byte[] bArr) {
        return new C4152a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m4928b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m4927b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m4926b(int i, double d) {
        return m4903e(i) + 8;
    }

    /* renamed from: b */
    public static int m4925b(int i, float f) {
        return m4903e(i) + 4;
    }

    /* renamed from: b */
    public static int m4923b(int i, C3920er c3920er) {
        return (m4903e(1) << 1) + m4895g(2, i) + m4935a(3, c3920er);
    }

    /* renamed from: b */
    public static int m4922b(int i, AbstractC3943fn abstractC3943fn) {
        return (m4903e(1) << 1) + m4895g(2, i) + m4903e(3) + m4916b(abstractC3943fn);
    }

    /* renamed from: b */
    public static int m4921b(int i, AbstractC3943fn abstractC3943fn, AbstractC3960gd abstractC3960gd) {
        return m4903e(i) + m4933a(abstractC3943fn, abstractC3960gd);
    }

    /* renamed from: b */
    public static int m4920b(int i, String str) {
        return m4903e(i) + m4915b(str);
    }

    /* renamed from: b */
    public static int m4919b(int i, boolean z) {
        return m4903e(i) + 1;
    }

    /* renamed from: b */
    public static int m4917b(AbstractC3859ct abstractC3859ct) {
        int mo5753a = abstractC3859ct.mo5753a();
        return mo5753a + m4896g(mo5753a);
    }

    /* renamed from: b */
    public static int m4916b(AbstractC3943fn abstractC3943fn) {
        int mo5541an = abstractC3943fn.mo5541an();
        return mo5541an + m4896g(mo5541an);
    }

    /* renamed from: b */
    public static int m4915b(String str) {
        int length;
        try {
            length = C3991hd.m5243a(str);
        } catch (C3994hg e) {
            length = str.getBytes(C3908ef.f18107a).length;
        }
        return length + m4896g(length);
    }

    /* renamed from: b */
    public static int m4914b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m4913b(byte[] bArr) {
        int length = bArr.length;
        return length + m4896g(length);
    }

    /* renamed from: c */
    public static int m4910c(int i, AbstractC3859ct abstractC3859ct) {
        int m4903e = m4903e(i);
        int mo5753a = abstractC3859ct.mo5753a();
        return m4903e + mo5753a + m4896g(mo5753a);
    }

    @Deprecated
    /* renamed from: c */
    public static int m4909c(int i, AbstractC3943fn abstractC3943fn, AbstractC3960gd abstractC3960gd) {
        int m4903e = m4903e(i);
        AbstractC3850ck abstractC3850ck = (AbstractC3850ck) abstractC3943fn;
        int mo5644aj = abstractC3850ck.mo5644aj();
        int i2 = mo5644aj;
        if (mo5644aj == -1) {
            i2 = abstractC3960gd.mo5466b(abstractC3850ck);
            abstractC3850ck.mo5638c(i2);
        }
        return i2 + (m4903e << 1);
    }

    @Deprecated
    /* renamed from: c */
    public static int m4908c(AbstractC3943fn abstractC3943fn) {
        return abstractC3943fn.mo5541an();
    }

    /* renamed from: d */
    public static int m4906d(int i, long j) {
        return m4903e(i) + m4901e(j);
    }

    /* renamed from: d */
    public static int m4905d(int i, AbstractC3859ct abstractC3859ct) {
        return (m4903e(1) << 1) + m4895g(2, i) + m4910c(3, abstractC3859ct);
    }

    /* renamed from: d */
    public static int m4904d(long j) {
        return m4901e(j);
    }

    /* renamed from: e */
    public static int m4903e(int i) {
        return m4896g(i << 3);
    }

    /* renamed from: e */
    public static int m4902e(int i, long j) {
        return m4903e(i) + m4901e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: e */
    public static int m4901e(long j) {
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
    public static int m4900f(int i) {
        return i >= 0 ? m4896g(i) : 10;
    }

    /* renamed from: f */
    public static int m4899f(int i, int i2) {
        return m4903e(i) + m4900f(i2);
    }

    /* renamed from: f */
    public static int m4898f(int i, long j) {
        return m4903e(i) + m4901e(m4886i(j));
    }

    /* renamed from: f */
    public static int m4897f(long j) {
        return m4901e(m4886i(j));
    }

    /* renamed from: g */
    public static int m4896g(int i) {
        return (i & (-128)) == 0 ? 1 : (i & (-16384)) == 0 ? 2 : ((-2097152) & i) == 0 ? 3 : ((-268435456) & i) == 0 ? 4 : 5;
    }

    /* renamed from: g */
    public static int m4895g(int i, int i2) {
        return m4903e(i) + m4896g(i2);
    }

    /* renamed from: g */
    public static int m4894g(int i, long j) {
        return m4903e(i) + 8;
    }

    /* renamed from: g */
    public static int m4893g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m4892h(int i) {
        return m4896g(m4880m(i));
    }

    /* renamed from: h */
    public static int m4891h(int i, int i2) {
        return m4903e(i) + m4896g(m4880m(i2));
    }

    /* renamed from: h */
    public static int m4890h(int i, long j) {
        return m4903e(i) + 8;
    }

    /* renamed from: h */
    public static int m4889h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m4888i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m4887i(int i, int i2) {
        return m4903e(i) + 4;
    }

    /* renamed from: i */
    private static long m4886i(long j) {
        return (j << 1) ^ (j >> 63);
    }

    /* renamed from: j */
    public static int m4885j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m4884j(int i, int i2) {
        return m4903e(i) + 4;
    }

    /* renamed from: k */
    public static int m4883k(int i) {
        return m4900f(i);
    }

    /* renamed from: k */
    public static int m4882k(int i, int i2) {
        return m4903e(i) + m4900f(i2);
    }

    @Deprecated
    /* renamed from: l */
    public static int m4881l(int i) {
        return m4896g(i);
    }

    /* renamed from: m */
    private static int m4880m(int i) {
        return (i << 1) ^ (i >> 31);
    }

    /* renamed from: a */
    public abstract int mo4879a();

    /* renamed from: a */
    public abstract void mo4878a(byte b);

    /* renamed from: a */
    public final void m4939a(double d) {
        mo4858c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m4938a(float f) {
        mo4856d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo4877a(int i);

    /* renamed from: a */
    public final void m4937a(int i, double d) {
        mo4859c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m4936a(int i, float f) {
        mo4855e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo4876a(int i, int i2);

    /* renamed from: a */
    public abstract void mo4875a(int i, long j);

    /* renamed from: a */
    public abstract void mo4874a(int i, AbstractC3859ct abstractC3859ct);

    /* renamed from: a */
    public abstract void mo4873a(int i, AbstractC3943fn abstractC3943fn);

    /* renamed from: a */
    public abstract void mo4872a(int i, AbstractC3943fn abstractC3943fn, AbstractC3960gd abstractC3960gd);

    /* renamed from: a */
    public abstract void mo4871a(int i, String str);

    /* renamed from: a */
    public abstract void mo4870a(int i, boolean z);

    /* renamed from: a */
    public abstract void mo4869a(long j);

    /* renamed from: a */
    public abstract void mo4868a(AbstractC3859ct abstractC3859ct);

    /* renamed from: a */
    public abstract void mo4867a(AbstractC3943fn abstractC3943fn);

    /* renamed from: a */
    public abstract void mo4866a(String str);

    /* renamed from: a */
    final void m4932a(String str, C3994hg c3994hg) {
        f18549b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c3994hg);
        byte[] bytes = str.getBytes(C3908ef.f18107a);
        try {
            mo4864b(bytes.length);
            mo4865a(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    /* renamed from: a */
    public final void m4931a(boolean z) {
        mo4878a((byte) (z ? 1 : 0));
    }

    /* renamed from: b */
    public final void m4929b() {
        if (mo4879a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: b */
    public abstract void mo4864b(int i);

    /* renamed from: b */
    public abstract void mo4863b(int i, int i2);

    /* renamed from: b */
    public final void m4924b(int i, long j) {
        mo4875a(i, m4886i(j));
    }

    /* renamed from: b */
    public abstract void mo4862b(int i, AbstractC3859ct abstractC3859ct);

    /* renamed from: b */
    public final void m4918b(long j) {
        mo4869a(m4886i(j));
    }

    /* renamed from: b */
    public abstract void mo4861b(byte[] bArr, int i, int i2);

    /* renamed from: c */
    public final void m4911c(int i) {
        mo4864b(m4880m(i));
    }

    /* renamed from: c */
    public abstract void mo4860c(int i, int i2);

    /* renamed from: c */
    public abstract void mo4859c(int i, long j);

    /* renamed from: c */
    public abstract void mo4858c(long j);

    /* renamed from: d */
    public abstract void mo4856d(int i);

    /* renamed from: d */
    public final void m4907d(int i, int i2) {
        mo4860c(i, m4880m(i2));
    }

    /* renamed from: e */
    public abstract void mo4855e(int i, int i2);
}

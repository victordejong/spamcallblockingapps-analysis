package p081h.p203i.p401g;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p081h.p203i.p401g.C10289j1;
/* renamed from: h.i.g.i */
/* loaded from: classes2-dex2jar.jar:h/i/g/i.class */
public abstract class AbstractC10274i extends AbstractC10245f {

    /* renamed from: a */
    public static final Logger f23118a = Logger.getLogger(AbstractC10274i.class.getName());

    /* renamed from: b */
    public static final boolean f23119b = C10279i1.m12778d();

    /* renamed from: h.i.g.i$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/i$b.class */
    public static class C10276b extends AbstractC10274i {

        /* renamed from: c */
        public final byte[] f23120c;

        /* renamed from: d */
        public final int f23121d;

        /* renamed from: e */
        public int f23122e;

        public C10276b(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f23120c = bArr;
                    this.f23122e = i;
                    this.f23121d = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12821a(byte b) throws IOException {
            try {
                byte[] bArr = this.f23120c;
                int i = this.f23122e;
                this.f23122e = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new C10277c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23122e), Integer.valueOf(this.f23121d), 1), e);
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12820a(int i, long j) throws IOException {
            mo12801d(i, 1);
            mo12816a(j);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12819a(int i, AbstractC10253g gVar) throws IOException {
            mo12801d(i, 2);
            mo12815a(gVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12818a(int i, String str) throws IOException {
            mo12801d(i, 2);
            mo12814a(str);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12817a(int i, boolean z) throws IOException {
            mo12801d(i, 0);
            mo12821a(z ? (byte) 1 : (byte) 0);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12816a(long j) throws IOException {
            try {
                byte[] bArr = this.f23120c;
                int i = this.f23122e;
                this.f23122e = i + 1;
                bArr[i] = (byte) (((int) j) & 255);
                byte[] bArr2 = this.f23120c;
                int i2 = this.f23122e;
                this.f23122e = i2 + 1;
                bArr2[i2] = (byte) (((int) (j >> 8)) & 255);
                byte[] bArr3 = this.f23120c;
                int i3 = this.f23122e;
                this.f23122e = i3 + 1;
                bArr3[i3] = (byte) (((int) (j >> 16)) & 255);
                byte[] bArr4 = this.f23120c;
                int i4 = this.f23122e;
                this.f23122e = i4 + 1;
                bArr4[i4] = (byte) (((int) (j >> 24)) & 255);
                byte[] bArr5 = this.f23120c;
                int i5 = this.f23122e;
                this.f23122e = i5 + 1;
                bArr5[i5] = (byte) (((int) (j >> 32)) & 255);
                byte[] bArr6 = this.f23120c;
                int i6 = this.f23122e;
                this.f23122e = i6 + 1;
                bArr6[i6] = (byte) (((int) (j >> 40)) & 255);
                byte[] bArr7 = this.f23120c;
                int i7 = this.f23122e;
                this.f23122e = i7 + 1;
                bArr7[i7] = (byte) (((int) (j >> 48)) & 255);
                byte[] bArr8 = this.f23120c;
                int i8 = this.f23122e;
                this.f23122e = i8 + 1;
                bArr8[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new C10277c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23122e), Integer.valueOf(this.f23121d), 1), e);
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12815a(AbstractC10253g gVar) throws IOException {
            mo12798g(gVar.size());
            gVar.mo12956a(this);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: a */
        public final void mo12814a(String str) throws IOException {
            int i = this.f23122e;
            try {
                int p = AbstractC10274i.m12823p(str.length() * 3);
                int p2 = AbstractC10274i.m12823p(str.length());
                if (p2 == p) {
                    this.f23122e = i + p2;
                    int a = C10289j1.m12757a(str, this.f23120c, this.f23122e, mo12812b());
                    this.f23122e = i;
                    mo12798g((a - i) - p2);
                    this.f23122e = a;
                } else {
                    mo12798g(C10289j1.m12759a(str));
                    this.f23122e = C10289j1.m12757a(str, this.f23120c, this.f23122e, mo12812b());
                }
            } catch (C10289j1.C10293d e) {
                this.f23122e = i;
                m12874a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new C10277c(e2);
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10245f
        /* renamed from: a */
        public final void mo12813a(byte[] bArr, int i, int i2) throws IOException {
            m12800d(bArr, i, i2);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: b */
        public final int mo12812b() {
            return this.f23121d - this.f23122e;
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: b */
        public final void mo12811b(int i) throws IOException {
            try {
                byte[] bArr = this.f23120c;
                int i2 = this.f23122e;
                this.f23122e = i2 + 1;
                bArr[i2] = (byte) (i & 255);
                byte[] bArr2 = this.f23120c;
                int i3 = this.f23122e;
                this.f23122e = i3 + 1;
                bArr2[i3] = (byte) ((i >> 8) & 255);
                byte[] bArr3 = this.f23120c;
                int i4 = this.f23122e;
                this.f23122e = i4 + 1;
                bArr3[i4] = (byte) ((i >> 16) & 255);
                byte[] bArr4 = this.f23120c;
                int i5 = this.f23122e;
                this.f23122e = i5 + 1;
                bArr4[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new C10277c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23122e), Integer.valueOf(this.f23121d), 1), e);
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: b */
        public final void mo12810b(int i, int i2) throws IOException {
            mo12801d(i, 5);
            mo12811b(i2);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: b */
        public final void mo12809b(int i, AbstractC10253g gVar) throws IOException {
            mo12801d(1, 3);
            m12797i(2, i);
            mo12819a(3, gVar);
            mo12801d(1, 4);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: b */
        public final void mo12808b(int i, AbstractC10437l0 l0Var) throws IOException {
            mo12801d(i, 2);
            mo12807b(l0Var);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: b */
        public final void mo12807b(AbstractC10437l0 l0Var) throws IOException {
            mo12798g(l0Var.mo11678h());
            l0Var.mo11692a(this);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: b */
        public final void mo12806b(byte[] bArr, int i, int i2) throws IOException {
            mo12798g(i2);
            m12800d(bArr, i, i2);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: c */
        public final void mo12805c(int i) throws IOException {
            if (i >= 0) {
                mo12798g(i);
            } else {
                mo12799e(i);
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: c */
        public final void mo12804c(int i, int i2) throws IOException {
            mo12801d(i, 0);
            mo12805c(i2);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: c */
        public final void mo12803c(int i, long j) throws IOException {
            mo12801d(i, 0);
            mo12799e(j);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: c */
        public final void mo12802c(int i, AbstractC10437l0 l0Var) throws IOException {
            mo12801d(1, 3);
            m12797i(2, i);
            mo12808b(3, l0Var);
            mo12801d(1, 4);
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: d */
        public final void mo12801d(int i, int i2) throws IOException {
            mo12798g(C10406k1.m11926a(i, i2));
        }

        /* renamed from: d */
        public final void m12800d(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f23120c, this.f23122e, i2);
                this.f23122e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new C10277c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23122e), Integer.valueOf(this.f23121d), Integer.valueOf(i2)), e);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo12799e(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.AbstractC10274i.C10276b.mo12799e(long):void");
        }

        @Override // p081h.p203i.p401g.AbstractC10274i
        /* renamed from: g */
        public final void mo12798g(int i) throws IOException {
            int i2 = i;
            if (AbstractC10274i.f23119b) {
                i2 = i;
                if (!C10242e.m13029b()) {
                    i2 = i;
                    if (mo12812b() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f23120c;
                            int i3 = this.f23122e;
                            this.f23122e = i3 + 1;
                            C10279i1.m12788a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f23120c;
                        int i4 = this.f23122e;
                        this.f23122e = i4 + 1;
                        C10279i1.m12788a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f23120c;
                            int i6 = this.f23122e;
                            this.f23122e = i6 + 1;
                            C10279i1.m12788a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f23120c;
                        int i7 = this.f23122e;
                        this.f23122e = i7 + 1;
                        C10279i1.m12788a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f23120c;
                            int i9 = this.f23122e;
                            this.f23122e = i9 + 1;
                            C10279i1.m12788a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f23120c;
                        int i10 = this.f23122e;
                        this.f23122e = i10 + 1;
                        C10279i1.m12788a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f23120c;
                            int i12 = this.f23122e;
                            this.f23122e = i12 + 1;
                            C10279i1.m12788a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f23120c;
                        int i13 = this.f23122e;
                        this.f23122e = i13 + 1;
                        C10279i1.m12788a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f23120c;
                        int i14 = this.f23122e;
                        this.f23122e = i14 + 1;
                        C10279i1.m12788a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f23120c;
                    int i15 = this.f23122e;
                    this.f23122e = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C10277c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23122e), Integer.valueOf(this.f23121d), 1), e);
                }
            }
            byte[] bArr11 = this.f23120c;
            int i16 = this.f23122e;
            this.f23122e = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        /* renamed from: i */
        public final void m12797i(int i, int i2) throws IOException {
            mo12801d(i, 0);
            mo12798g(i2);
        }
    }

    /* renamed from: h.i.g.i$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/i$c.class */
    public static class C10277c extends IOException {
        public C10277c(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }

        public C10277c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    public AbstractC10274i() {
    }

    /* renamed from: a */
    public static int m12878a(int i, C10236c0 c0Var) {
        return (m12824o(1) * 2) + m12835h(2, i) + m12867b(3, c0Var);
    }

    /* renamed from: a */
    public static int m12876a(C10236c0 c0Var) {
        return m12829k(c0Var.m13049a());
    }

    /* renamed from: b */
    public static int m12871b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m12870b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m12869b(int i, double d) {
        return m12824o(i) + m12871b(d);
    }

    /* renamed from: b */
    public static int m12867b(int i, C10236c0 c0Var) {
        return m12824o(i) + m12876a(c0Var);
    }

    /* renamed from: b */
    public static int m12866b(int i, String str) {
        return m12824o(i) + m12862b(str);
    }

    /* renamed from: b */
    public static int m12865b(int i, boolean z) {
        return m12824o(i) + m12861b(z);
    }

    /* renamed from: b */
    public static int m12863b(AbstractC10253g gVar) {
        return m12829k(gVar.size());
    }

    /* renamed from: b */
    public static int m12862b(String str) {
        int i;
        try {
            i = C10289j1.m12759a(str);
        } catch (C10289j1.C10293d e) {
            i = str.getBytes(C10516z.f23903a).length;
        }
        return m12829k(i);
    }

    /* renamed from: b */
    public static int m12861b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m12860b(byte[] bArr) {
        return m12829k(bArr.length);
    }

    /* renamed from: c */
    public static int m12858c(int i, AbstractC10253g gVar) {
        return m12824o(i) + m12863b(gVar);
    }

    @Deprecated
    /* renamed from: c */
    public static int m12856c(AbstractC10437l0 l0Var) {
        return l0Var.mo11678h();
    }

    /* renamed from: c */
    public static AbstractC10274i m12855c(byte[] bArr) {
        return m12854c(bArr, 0, bArr.length);
    }

    /* renamed from: c */
    public static AbstractC10274i m12854c(byte[] bArr, int i, int i2) {
        return new C10276b(bArr, i, i2);
    }

    /* renamed from: d */
    public static int m12852d(int i, long j) {
        return m12824o(i) + m12839f(j);
    }

    /* renamed from: d */
    public static int m12851d(int i, AbstractC10253g gVar) {
        return (m12824o(1) * 2) + m12835h(2, i) + m12858c(3, gVar);
    }

    @Deprecated
    /* renamed from: d */
    public static int m12850d(int i, AbstractC10437l0 l0Var) {
        return (m12824o(i) * 2) + m12856c(l0Var);
    }

    /* renamed from: d */
    public static int m12848d(AbstractC10437l0 l0Var) {
        return m12829k(l0Var.mo11678h());
    }

    /* renamed from: e */
    public static int m12846e(int i, int i2) {
        return m12824o(i) + m12836h(i2);
    }

    /* renamed from: e */
    public static int m12845e(int i, long j) {
        return m12824o(i) + m12837g(j);
    }

    /* renamed from: e */
    public static int m12844e(int i, AbstractC10437l0 l0Var) {
        return (m12824o(1) * 2) + m12835h(2, i) + m12840f(3, l0Var);
    }

    /* renamed from: f */
    public static int m12842f(int i, int i2) {
        return m12824o(i) + m12833i(i2);
    }

    /* renamed from: f */
    public static int m12841f(int i, long j) {
        return m12824o(i) + m12830j(j);
    }

    /* renamed from: f */
    public static int m12840f(int i, AbstractC10437l0 l0Var) {
        return m12824o(i) + m12848d(l0Var);
    }

    /* renamed from: f */
    public static int m12839f(long j) {
        return 8;
    }

    /* renamed from: g */
    public static int m12838g(int i, int i2) {
        return m12824o(i) + m12831j(i2);
    }

    /* renamed from: g */
    public static int m12837g(long j) {
        return m12830j(j);
    }

    /* renamed from: h */
    public static int m12836h(int i) {
        return m12831j(i);
    }

    /* renamed from: h */
    public static int m12835h(int i, int i2) {
        return m12824o(i) + m12823p(i2);
    }

    /* renamed from: h */
    public static int m12834h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m12833i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m12832i(long j) {
        return m12830j(m12828k(j));
    }

    /* renamed from: j */
    public static int m12831j(int i) {
        if (i >= 0) {
            return m12823p(i);
        }
        return 10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m12830j(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.AbstractC10274i.m12830j(long):int");
    }

    /* renamed from: k */
    public static int m12829k(int i) {
        return m12823p(i) + i;
    }

    /* renamed from: k */
    public static long m12828k(long j) {
        return (j >> 63) ^ (j << 1);
    }

    @Deprecated
    /* renamed from: l */
    public static int m12827l(int i) {
        return m12823p(i);
    }

    /* renamed from: m */
    public static int m12826m(int i) {
        return 4;
    }

    /* renamed from: n */
    public static int m12825n(int i) {
        return m12823p(m12822q(i));
    }

    /* renamed from: o */
    public static int m12824o(int i) {
        return m12823p(C10406k1.m11926a(i, 0));
    }

    /* renamed from: p */
    public static int m12823p(int i) {
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

    /* renamed from: q */
    public static int m12822q(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public final void m12884a() {
        if (mo12812b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: a */
    public abstract void mo12821a(byte b) throws IOException;

    /* renamed from: a */
    public final void m12883a(double d) throws IOException {
        mo12816a(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m12882a(float f) throws IOException {
        mo12811b(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public final void m12881a(int i) throws IOException {
        mo12805c(i);
    }

    /* renamed from: a */
    public final void m12880a(int i, double d) throws IOException {
        mo12820a(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m12879a(int i, int i2) throws IOException {
        mo12804c(i, i2);
    }

    /* renamed from: a */
    public abstract void mo12820a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo12819a(int i, AbstractC10253g gVar) throws IOException;

    @Deprecated
    /* renamed from: a */
    public final void m12877a(int i, AbstractC10437l0 l0Var) throws IOException {
        mo12801d(i, 3);
        m12875a(l0Var);
        mo12801d(i, 4);
    }

    /* renamed from: a */
    public abstract void mo12818a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo12817a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo12816a(long j) throws IOException;

    /* renamed from: a */
    public abstract void mo12815a(AbstractC10253g gVar) throws IOException;

    @Deprecated
    /* renamed from: a */
    public final void m12875a(AbstractC10437l0 l0Var) throws IOException {
        l0Var.mo11692a(this);
    }

    /* renamed from: a */
    public abstract void mo12814a(String str) throws IOException;

    /* renamed from: a */
    public final void m12874a(String str, C10289j1.C10293d dVar) throws IOException {
        f23118a.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) dVar);
        byte[] bytes = str.getBytes(C10516z.f23903a);
        try {
            mo12798g(bytes.length);
            mo12813a(bytes, 0, bytes.length);
        } catch (C10277c e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new C10277c(e2);
        }
    }

    /* renamed from: a */
    public final void m12873a(boolean z) throws IOException {
        mo12821a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: a */
    public final void m12872a(byte[] bArr) throws IOException {
        mo12806b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public abstract int mo12812b();

    /* renamed from: b */
    public abstract void mo12811b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo12810b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m12868b(int i, long j) throws IOException {
        mo12803c(i, j);
    }

    /* renamed from: b */
    public abstract void mo12809b(int i, AbstractC10253g gVar) throws IOException;

    /* renamed from: b */
    public abstract void mo12808b(int i, AbstractC10437l0 l0Var) throws IOException;

    /* renamed from: b */
    public final void m12864b(long j) throws IOException {
        mo12799e(j);
    }

    /* renamed from: b */
    public abstract void mo12807b(AbstractC10437l0 l0Var) throws IOException;

    /* renamed from: b */
    public abstract void mo12806b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo12805c(int i) throws IOException;

    /* renamed from: c */
    public abstract void mo12804c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo12803c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo12802c(int i, AbstractC10437l0 l0Var) throws IOException;

    /* renamed from: c */
    public final void m12857c(long j) throws IOException {
        mo12816a(j);
    }

    @Deprecated
    /* renamed from: d */
    public final void m12853d(int i) throws IOException {
        mo12798g(i);
    }

    /* renamed from: d */
    public abstract void mo12801d(int i, int i2) throws IOException;

    /* renamed from: d */
    public final void m12849d(long j) throws IOException {
        mo12799e(m12828k(j));
    }

    /* renamed from: e */
    public final void m12847e(int i) throws IOException {
        mo12811b(i);
    }

    /* renamed from: e */
    public abstract void mo12799e(long j) throws IOException;

    /* renamed from: f */
    public final void m12843f(int i) throws IOException {
        mo12798g(m12822q(i));
    }

    /* renamed from: g */
    public abstract void mo12798g(int i) throws IOException;
}

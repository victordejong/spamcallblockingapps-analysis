package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: h.i.a.e.j.l.x8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/x8.class */
public abstract class AbstractC8447x8 extends AbstractC8167i8 {

    /* renamed from: b */
    public static final Logger f19424b = Logger.getLogger(AbstractC8447x8.class.getName());

    /* renamed from: c */
    public static final boolean f19425c = C8190k.m18442a();

    /* renamed from: a */
    public C8010a9 f19426a;

    /* renamed from: h.i.a.e.j.l.x8$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/x8$a.class */
    public static final class C8448a extends AbstractC8447x8 {

        /* renamed from: d */
        public final byte[] f19427d;

        /* renamed from: e */
        public final int f19428e;

        /* renamed from: f */
        public int f19429f;

        public C8448a(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            } else if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.f19427d = bArr;
                this.f19429f = 0;
                this.f19428e = i2;
            } else {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final int mo18022a() {
            return this.f19428e - this.f19429f;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18021a(byte b) throws IOException {
            try {
                byte[] bArr = this.f19427d;
                int i = this.f19429f;
                this.f19429f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new C8449b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19429f), Integer.valueOf(this.f19428e), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18020a(int i) throws IOException {
            if (i >= 0) {
                mo18007b(i);
            } else {
                mo18012a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18019a(int i, int i2) throws IOException {
            mo18007b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18018a(int i, long j) throws IOException {
            mo18019a(i, 0);
            mo18012a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18017a(int i, AbstractC8209k8 k8Var) throws IOException {
            mo18019a(i, 2);
            mo18011a(k8Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18016a(int i, AbstractC8390ua uaVar) throws IOException {
            mo18019a(1, 3);
            mo18003c(2, i);
            mo18019a(3, 2);
            mo18010a(uaVar);
            mo18019a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18015a(int i, AbstractC8390ua uaVar, AbstractC8212kb kbVar) throws IOException {
            mo18019a(i, 2);
            AbstractC8067d8 d8Var = (AbstractC8067d8) uaVar;
            int f = d8Var.mo18355f();
            int i2 = f;
            if (f == -1) {
                i2 = kbVar.mo17972b(d8Var);
                d8Var.mo18362a(i2);
            }
            mo18007b(i2);
            kbVar.mo17976a((AbstractC8212kb) uaVar, (AbstractC8468z) this.f19426a);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18014a(int i, String str) throws IOException {
            mo18019a(i, 2);
            mo18009a(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18013a(int i, boolean z) throws IOException {
            mo18019a(i, 0);
            mo18021a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo18012a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8.C8448a.mo18012a(long):void");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18011a(AbstractC8209k8 k8Var) throws IOException {
            mo18007b(k8Var.size());
            k8Var.mo18145a(this);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18010a(AbstractC8390ua uaVar) throws IOException {
            mo18007b(uaVar.mo18132d());
            uaVar.mo18134a(this);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: a */
        public final void mo18009a(String str) throws IOException {
            int i = this.f19429f;
            try {
                int g = AbstractC8447x8.m18039g(str.length() * 3);
                int g2 = AbstractC8447x8.m18039g(str.length());
                if (g2 == g) {
                    this.f19429f = i + g2;
                    int a = C8252n.m18268a(str, this.f19427d, this.f19429f, mo18022a());
                    this.f19429f = i;
                    mo18007b((a - i) - g2);
                    this.f19429f = a;
                    return;
                }
                mo18007b(C8252n.m18269a(str));
                this.f19429f = C8252n.m18268a(str, this.f19427d, this.f19429f, mo18022a());
            } catch (C8289p e) {
                this.f19429f = i;
                m18073a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new C8449b(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8167i8
        /* renamed from: a */
        public final void mo18008a(byte[] bArr, int i, int i2) throws IOException {
            m18000c(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: b */
        public final void mo18007b(int i) throws IOException {
            int i2 = i;
            if (AbstractC8447x8.f19425c) {
                i2 = i;
                if (!C8126g8.m18498a()) {
                    i2 = i;
                    if (mo18022a() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f19427d;
                            int i3 = this.f19429f;
                            this.f19429f = i3 + 1;
                            C8190k.m18430a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f19427d;
                        int i4 = this.f19429f;
                        this.f19429f = i4 + 1;
                        C8190k.m18430a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f19427d;
                            int i6 = this.f19429f;
                            this.f19429f = i6 + 1;
                            C8190k.m18430a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f19427d;
                        int i7 = this.f19429f;
                        this.f19429f = i7 + 1;
                        C8190k.m18430a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f19427d;
                            int i9 = this.f19429f;
                            this.f19429f = i9 + 1;
                            C8190k.m18430a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f19427d;
                        int i10 = this.f19429f;
                        this.f19429f = i10 + 1;
                        C8190k.m18430a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f19427d;
                            int i12 = this.f19429f;
                            this.f19429f = i12 + 1;
                            C8190k.m18430a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f19427d;
                        int i13 = this.f19429f;
                        this.f19429f = i13 + 1;
                        C8190k.m18430a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f19427d;
                        int i14 = this.f19429f;
                        this.f19429f = i14 + 1;
                        C8190k.m18430a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f19427d;
                    int i15 = this.f19429f;
                    this.f19429f = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C8449b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19429f), Integer.valueOf(this.f19428e), 1), e);
                }
            }
            byte[] bArr11 = this.f19427d;
            int i16 = this.f19429f;
            this.f19429f = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: b */
        public final void mo18006b(int i, int i2) throws IOException {
            mo18019a(i, 0);
            mo18020a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: b */
        public final void mo18005b(int i, AbstractC8209k8 k8Var) throws IOException {
            mo18019a(1, 3);
            mo18003c(2, i);
            mo18017a(3, k8Var);
            mo18019a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: b */
        public final void mo18004b(byte[] bArr, int i, int i2) throws IOException {
            mo18007b(i2);
            m18000c(bArr, 0, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: c */
        public final void mo18003c(int i, int i2) throws IOException {
            mo18019a(i, 0);
            mo18007b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: c */
        public final void mo18002c(int i, long j) throws IOException {
            mo18019a(i, 1);
            mo18001c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: c */
        public final void mo18001c(long j) throws IOException {
            try {
                byte[] bArr = this.f19427d;
                int i = this.f19429f;
                this.f19429f = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f19427d;
                int i2 = this.f19429f;
                this.f19429f = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f19427d;
                int i3 = this.f19429f;
                this.f19429f = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f19427d;
                int i4 = this.f19429f;
                this.f19429f = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f19427d;
                int i5 = this.f19429f;
                this.f19429f = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f19427d;
                int i6 = this.f19429f;
                this.f19429f = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f19427d;
                int i7 = this.f19429f;
                this.f19429f = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f19427d;
                int i8 = this.f19429f;
                this.f19429f = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new C8449b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19429f), Integer.valueOf(this.f19428e), 1), e);
            }
        }

        /* renamed from: c */
        public final void m18000c(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f19427d, this.f19429f, i2);
                this.f19429f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new C8449b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19429f), Integer.valueOf(this.f19428e), Integer.valueOf(i2)), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: d */
        public final void mo17999d(int i) throws IOException {
            try {
                byte[] bArr = this.f19427d;
                int i2 = this.f19429f;
                this.f19429f = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f19427d;
                int i3 = this.f19429f;
                this.f19429f = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f19427d;
                int i4 = this.f19429f;
                this.f19429f = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f19427d;
                int i5 = this.f19429f;
                this.f19429f = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new C8449b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19429f), Integer.valueOf(this.f19428e), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8
        /* renamed from: e */
        public final void mo17998e(int i, int i2) throws IOException {
            mo18019a(i, 5);
            mo17999d(i2);
        }
    }

    /* renamed from: h.i.a.e.j.l.x8$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/x8$b.class */
    public static final class C8449b extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8449b(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8.C8449b.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public C8449b(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    public AbstractC8447x8() {
    }

    /* renamed from: a */
    public static int m18076a(int i, C8069da daVar) {
        int g = m18039g(i << 3);
        int b = daVar.m18610b();
        return g + m18039g(b) + b;
    }

    /* renamed from: a */
    public static int m18075a(C8069da daVar) {
        int b = daVar.m18610b();
        return m18039g(b) + b;
    }

    /* renamed from: a */
    public static int m18074a(AbstractC8390ua uaVar, AbstractC8212kb kbVar) {
        AbstractC8067d8 d8Var = (AbstractC8067d8) uaVar;
        int f = d8Var.mo18355f();
        int i = f;
        if (f == -1) {
            i = kbVar.mo17972b(d8Var);
            d8Var.mo18362a(i);
        }
        return m18039g(i) + i;
    }

    /* renamed from: a */
    public static AbstractC8447x8 m18071a(byte[] bArr) {
        return new C8448a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m18069b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m18068b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m18067b(int i, double d) {
        return m18039g(i << 3) + 8;
    }

    /* renamed from: b */
    public static int m18066b(int i, float f) {
        return m18039g(i << 3) + 4;
    }

    /* renamed from: b */
    public static int m18064b(int i, AbstractC8390ua uaVar, AbstractC8212kb kbVar) {
        return m18039g(i << 3) + m18074a(uaVar, kbVar);
    }

    /* renamed from: b */
    public static int m18063b(int i, String str) {
        return m18039g(i << 3) + m18058b(str);
    }

    /* renamed from: b */
    public static int m18062b(int i, boolean z) {
        return m18039g(i << 3) + 1;
    }

    /* renamed from: b */
    public static int m18060b(AbstractC8209k8 k8Var) {
        int size = k8Var.size();
        return m18039g(size) + size;
    }

    /* renamed from: b */
    public static int m18059b(AbstractC8390ua uaVar) {
        int d = uaVar.mo18132d();
        return m18039g(d) + d;
    }

    /* renamed from: b */
    public static int m18058b(String str) {
        int i;
        try {
            i = C8252n.m18269a(str);
        } catch (C8289p e) {
            i = str.getBytes(C8302p9.f19250a).length;
        }
        return m18039g(i) + i;
    }

    /* renamed from: b */
    public static int m18057b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m18056b(byte[] bArr) {
        int length = bArr.length;
        return m18039g(length) + length;
    }

    /* renamed from: c */
    public static int m18053c(int i, AbstractC8209k8 k8Var) {
        int g = m18039g(i << 3);
        int size = k8Var.size();
        return g + m18039g(size) + size;
    }

    @Deprecated
    /* renamed from: c */
    public static int m18052c(int i, AbstractC8390ua uaVar, AbstractC8212kb kbVar) {
        int g = m18039g(i << 3);
        AbstractC8067d8 d8Var = (AbstractC8067d8) uaVar;
        int f = d8Var.mo18355f();
        int i2 = f;
        if (f == -1) {
            i2 = kbVar.mo17972b(d8Var);
            d8Var.mo18362a(i2);
        }
        return (g << 1) + i2;
    }

    @Deprecated
    /* renamed from: c */
    public static int m18051c(AbstractC8390ua uaVar) {
        return uaVar.mo18132d();
    }

    /* renamed from: d */
    public static int m18049d(int i, long j) {
        return m18039g(i << 3) + m18047d(j);
    }

    /* renamed from: d */
    public static int m18048d(int i, AbstractC8209k8 k8Var) {
        return (m18039g(8) << 1) + m18038g(2, i) + m18053c(3, k8Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m18047d(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8447x8.m18047d(long):int");
    }

    /* renamed from: e */
    public static int m18046e(int i) {
        return m18039g(i << 3);
    }

    /* renamed from: e */
    public static int m18045e(int i, long j) {
        return m18039g(i << 3) + m18047d(j);
    }

    /* renamed from: e */
    public static int m18044e(long j) {
        return m18047d(m18032h(j));
    }

    /* renamed from: f */
    public static int m18043f(int i) {
        if (i >= 0) {
            return m18039g(i);
        }
        return 10;
    }

    /* renamed from: f */
    public static int m18042f(int i, int i2) {
        return m18039g(i << 3) + m18043f(i2);
    }

    /* renamed from: f */
    public static int m18041f(int i, long j) {
        return m18039g(i << 3) + m18047d(m18032h(j));
    }

    /* renamed from: f */
    public static int m18040f(long j) {
        return 8;
    }

    /* renamed from: g */
    public static int m18039g(int i) {
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

    /* renamed from: g */
    public static int m18038g(int i, int i2) {
        return m18039g(i << 3) + m18039g(i2);
    }

    /* renamed from: g */
    public static int m18037g(int i, long j) {
        return m18039g(i << 3) + 8;
    }

    /* renamed from: g */
    public static int m18036g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m18035h(int i) {
        return m18039g(m18023m(i));
    }

    /* renamed from: h */
    public static int m18034h(int i, int i2) {
        return m18039g(i << 3) + m18039g(m18023m(i2));
    }

    /* renamed from: h */
    public static int m18033h(int i, long j) {
        return m18039g(i << 3) + 8;
    }

    /* renamed from: h */
    public static long m18032h(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: i */
    public static int m18031i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m18030i(int i, int i2) {
        return m18039g(i << 3) + 4;
    }

    /* renamed from: i */
    public static int m18029i(long j) {
        return m18047d(j);
    }

    /* renamed from: j */
    public static int m18028j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m18027j(int i, int i2) {
        return m18039g(i << 3) + 4;
    }

    /* renamed from: k */
    public static int m18026k(int i) {
        return m18043f(i);
    }

    /* renamed from: k */
    public static int m18025k(int i, int i2) {
        return m18039g(i << 3) + m18043f(i2);
    }

    /* renamed from: l */
    public static int m18024l(int i) {
        return m18039g(i) + i;
    }

    /* renamed from: m */
    public static int m18023m(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public abstract int mo18022a();

    /* renamed from: a */
    public abstract void mo18021a(byte b) throws IOException;

    /* renamed from: a */
    public final void m18080a(double d) throws IOException {
        mo18001c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m18079a(float f) throws IOException {
        mo17999d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo18020a(int i) throws IOException;

    /* renamed from: a */
    public final void m18078a(int i, double d) throws IOException {
        mo18002c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m18077a(int i, float f) throws IOException {
        mo17998e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo18019a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo18018a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo18017a(int i, AbstractC8209k8 k8Var) throws IOException;

    /* renamed from: a */
    public abstract void mo18016a(int i, AbstractC8390ua uaVar) throws IOException;

    /* renamed from: a */
    public abstract void mo18015a(int i, AbstractC8390ua uaVar, AbstractC8212kb kbVar) throws IOException;

    /* renamed from: a */
    public abstract void mo18014a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo18013a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo18012a(long j) throws IOException;

    /* renamed from: a */
    public abstract void mo18011a(AbstractC8209k8 k8Var) throws IOException;

    /* renamed from: a */
    public abstract void mo18010a(AbstractC8390ua uaVar) throws IOException;

    /* renamed from: a */
    public abstract void mo18009a(String str) throws IOException;

    /* renamed from: a */
    public final void m18073a(String str, C8289p pVar) throws IOException {
        f19424b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) pVar);
        byte[] bytes = str.getBytes(C8302p9.f19250a);
        try {
            mo18007b(bytes.length);
            mo18008a(bytes, 0, bytes.length);
        } catch (C8449b e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new C8449b(e2);
        }
    }

    /* renamed from: a */
    public final void m18072a(boolean z) throws IOException {
        mo18021a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public final void m18070b() {
        if (mo18022a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: b */
    public abstract void mo18007b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo18006b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m18065b(int i, long j) throws IOException {
        mo18018a(i, m18032h(j));
    }

    /* renamed from: b */
    public abstract void mo18005b(int i, AbstractC8209k8 k8Var) throws IOException;

    /* renamed from: b */
    public final void m18061b(long j) throws IOException {
        mo18012a(m18032h(j));
    }

    /* renamed from: b */
    public abstract void mo18004b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m18054c(int i) throws IOException {
        mo18007b(m18023m(i));
    }

    /* renamed from: c */
    public abstract void mo18003c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo18002c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo18001c(long j) throws IOException;

    /* renamed from: d */
    public abstract void mo17999d(int i) throws IOException;

    /* renamed from: d */
    public final void m18050d(int i, int i2) throws IOException {
        mo18003c(i, m18023m(i2));
    }

    /* renamed from: e */
    public abstract void mo17998e(int i, int i2) throws IOException;
}

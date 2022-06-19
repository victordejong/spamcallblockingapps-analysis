package com.google.protobuf;

import android.support.p012v4.media.AbstractC0081a;
import com.google.android.gms.internal.ads.C1676a;
import com.google.protobuf.C1879f0;
import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import p287x6.AbstractC4890c;
import p287x6.AbstractC4925w;
import p287x6.C4879a;
import p287x6.C4884b0;
/* loaded from: classes-dex2jar.jar:com/google/protobuf/CodedOutputStream.class */
public abstract class CodedOutputStream extends AbstractC0081a {

    /* renamed from: b */
    public static final Logger f7029b = Logger.getLogger(CodedOutputStream.class.getName());

    /* renamed from: c */
    public static final boolean f7030c = C4884b0.f14957g;

    /* renamed from: a */
    public C1876e f7031a;

    /* loaded from: classes-dex2jar.jar:com/google/protobuf/CodedOutputStream$OutOfSpaceException.class */
    public static class OutOfSpaceException extends IOException {
        public OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        public OutOfSpaceException(String str, Throwable th) {
            super(C1676a.m4789h("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), th);
        }

        public OutOfSpaceException(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/CodedOutputStream$b.class */
    public static class C1858b extends CodedOutputStream {

        /* renamed from: d */
        public final byte[] f7032d;

        /* renamed from: e */
        public final int f7033e;

        /* renamed from: f */
        public int f7034f;

        public C1858b(byte[] bArr, int i, int i2) {
            super(null);
            Objects.requireNonNull(bArr, "buffer");
            int i3 = i + i2;
            if ((i | i2 | (bArr.length - i3)) >= 0) {
                this.f7032d = bArr;
                this.f7034f = i;
                this.f7033e = i3;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: A0 */
        public final void mo4422A0(int i, AbstractC1916u abstractC1916u, AbstractC4925w abstractC4925w) throws IOException {
            mo4414I0((i << 3) | 2);
            mo4414I0(((AbstractC1859a) abstractC1916u).m4394n(abstractC4925w));
            abstractC4925w.mo259b(abstractC1916u, this.f7031a);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: B0 */
        public final void mo4421B0(AbstractC1916u abstractC1916u) throws IOException {
            mo4414I0(abstractC1916u.mo4241b());
            abstractC1916u.mo4239f(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: C0 */
        public final void mo4420C0(int i, AbstractC1916u abstractC1916u) throws IOException {
            mo4416G0(1, 3);
            mo4415H0(2, i);
            mo4414I0(26);
            mo4414I0(abstractC1916u.mo4241b());
            abstractC1916u.mo4239f(this);
            mo4416G0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: D0 */
        public final void mo4419D0(int i, AbstractC4890c abstractC4890c) throws IOException {
            mo4416G0(1, 3);
            mo4415H0(2, i);
            mo4406s0(3, abstractC4890c);
            mo4416G0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: E0 */
        public final void mo4418E0(int i, String str) throws IOException {
            mo4414I0((i << 3) | 2);
            mo4417F0(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: F0 */
        public final void mo4417F0(String str) throws IOException {
            int i = this.f7034f;
            try {
                int m4427k0 = CodedOutputStream.m4427k0(str.length() * 3);
                int m4427k02 = CodedOutputStream.m4427k0(str.length());
                if (m4427k02 == m4427k0) {
                    int i2 = i + m4427k02;
                    this.f7034f = i2;
                    int mo4318a = C1879f0.f7072a.mo4318a(str, this.f7032d, i2, m4411L0());
                    this.f7034f = i;
                    mo4414I0((mo4318a - i) - m4427k02);
                    this.f7034f = mo4318a;
                } else {
                    mo4414I0(C1879f0.m4320c(str));
                    this.f7034f = C1879f0.f7072a.mo4318a(str, this.f7032d, this.f7034f, m4411L0());
                }
            } catch (C1879f0.C1882c e) {
                this.f7034f = i;
                CodedOutputStream.f7029b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
                byte[] bytes = str.getBytes(C1895k.f7092a);
                try {
                    mo4414I0(bytes.length);
                    m4410M0(bytes, 0, bytes.length);
                } catch (OutOfSpaceException e2) {
                    throw e2;
                } catch (IndexOutOfBoundsException e3) {
                    throw new OutOfSpaceException(e3);
                }
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: G0 */
        public final void mo4416G0(int i, int i2) throws IOException {
            mo4414I0((i << 3) | i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: H0 */
        public final void mo4415H0(int i, int i2) throws IOException {
            mo4414I0((i << 3) | 0);
            mo4414I0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: I0 */
        public final void mo4414I0(int i) throws IOException {
            int i2 = i;
            if (CodedOutputStream.f7030c) {
                i2 = i;
                if (!C4879a.m318a()) {
                    i2 = i;
                    if (m4411L0() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f7032d;
                            int i3 = this.f7034f;
                            this.f7034f = i3 + 1;
                            C4884b0.m301p(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f7032d;
                        int i4 = this.f7034f;
                        this.f7034f = i4 + 1;
                        C4884b0.m301p(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f7032d;
                            int i6 = this.f7034f;
                            this.f7034f = i6 + 1;
                            C4884b0.m301p(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f7032d;
                        int i7 = this.f7034f;
                        this.f7034f = i7 + 1;
                        C4884b0.m301p(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f7032d;
                            int i9 = this.f7034f;
                            this.f7034f = i9 + 1;
                            C4884b0.m301p(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f7032d;
                        int i10 = this.f7034f;
                        this.f7034f = i10 + 1;
                        C4884b0.m301p(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f7032d;
                            int i12 = this.f7034f;
                            this.f7034f = i12 + 1;
                            C4884b0.m301p(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f7032d;
                        int i13 = this.f7034f;
                        this.f7034f = i13 + 1;
                        C4884b0.m301p(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f7032d;
                        int i14 = this.f7034f;
                        this.f7034f = i14 + 1;
                        C4884b0.m301p(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f7032d;
                    int i15 = this.f7034f;
                    this.f7034f = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7034f), Integer.valueOf(this.f7033e), 1), e);
                }
            }
            byte[] bArr11 = this.f7032d;
            int i16 = this.f7034f;
            this.f7034f = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: J0 */
        public final void mo4413J0(int i, long j) throws IOException {
            mo4414I0((i << 3) | 0);
            mo4412K0(j);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: K0 */
        public final void mo4412K0(long j) throws IOException {
            char c = j;
            if (CodedOutputStream.f7030c) {
                c = j;
                char c2 = j;
                if (m4411L0() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.f7032d;
                        int i = this.f7034f;
                        this.f7034f = i + 1;
                        C4884b0.m301p(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.f7032d;
                    int i2 = this.f7034f;
                    this.f7034f = i2 + 1;
                    C4884b0.m301p(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.f7032d;
                    int i3 = this.f7034f;
                    this.f7034f = i3 + 1;
                    bArr3[i3] = (byte) ((c & 127) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7034f), Integer.valueOf(this.f7033e), 1), e);
                }
            }
            byte[] bArr4 = this.f7032d;
            int i4 = this.f7034f;
            this.f7034f = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        /* renamed from: L0 */
        public final int m4411L0() {
            return this.f7033e - this.f7034f;
        }

        /* renamed from: M0 */
        public final void m4410M0(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f7032d, this.f7034f, i2);
                this.f7034f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7034f), Integer.valueOf(this.f7033e), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: p0 */
        public final void mo4409p0(byte b) throws IOException {
            try {
                byte[] bArr = this.f7032d;
                int i = this.f7034f;
                this.f7034f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7034f), Integer.valueOf(this.f7033e), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: q0 */
        public final void mo4408q0(int i, boolean z) throws IOException {
            mo4414I0((i << 3) | 0);
            mo4409p0(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: r0 */
        public final void mo4407r0(byte[] bArr, int i, int i2) throws IOException {
            mo4414I0(i2);
            m4410M0(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: s0 */
        public final void mo4406s0(int i, AbstractC4890c abstractC4890c) throws IOException {
            mo4414I0((i << 3) | 2);
            mo4405t0(abstractC4890c);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: t0 */
        public final void mo4405t0(AbstractC4890c abstractC4890c) throws IOException {
            mo4414I0(abstractC4890c.size());
            abstractC4890c.mo272h(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: u0 */
        public final void mo4404u0(int i, int i2) throws IOException {
            mo4414I0((i << 3) | 5);
            mo4403v0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: v0 */
        public final void mo4403v0(int i) throws IOException {
            try {
                byte[] bArr = this.f7032d;
                int i2 = this.f7034f;
                int i3 = i2 + 1;
                this.f7034f = i3;
                bArr[i2] = (byte) (i & 255);
                int i4 = i3 + 1;
                this.f7034f = i4;
                bArr[i3] = (byte) ((i >> 8) & 255);
                int i5 = i4 + 1;
                this.f7034f = i5;
                bArr[i4] = (byte) ((i >> 16) & 255);
                this.f7034f = i5 + 1;
                bArr[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7034f), Integer.valueOf(this.f7033e), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: w0 */
        public final void mo4402w0(int i, long j) throws IOException {
            mo4414I0((i << 3) | 1);
            mo4401x0(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: x0 */
        public final void mo4401x0(long j) throws IOException {
            try {
                byte[] bArr = this.f7032d;
                int i = this.f7034f;
                int i2 = i + 1;
                this.f7034f = i2;
                bArr[i] = (byte) (((int) j) & 255);
                int i3 = i2 + 1;
                this.f7034f = i3;
                bArr[i2] = (byte) (((int) (j >> 8)) & 255);
                int i4 = i3 + 1;
                this.f7034f = i4;
                bArr[i3] = (byte) (((int) (j >> 16)) & 255);
                int i5 = i4 + 1;
                this.f7034f = i5;
                bArr[i4] = (byte) (((int) (j >> 24)) & 255);
                int i6 = i5 + 1;
                this.f7034f = i6;
                bArr[i5] = (byte) (((int) (j >> 32)) & 255);
                int i7 = i6 + 1;
                this.f7034f = i7;
                bArr[i6] = (byte) (((int) (j >> 40)) & 255);
                int i8 = i7 + 1;
                this.f7034f = i8;
                bArr[i7] = (byte) (((int) (j >> 48)) & 255);
                this.f7034f = i8 + 1;
                bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7034f), Integer.valueOf(this.f7033e), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: y0 */
        public final void mo4400y0(int i, int i2) throws IOException {
            mo4414I0((i << 3) | 0);
            if (i2 >= 0) {
                mo4414I0(i2);
            } else {
                mo4412K0(i2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: z0 */
        public final void mo4399z0(int i) throws IOException {
            if (i >= 0) {
                mo4414I0(i);
            } else {
                mo4412K0(i);
            }
        }
    }

    public CodedOutputStream() {
    }

    public CodedOutputStream(C1857a c1857a) {
    }

    /* renamed from: M */
    public static int m4451M(int i, boolean z) {
        return m4429i0(i) + 1;
    }

    /* renamed from: N */
    public static int m4450N(int i, AbstractC4890c abstractC4890c) {
        return m4429i0(i) + m4438Z(abstractC4890c.size());
    }

    /* renamed from: O */
    public static int m4449O(AbstractC4890c abstractC4890c) {
        return m4438Z(abstractC4890c.size());
    }

    /* renamed from: P */
    public static int m4448P(int i, double d) {
        return m4429i0(i) + 8;
    }

    /* renamed from: Q */
    public static int m4447Q(int i, int i2) {
        return m4429i0(i) + m4441W(i2);
    }

    /* renamed from: R */
    public static int m4446R(int i, int i2) {
        return m4429i0(i) + 4;
    }

    /* renamed from: S */
    public static int m4445S(int i, long j) {
        return m4429i0(i) + 8;
    }

    /* renamed from: T */
    public static int m4444T(int i, float f) {
        return m4429i0(i) + 4;
    }

    @Deprecated
    /* renamed from: U */
    public static int m4443U(int i, AbstractC1916u abstractC1916u, AbstractC4925w abstractC4925w) {
        return (m4429i0(i) * 2) + ((AbstractC1859a) abstractC1916u).m4394n(abstractC4925w);
    }

    /* renamed from: V */
    public static int m4442V(int i, int i2) {
        return m4441W(i2) + m4429i0(i);
    }

    /* renamed from: W */
    public static int m4441W(int i) {
        if (i >= 0) {
            return m4427k0(i);
        }
        return 10;
    }

    /* renamed from: X */
    public static int m4440X(int i, long j) {
        return m4429i0(i) + m4425m0(j);
    }

    /* renamed from: Y */
    public static int m4439Y(C1904m c1904m) {
        return m4438Z(c1904m.f7097b != null ? c1904m.f7097b.size() : c1904m.f7096a != null ? c1904m.f7096a.mo4241b() : 0);
    }

    /* renamed from: Z */
    public static int m4438Z(int i) {
        return m4427k0(i) + i;
    }

    /* renamed from: a0 */
    public static int m4437a0(int i, int i2) {
        return m4429i0(i) + 4;
    }

    /* renamed from: b0 */
    public static int m4436b0(int i, long j) {
        return m4429i0(i) + 8;
    }

    /* renamed from: c0 */
    public static int m4435c0(int i, int i2) {
        return m4434d0(i2) + m4429i0(i);
    }

    /* renamed from: d0 */
    public static int m4434d0(int i) {
        return m4427k0(m4424n0(i));
    }

    /* renamed from: e0 */
    public static int m4433e0(int i, long j) {
        return m4432f0(j) + m4429i0(i);
    }

    /* renamed from: f0 */
    public static int m4432f0(long j) {
        return m4425m0(m4423o0(j));
    }

    /* renamed from: g0 */
    public static int m4431g0(int i, String str) {
        return m4430h0(str) + m4429i0(i);
    }

    /* renamed from: h0 */
    public static int m4430h0(String str) {
        int i;
        try {
            i = C1879f0.m4320c(str);
        } catch (C1879f0.C1882c e) {
            i = str.getBytes(C1895k.f7092a).length;
        }
        return m4438Z(i);
    }

    /* renamed from: i0 */
    public static int m4429i0(int i) {
        return m4427k0((i << 3) | 0);
    }

    /* renamed from: j0 */
    public static int m4428j0(int i, int i2) {
        return m4427k0(i2) + m4429i0(i);
    }

    /* renamed from: k0 */
    public static int m4427k0(int i) {
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

    /* renamed from: l0 */
    public static int m4426l0(int i, long j) {
        return m4425m0(j) + m4429i0(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: m0 */
    public static int m4425m0(long j) {
        int i;
        ?? r5;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            r5 = j >>> 28;
        } else {
            i = 2;
            r5 = j;
        }
        int i2 = i;
        byte b = r5;
        if ((0 & r5) != 0) {
            i2 = i + 2;
            b = r5 >>> 14;
        }
        int i3 = i2;
        if ((b & (-16384)) != 0) {
            i3 = i2 + 1;
        }
        return i3;
    }

    /* renamed from: n0 */
    public static int m4424n0(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: o0 */
    public static long m4423o0(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: A0 */
    public abstract void mo4422A0(int i, AbstractC1916u abstractC1916u, AbstractC4925w abstractC4925w) throws IOException;

    /* renamed from: B0 */
    public abstract void mo4421B0(AbstractC1916u abstractC1916u) throws IOException;

    /* renamed from: C0 */
    public abstract void mo4420C0(int i, AbstractC1916u abstractC1916u) throws IOException;

    /* renamed from: D0 */
    public abstract void mo4419D0(int i, AbstractC4890c abstractC4890c) throws IOException;

    /* renamed from: E0 */
    public abstract void mo4418E0(int i, String str) throws IOException;

    /* renamed from: F0 */
    public abstract void mo4417F0(String str) throws IOException;

    /* renamed from: G0 */
    public abstract void mo4416G0(int i, int i2) throws IOException;

    /* renamed from: H0 */
    public abstract void mo4415H0(int i, int i2) throws IOException;

    /* renamed from: I0 */
    public abstract void mo4414I0(int i) throws IOException;

    /* renamed from: J0 */
    public abstract void mo4413J0(int i, long j) throws IOException;

    /* renamed from: K0 */
    public abstract void mo4412K0(long j) throws IOException;

    /* renamed from: p0 */
    public abstract void mo4409p0(byte b) throws IOException;

    /* renamed from: q0 */
    public abstract void mo4408q0(int i, boolean z) throws IOException;

    /* renamed from: r0 */
    public abstract void mo4407r0(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: s0 */
    public abstract void mo4406s0(int i, AbstractC4890c abstractC4890c) throws IOException;

    /* renamed from: t0 */
    public abstract void mo4405t0(AbstractC4890c abstractC4890c) throws IOException;

    /* renamed from: u0 */
    public abstract void mo4404u0(int i, int i2) throws IOException;

    /* renamed from: v0 */
    public abstract void mo4403v0(int i) throws IOException;

    /* renamed from: w0 */
    public abstract void mo4402w0(int i, long j) throws IOException;

    /* renamed from: x0 */
    public abstract void mo4401x0(long j) throws IOException;

    /* renamed from: y0 */
    public abstract void mo4400y0(int i, int i2) throws IOException;

    /* renamed from: z0 */
    public abstract void mo4399z0(int i) throws IOException;
}

package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.j.q.i3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i3.class */
public abstract class AbstractC8632i3 extends AbstractC8727s2 {

    /* renamed from: b */
    public static final Logger f19759b = Logger.getLogger(AbstractC8632i3.class.getName());

    /* renamed from: c */
    public static final boolean f19760c = C8776x6.m17046b();

    /* renamed from: a */
    public C8655k3 f19761a;

    /* renamed from: h.i.a.e.j.q.i3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i3$a.class */
    public static class C8633a extends AbstractC8632i3 {

        /* renamed from: d */
        public final byte[] f19762d;

        /* renamed from: e */
        public final int f19763e;

        /* renamed from: f */
        public final int f19764f;

        /* renamed from: g */
        public int f19765g;

        public C8633a(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f19762d = bArr;
                    this.f19763e = i;
                    this.f19765g = i;
                    this.f19764f = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public void mo17479a() {
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17478a(byte b) throws IOException {
            try {
                byte[] bArr = this.f19762d;
                int i = this.f19765g;
                this.f19765g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19765g), Integer.valueOf(this.f19764f), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17477a(int i) throws IOException {
            if (i >= 0) {
                mo17467b(i);
            } else {
                mo17469a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17476a(int i, int i2) throws IOException {
            mo17467b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17475a(int i, long j) throws IOException {
            mo17476a(i, 0);
            mo17469a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17474a(int i, AbstractC8648j5 j5Var) throws IOException {
            mo17476a(i, 2);
            m17486c(j5Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17473a(int i, AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) throws IOException {
            mo17476a(i, 2);
            AbstractC8663l2 l2Var = (AbstractC8663l2) j5Var;
            int f = l2Var.mo17422f();
            int i2 = f;
            if (f == -1) {
                i2 = z5Var.mo16935d(l2Var);
                l2Var.mo17424a(i2);
            }
            mo17467b(i2);
            z5Var.mo16941a((AbstractC8797z5) j5Var, (AbstractC8677m7) this.f19761a);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17472a(int i, AbstractC8736t2 t2Var) throws IOException {
            mo17476a(i, 2);
            m17488b(t2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17471a(int i, String str) throws IOException {
            mo17476a(i, 2);
            m17487b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17470a(int i, boolean z) throws IOException {
            mo17476a(i, 0);
            mo17478a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo17469a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3.C8633a.mo17469a(long):void");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8727s2
        /* renamed from: a */
        public final void mo17208a(byte[] bArr, int i, int i2) throws IOException {
            mo17460b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final int mo17468b() {
            return this.f19764f - this.f19765g;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17467b(int i) throws IOException {
            int i2 = i;
            if (AbstractC8632i3.f19760c) {
                i2 = i;
                if (mo17468b() >= 10) {
                    while ((i & (-128)) != 0) {
                        byte[] bArr = this.f19762d;
                        int i3 = this.f19765g;
                        this.f19765g = i3 + 1;
                        C8776x6.m17048a(bArr, i3, (byte) ((i & 127) | 128));
                        i >>>= 7;
                    }
                    byte[] bArr2 = this.f19762d;
                    int i4 = this.f19765g;
                    this.f19765g = i4 + 1;
                    C8776x6.m17048a(bArr2, i4, (byte) i);
                    return;
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f19762d;
                    int i5 = this.f19765g;
                    this.f19765g = i5 + 1;
                    bArr3[i5] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19765g), Integer.valueOf(this.f19764f), 1), e);
                }
            }
            byte[] bArr4 = this.f19762d;
            int i6 = this.f19765g;
            this.f19765g = i6 + 1;
            bArr4[i6] = (byte) i2;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17466b(int i, int i2) throws IOException {
            mo17476a(i, 0);
            mo17477a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17465b(int i, AbstractC8648j5 j5Var) throws IOException {
            mo17476a(1, 3);
            mo17459c(2, i);
            mo17474a(3, j5Var);
            mo17476a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17464b(int i, AbstractC8736t2 t2Var) throws IOException {
            mo17476a(1, 3);
            mo17459c(2, i);
            mo17472a(3, t2Var);
            mo17476a(1, 4);
        }

        /* renamed from: b */
        public final void m17488b(AbstractC8736t2 t2Var) throws IOException {
            mo17467b(t2Var.size());
            t2Var.mo17178a(this);
        }

        /* renamed from: b */
        public final void m17487b(String str) throws IOException {
            int i = this.f19765g;
            try {
                int g = AbstractC8632i3.m17505g(str.length() * 3);
                int g2 = AbstractC8632i3.m17505g(str.length());
                if (g2 == g) {
                    this.f19765g = i + g2;
                    int a = C8798z6.m16929a(str, this.f19762d, this.f19765g, mo17468b());
                    this.f19765g = i;
                    mo17467b((a - i) - g2);
                    this.f19765g = a;
                    return;
                }
                mo17467b(C8798z6.m16931a(str));
                this.f19765g = C8798z6.m16929a(str, this.f19762d, this.f19765g, mo17468b());
            } catch (C8585d7 e) {
                this.f19765g = i;
                m17539a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new C8635c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17460b(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f19762d, this.f19765g, i2);
                this.f19765g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19765g), Integer.valueOf(this.f19764f), Integer.valueOf(i2)), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17459c(int i, int i2) throws IOException {
            mo17476a(i, 0);
            mo17467b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17458c(int i, long j) throws IOException {
            mo17476a(i, 1);
            mo17457c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17457c(long j) throws IOException {
            try {
                byte[] bArr = this.f19762d;
                int i = this.f19765g;
                this.f19765g = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f19762d;
                int i2 = this.f19765g;
                this.f19765g = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f19762d;
                int i3 = this.f19765g;
                this.f19765g = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f19762d;
                int i4 = this.f19765g;
                this.f19765g = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f19762d;
                int i5 = this.f19765g;
                this.f19765g = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f19762d;
                int i6 = this.f19765g;
                this.f19765g = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f19762d;
                int i7 = this.f19765g;
                this.f19765g = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f19762d;
                int i8 = this.f19765g;
                this.f19765g = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19765g), Integer.valueOf(this.f19764f), 1), e);
            }
        }

        /* renamed from: c */
        public final void m17486c(AbstractC8648j5 j5Var) throws IOException {
            mo17467b(j5Var.mo17434b());
            j5Var.mo17435a(this);
        }

        /* renamed from: d */
        public final int m17485d() {
            return this.f19765g - this.f19763e;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: d */
        public final void mo17455d(int i) throws IOException {
            try {
                byte[] bArr = this.f19762d;
                int i2 = this.f19765g;
                this.f19765g = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f19762d;
                int i3 = this.f19765g;
                this.f19765g = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f19762d;
                int i4 = this.f19765g;
                this.f19765g = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f19762d;
                int i5 = this.f19765g;
                this.f19765g = i5 + 1;
                bArr4[i5] = (byte) (i >> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19765g), Integer.valueOf(this.f19764f), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: e */
        public final void mo17454e(int i, int i2) throws IOException {
            mo17476a(i, 5);
            mo17455d(i2);
        }
    }

    /* renamed from: h.i.a.e.j.q.i3$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i3$b.class */
    public static final class C8634b extends C8633a {

        /* renamed from: h */
        public final ByteBuffer f19766h;

        /* renamed from: i */
        public int f19767i;

        public C8634b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f19766h = byteBuffer;
            this.f19767i = byteBuffer.position();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3.C8633a, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17479a() {
            this.f19766h.position(this.f19767i + m17485d());
        }
    }

    /* renamed from: h.i.a.e.j.q.i3$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i3$c.class */
    public static final class C8635c extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8635c(java.lang.String r5) {
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
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3.C8635c.<init>(java.lang.String):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8635c(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3.C8635c.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public C8635c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* renamed from: h.i.a.e.j.q.i3$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i3$d.class */
    public static final class C8636d extends AbstractC8632i3 {

        /* renamed from: d */
        public final ByteBuffer f19768d;

        /* renamed from: e */
        public final ByteBuffer f19769e;

        public C8636d(ByteBuffer byteBuffer) {
            super();
            this.f19768d = byteBuffer;
            this.f19769e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17479a() {
            this.f19768d.position(this.f19769e.position());
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17478a(byte b) throws IOException {
            try {
                this.f19769e.put(b);
            } catch (BufferOverflowException e) {
                throw new C8635c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17477a(int i) throws IOException {
            if (i >= 0) {
                mo17467b(i);
            } else {
                mo17469a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17476a(int i, int i2) throws IOException {
            mo17467b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17475a(int i, long j) throws IOException {
            mo17476a(i, 0);
            mo17469a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17474a(int i, AbstractC8648j5 j5Var) throws IOException {
            mo17476a(i, 2);
            m17481c(j5Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17473a(int i, AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) throws IOException {
            mo17476a(i, 2);
            m17484b(j5Var, z5Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17472a(int i, AbstractC8736t2 t2Var) throws IOException {
            mo17476a(i, 2);
            m17483b(t2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17471a(int i, String str) throws IOException {
            mo17476a(i, 2);
            m17482b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17470a(int i, boolean z) throws IOException {
            mo17476a(i, 0);
            mo17478a(z ? (byte) 1 : (byte) 0);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17469a(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.f19769e.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new C8635c(e);
                }
            }
            this.f19769e.put((byte) j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8727s2
        /* renamed from: a */
        public final void mo17208a(byte[] bArr, int i, int i2) throws IOException {
            mo17460b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final int mo17468b() {
            return this.f19769e.remaining();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17467b(int i) throws IOException {
            while ((i & (-128)) != 0) {
                try {
                    this.f19769e.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new C8635c(e);
                }
            }
            this.f19769e.put((byte) i);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17466b(int i, int i2) throws IOException {
            mo17476a(i, 0);
            mo17477a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17465b(int i, AbstractC8648j5 j5Var) throws IOException {
            mo17476a(1, 3);
            mo17459c(2, i);
            mo17474a(3, j5Var);
            mo17476a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17464b(int i, AbstractC8736t2 t2Var) throws IOException {
            mo17476a(1, 3);
            mo17459c(2, i);
            mo17472a(3, t2Var);
            mo17476a(1, 4);
        }

        /* renamed from: b */
        public final void m17484b(AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) throws IOException {
            AbstractC8663l2 l2Var = (AbstractC8663l2) j5Var;
            int f = l2Var.mo17422f();
            int i = f;
            if (f == -1) {
                i = z5Var.mo16935d(l2Var);
                l2Var.mo17424a(i);
            }
            mo17467b(i);
            z5Var.mo16941a((AbstractC8797z5) j5Var, (AbstractC8677m7) this.f19761a);
        }

        /* renamed from: b */
        public final void m17483b(AbstractC8736t2 t2Var) throws IOException {
            mo17467b(t2Var.size());
            t2Var.mo17178a(this);
        }

        /* renamed from: b */
        public final void m17482b(String str) throws IOException {
            int position = this.f19769e.position();
            try {
                int g = AbstractC8632i3.m17505g(str.length() * 3);
                int g2 = AbstractC8632i3.m17505g(str.length());
                if (g2 == g) {
                    int position2 = this.f19769e.position() + g2;
                    this.f19769e.position(position2);
                    m17480c(str);
                    int position3 = this.f19769e.position();
                    this.f19769e.position(position);
                    mo17467b(position3 - position2);
                    this.f19769e.position(position3);
                    return;
                }
                mo17467b(C8798z6.m16931a(str));
                m17480c(str);
            } catch (C8585d7 e) {
                this.f19769e.position(position);
                m17539a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new C8635c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17460b(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f19769e.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new C8635c(e);
            } catch (BufferOverflowException e2) {
                throw new C8635c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17459c(int i, int i2) throws IOException {
            mo17476a(i, 0);
            mo17467b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17458c(int i, long j) throws IOException {
            mo17476a(i, 1);
            mo17457c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17457c(long j) throws IOException {
            try {
                this.f19769e.putLong(j);
            } catch (BufferOverflowException e) {
                throw new C8635c(e);
            }
        }

        /* renamed from: c */
        public final void m17481c(AbstractC8648j5 j5Var) throws IOException {
            mo17467b(j5Var.mo17434b());
            j5Var.mo17435a(this);
        }

        /* renamed from: c */
        public final void m17480c(String str) throws IOException {
            try {
                C8798z6.m16930a(str, this.f19769e);
            } catch (IndexOutOfBoundsException e) {
                throw new C8635c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: d */
        public final void mo17455d(int i) throws IOException {
            try {
                this.f19769e.putInt(i);
            } catch (BufferOverflowException e) {
                throw new C8635c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: e */
        public final void mo17454e(int i, int i2) throws IOException {
            mo17476a(i, 5);
            mo17455d(i2);
        }
    }

    /* renamed from: h.i.a.e.j.q.i3$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i3$e.class */
    public static final class C8637e extends AbstractC8632i3 {

        /* renamed from: d */
        public final ByteBuffer f19770d;

        /* renamed from: e */
        public final ByteBuffer f19771e;

        /* renamed from: f */
        public final long f19772f;

        /* renamed from: g */
        public final long f19773g;

        /* renamed from: h */
        public final long f19774h;

        /* renamed from: i */
        public final long f19775i;

        /* renamed from: j */
        public long f19776j;

        public C8637e(ByteBuffer byteBuffer) {
            super();
            this.f19770d = byteBuffer;
            this.f19771e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f19772f = C8776x6.m17050a(byteBuffer);
            this.f19773g = this.f19772f + byteBuffer.position();
            this.f19774h = this.f19772f + byteBuffer.limit();
            this.f19775i = this.f19774h - 10;
            this.f19776j = this.f19773g;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17479a() {
            this.f19770d.position((int) (this.f19776j - this.f19772f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17478a(byte b) throws IOException {
            long j = this.f19776j;
            if (j < this.f19774h) {
                this.f19776j = 1 + j;
                C8776x6.m17061a(j, b);
                return;
            }
            throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.f19774h), 1));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17477a(int i) throws IOException {
            if (i >= 0) {
                mo17467b(i);
            } else {
                mo17469a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17476a(int i, int i2) throws IOException {
            mo17467b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17475a(int i, long j) throws IOException {
            mo17476a(i, 0);
            mo17469a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17474a(int i, AbstractC8648j5 j5Var) throws IOException {
            mo17476a(i, 2);
            m17456c(j5Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17473a(int i, AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) throws IOException {
            mo17476a(i, 2);
            m17463b(j5Var, z5Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17472a(int i, AbstractC8736t2 t2Var) throws IOException {
            mo17476a(i, 2);
            m17462b(t2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17471a(int i, String str) throws IOException {
            mo17476a(i, 2);
            m17461b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        public final void mo17470a(int i, boolean z) throws IOException {
            mo17476a(i, 0);
            mo17478a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo17469a(long r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 187
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3.C8637e.mo17469a(long):void");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8727s2
        /* renamed from: a */
        public final void mo17208a(byte[] bArr, int i, int i2) throws IOException {
            mo17460b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final int mo17468b() {
            return (int) (this.f19774h - this.f19776j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17467b(int i) throws IOException {
            int i2 = i;
            if (this.f19776j <= this.f19775i) {
                while ((i & (-128)) != 0) {
                    long j = this.f19776j;
                    this.f19776j = j + 1;
                    C8776x6.m17061a(j, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                long j2 = this.f19776j;
                this.f19776j = 1 + j2;
                C8776x6.m17061a(j2, (byte) i);
                return;
            }
            while (true) {
                long j3 = this.f19776j;
                if (j3 >= this.f19774h) {
                    throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j3), Long.valueOf(this.f19774h), 1));
                } else if ((i2 & (-128)) == 0) {
                    this.f19776j = 1 + j3;
                    C8776x6.m17061a(j3, (byte) i2);
                    return;
                } else {
                    this.f19776j = j3 + 1;
                    C8776x6.m17061a(j3, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17466b(int i, int i2) throws IOException {
            mo17476a(i, 0);
            mo17477a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17465b(int i, AbstractC8648j5 j5Var) throws IOException {
            mo17476a(1, 3);
            mo17459c(2, i);
            mo17474a(3, j5Var);
            mo17476a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17464b(int i, AbstractC8736t2 t2Var) throws IOException {
            mo17476a(1, 3);
            mo17459c(2, i);
            mo17472a(3, t2Var);
            mo17476a(1, 4);
        }

        /* renamed from: b */
        public final void m17463b(AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) throws IOException {
            AbstractC8663l2 l2Var = (AbstractC8663l2) j5Var;
            int f = l2Var.mo17422f();
            int i = f;
            if (f == -1) {
                i = z5Var.mo16935d(l2Var);
                l2Var.mo17424a(i);
            }
            mo17467b(i);
            z5Var.mo16941a((AbstractC8797z5) j5Var, (AbstractC8677m7) this.f19761a);
        }

        /* renamed from: b */
        public final void m17462b(AbstractC8736t2 t2Var) throws IOException {
            mo17467b(t2Var.size());
            t2Var.mo17178a(this);
        }

        /* renamed from: b */
        public final void m17461b(String str) throws IOException {
            long j = this.f19776j;
            try {
                int g = AbstractC8632i3.m17505g(str.length() * 3);
                int g2 = AbstractC8632i3.m17505g(str.length());
                if (g2 == g) {
                    int i = ((int) (this.f19776j - this.f19772f)) + g2;
                    this.f19771e.position(i);
                    C8798z6.m16930a(str, this.f19771e);
                    int position = this.f19771e.position() - i;
                    mo17467b(position);
                    this.f19776j += position;
                    return;
                }
                int a = C8798z6.m16931a(str);
                mo17467b(a);
                m17453j(this.f19776j);
                C8798z6.m16930a(str, this.f19771e);
                this.f19776j += a;
            } catch (C8585d7 e) {
                this.f19776j = j;
                m17453j(this.f19776j);
                m17539a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new C8635c(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new C8635c(e3);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: b */
        public final void mo17460b(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = this.f19774h;
                long j2 = i2;
                long j3 = this.f19776j;
                if (j - j2 >= j3) {
                    C8776x6.m17047a(bArr, i, j3, j2);
                    this.f19776j += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException(C13032a.f29462d);
            }
            throw new C8635c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f19776j), Long.valueOf(this.f19774h), Integer.valueOf(i2)));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17459c(int i, int i2) throws IOException {
            mo17476a(i, 0);
            mo17467b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17458c(int i, long j) throws IOException {
            mo17476a(i, 1);
            mo17457c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: c */
        public final void mo17457c(long j) throws IOException {
            this.f19771e.putLong((int) (this.f19776j - this.f19772f), j);
            this.f19776j += 8;
        }

        /* renamed from: c */
        public final void m17456c(AbstractC8648j5 j5Var) throws IOException {
            mo17467b(j5Var.mo17434b());
            j5Var.mo17435a(this);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: d */
        public final void mo17455d(int i) throws IOException {
            this.f19771e.putInt((int) (this.f19776j - this.f19772f), i);
            this.f19776j += 4;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3
        /* renamed from: e */
        public final void mo17454e(int i, int i2) throws IOException {
            mo17476a(i, 5);
            mo17455d(i2);
        }

        /* renamed from: j */
        public final void m17453j(long j) {
            this.f19771e.position((int) (j - this.f19772f));
        }
    }

    public AbstractC8632i3() {
    }

    /* renamed from: a */
    public static int m17545a(int i, C8720r4 r4Var) {
        int e = m17512e(i);
        int b = r4Var.m17216b();
        return e + m17505g(b) + b;
    }

    /* renamed from: a */
    public static int m17544a(AbstractC8648j5 j5Var) {
        int b = j5Var.mo17434b();
        return m17505g(b) + b;
    }

    /* renamed from: a */
    public static int m17543a(AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) {
        AbstractC8663l2 l2Var = (AbstractC8663l2) j5Var;
        int f = l2Var.mo17422f();
        int i = f;
        if (f == -1) {
            i = z5Var.mo16935d(l2Var);
            l2Var.mo17424a(i);
        }
        return m17505g(i) + i;
    }

    /* renamed from: a */
    public static int m17542a(C8720r4 r4Var) {
        int b = r4Var.m17216b();
        return m17505g(b) + b;
    }

    /* renamed from: a */
    public static int m17541a(AbstractC8736t2 t2Var) {
        int size = t2Var.size();
        return m17505g(size) + size;
    }

    /* renamed from: a */
    public static int m17540a(String str) {
        int i;
        try {
            i = C8798z6.m16931a(str);
        } catch (C8585d7 e) {
            i = str.getBytes(C8591e4.f19671a).length;
        }
        return m17505g(i) + i;
    }

    /* renamed from: a */
    public static AbstractC8632i3 m17538a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new C8634b(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            return C8776x6.m17041c() ? new C8637e(byteBuffer) : new C8636d(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    /* renamed from: a */
    public static AbstractC8632i3 m17536a(byte[] bArr) {
        return new C8633a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m17535b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m17534b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m17533b(int i, double d) {
        return m17512e(i) + 8;
    }

    /* renamed from: b */
    public static int m17532b(int i, float f) {
        return m17512e(i) + 4;
    }

    /* renamed from: b */
    public static int m17530b(int i, AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) {
        return m17512e(i) + m17543a(j5Var, z5Var);
    }

    /* renamed from: b */
    public static int m17529b(int i, C8720r4 r4Var) {
        return (m17512e(1) << 1) + m17504g(2, i) + m17545a(3, r4Var);
    }

    /* renamed from: b */
    public static int m17528b(int i, String str) {
        return m17512e(i) + m17540a(str);
    }

    /* renamed from: b */
    public static int m17527b(int i, boolean z) {
        return m17512e(i) + 1;
    }

    @Deprecated
    /* renamed from: b */
    public static int m17525b(AbstractC8648j5 j5Var) {
        return j5Var.mo17434b();
    }

    /* renamed from: b */
    public static int m17524b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m17523b(byte[] bArr) {
        int length = bArr.length;
        return m17505g(length) + length;
    }

    /* renamed from: c */
    public static int m17520c(int i, AbstractC8648j5 j5Var) {
        return m17512e(i) + m17544a(j5Var);
    }

    @Deprecated
    /* renamed from: c */
    public static int m17519c(int i, AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) {
        int e = m17512e(i);
        AbstractC8663l2 l2Var = (AbstractC8663l2) j5Var;
        int f = l2Var.mo17422f();
        int i2 = f;
        if (f == -1) {
            i2 = z5Var.mo16935d(l2Var);
            l2Var.mo17424a(i2);
        }
        return (e << 1) + i2;
    }

    /* renamed from: c */
    public static int m17518c(int i, AbstractC8736t2 t2Var) {
        int e = m17512e(i);
        int size = t2Var.size();
        return e + m17505g(size) + size;
    }

    /* renamed from: d */
    public static int m17516d(int i, long j) {
        return m17512e(i) + m17510e(j);
    }

    /* renamed from: d */
    public static int m17515d(int i, AbstractC8648j5 j5Var) {
        return (m17512e(1) << 1) + m17504g(2, i) + m17520c(3, j5Var);
    }

    /* renamed from: d */
    public static int m17514d(int i, AbstractC8736t2 t2Var) {
        return (m17512e(1) << 1) + m17504g(2, i) + m17518c(3, t2Var);
    }

    /* renamed from: d */
    public static int m17513d(long j) {
        return m17510e(j);
    }

    /* renamed from: e */
    public static int m17512e(int i) {
        return m17505g(i << 3);
    }

    /* renamed from: e */
    public static int m17511e(int i, long j) {
        return m17512e(i) + m17510e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m17510e(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8632i3.m17510e(long):int");
    }

    /* renamed from: f */
    public static int m17509f(int i) {
        if (i >= 0) {
            return m17505g(i);
        }
        return 10;
    }

    /* renamed from: f */
    public static int m17508f(int i, int i2) {
        return m17512e(i) + m17509f(i2);
    }

    /* renamed from: f */
    public static int m17507f(int i, long j) {
        return m17512e(i) + m17510e(m17495i(j));
    }

    /* renamed from: f */
    public static int m17506f(long j) {
        return m17510e(m17495i(j));
    }

    /* renamed from: g */
    public static int m17505g(int i) {
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
    public static int m17504g(int i, int i2) {
        return m17512e(i) + m17505g(i2);
    }

    /* renamed from: g */
    public static int m17503g(int i, long j) {
        return m17512e(i) + 8;
    }

    /* renamed from: g */
    public static int m17502g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m17501h(int i) {
        return m17505g(m17490l(i));
    }

    /* renamed from: h */
    public static int m17500h(int i, int i2) {
        return m17512e(i) + m17505g(m17490l(i2));
    }

    /* renamed from: h */
    public static int m17499h(int i, long j) {
        return m17512e(i) + 8;
    }

    /* renamed from: h */
    public static int m17498h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m17497i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m17496i(int i, int i2) {
        return m17512e(i) + 4;
    }

    /* renamed from: i */
    public static long m17495i(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: j */
    public static int m17494j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m17493j(int i, int i2) {
        return m17512e(i) + 4;
    }

    /* renamed from: k */
    public static int m17492k(int i) {
        return m17509f(i);
    }

    /* renamed from: k */
    public static int m17491k(int i, int i2) {
        return m17512e(i) + m17509f(i2);
    }

    /* renamed from: l */
    public static int m17490l(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    /* renamed from: m */
    public static int m17489m(int i) {
        return m17505g(i);
    }

    /* renamed from: a */
    public abstract void mo17479a() throws IOException;

    /* renamed from: a */
    public abstract void mo17478a(byte b) throws IOException;

    /* renamed from: a */
    public final void m17549a(double d) throws IOException {
        mo17457c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m17548a(float f) throws IOException {
        mo17455d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo17477a(int i) throws IOException;

    /* renamed from: a */
    public final void m17547a(int i, double d) throws IOException {
        mo17458c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m17546a(int i, float f) throws IOException {
        mo17454e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo17476a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo17475a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo17474a(int i, AbstractC8648j5 j5Var) throws IOException;

    /* renamed from: a */
    public abstract void mo17473a(int i, AbstractC8648j5 j5Var, AbstractC8797z5 z5Var) throws IOException;

    /* renamed from: a */
    public abstract void mo17472a(int i, AbstractC8736t2 t2Var) throws IOException;

    /* renamed from: a */
    public abstract void mo17471a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo17470a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo17469a(long j) throws IOException;

    /* renamed from: a */
    public final void m17539a(String str, C8585d7 d7Var) throws IOException {
        f19759b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) d7Var);
        byte[] bytes = str.getBytes(C8591e4.f19671a);
        try {
            mo17467b(bytes.length);
            mo17208a(bytes, 0, bytes.length);
        } catch (C8635c e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new C8635c(e2);
        }
    }

    /* renamed from: a */
    public final void m17537a(boolean z) throws IOException {
        mo17478a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public abstract int mo17468b();

    /* renamed from: b */
    public abstract void mo17467b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo17466b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m17531b(int i, long j) throws IOException {
        mo17475a(i, m17495i(j));
    }

    /* renamed from: b */
    public abstract void mo17465b(int i, AbstractC8648j5 j5Var) throws IOException;

    /* renamed from: b */
    public abstract void mo17464b(int i, AbstractC8736t2 t2Var) throws IOException;

    /* renamed from: b */
    public final void m17526b(long j) throws IOException {
        mo17469a(m17495i(j));
    }

    /* renamed from: b */
    public abstract void mo17460b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m17521c(int i) throws IOException {
        mo17467b(m17490l(i));
    }

    /* renamed from: c */
    public abstract void mo17459c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo17458c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo17457c(long j) throws IOException;

    /* renamed from: d */
    public abstract void mo17455d(int i) throws IOException;

    /* renamed from: d */
    public final void m17517d(int i, int i2) throws IOException {
        mo17459c(i, m17490l(i2));
    }

    /* renamed from: e */
    public abstract void mo17454e(int i, int i2) throws IOException;
}

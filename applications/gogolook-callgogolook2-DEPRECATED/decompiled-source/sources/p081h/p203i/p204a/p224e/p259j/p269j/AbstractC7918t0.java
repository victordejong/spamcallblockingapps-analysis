package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.j.j.t0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t0.class */
public abstract class AbstractC7918t0 extends AbstractC7783d0 {

    /* renamed from: b */
    public static final Logger f18576b = Logger.getLogger(AbstractC7918t0.class.getName());

    /* renamed from: c */
    public static final boolean f18577c = C7838j4.m19319b();

    /* renamed from: a */
    public C7937v0 f18578a;

    /* renamed from: h.i.a.e.j.j.t0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t0$a.class */
    public static class C7919a extends AbstractC7918t0 {

        /* renamed from: d */
        public final byte[] f18579d;

        /* renamed from: e */
        public final int f18580e;

        /* renamed from: f */
        public final int f18581f;

        /* renamed from: g */
        public int f18582g;

        public C7919a(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f18579d = bArr;
                    this.f18580e = i;
                    this.f18582g = i;
                    this.f18581f = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public void mo18921a() {
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18920a(byte b) throws IOException {
            try {
                byte[] bArr = this.f18579d;
                int i = this.f18582g;
                this.f18582g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18582g), Integer.valueOf(this.f18581f), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18919a(int i) throws IOException {
            if (i >= 0) {
                mo18908b(i);
            } else {
                mo18911a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18918a(int i, int i2) throws IOException {
            mo18908b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18917a(int i, long j) throws IOException {
            mo18918a(i, 0);
            mo18911a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18916a(int i, AbstractC7791e0 e0Var) throws IOException {
            mo18918a(i, 2);
            m18930b(e0Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18915a(int i, AbstractC7925t2 t2Var) throws IOException {
            mo18918a(i, 2);
            m18928c(t2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18914a(int i, AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) throws IOException {
            mo18918a(i, 2);
            AbstractC7943w wVar = (AbstractC7943w) t2Var;
            int e = wVar.mo18852e();
            int i2 = e;
            if (e == -1) {
                i2 = k3Var.mo18792c(wVar);
                wVar.mo18854a(i2);
            }
            mo18908b(i2);
            k3Var.mo18796a((AbstractC7849k3) t2Var, (AbstractC7962y4) this.f18578a);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18913a(int i, String str) throws IOException {
            mo18918a(i, 2);
            m18929b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18912a(int i, boolean z) throws IOException {
            mo18918a(i, 0);
            mo18920a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo18911a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0.C7919a.mo18911a(long):void");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7783d0
        /* renamed from: a */
        public final void mo18910a(byte[] bArr, int i, int i2) throws IOException {
            mo18901b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final int mo18909b() {
            return this.f18581f - this.f18582g;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18908b(int i) throws IOException {
            int i2 = i;
            if (AbstractC7918t0.f18577c) {
                i2 = i;
                if (mo18909b() >= 10) {
                    while ((i & (-128)) != 0) {
                        byte[] bArr = this.f18579d;
                        int i3 = this.f18582g;
                        this.f18582g = i3 + 1;
                        C7838j4.m19321a(bArr, i3, (byte) ((i & 127) | 128));
                        i >>>= 7;
                    }
                    byte[] bArr2 = this.f18579d;
                    int i4 = this.f18582g;
                    this.f18582g = i4 + 1;
                    C7838j4.m19321a(bArr2, i4, (byte) i);
                    return;
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f18579d;
                    int i5 = this.f18582g;
                    this.f18582g = i5 + 1;
                    bArr3[i5] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18582g), Integer.valueOf(this.f18581f), 1), e);
                }
            }
            byte[] bArr4 = this.f18579d;
            int i6 = this.f18582g;
            this.f18582g = i6 + 1;
            bArr4[i6] = (byte) i2;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18907b(int i, int i2) throws IOException {
            mo18918a(i, 0);
            mo18919a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18906b(int i, AbstractC7791e0 e0Var) throws IOException {
            mo18918a(1, 3);
            mo18900c(2, i);
            mo18916a(3, e0Var);
            mo18918a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18905b(int i, AbstractC7925t2 t2Var) throws IOException {
            mo18918a(1, 3);
            mo18900c(2, i);
            mo18915a(3, t2Var);
            mo18918a(1, 4);
        }

        /* renamed from: b */
        public final void m18930b(AbstractC7791e0 e0Var) throws IOException {
            mo18908b(e0Var.size());
            e0Var.mo19168a(this);
        }

        /* renamed from: b */
        public final void m18929b(String str) throws IOException {
            int i = this.f18582g;
            try {
                int f = AbstractC7918t0.m18951f(str.length() * 3);
                int f2 = AbstractC7918t0.m18951f(str.length());
                if (f2 == f) {
                    this.f18582g = i + f2;
                    int a = C7858l4.m19254a(str, this.f18579d, this.f18582g, mo18909b());
                    this.f18582g = i;
                    mo18908b((a - i) - f2);
                    this.f18582g = a;
                    return;
                }
                mo18908b(C7858l4.m19256a(str));
                this.f18582g = C7858l4.m19254a(str, this.f18579d, this.f18582g, mo18909b());
            } catch (C7894p4 e) {
                this.f18582g = i;
                m18981a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new C7921c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18901b(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f18579d, this.f18582g, i2);
                this.f18582g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18582g), Integer.valueOf(this.f18581f), Integer.valueOf(i2)), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18900c(int i, int i2) throws IOException {
            mo18918a(i, 0);
            mo18908b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18899c(int i, long j) throws IOException {
            mo18918a(i, 1);
            mo18898c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18898c(long j) throws IOException {
            try {
                byte[] bArr = this.f18579d;
                int i = this.f18582g;
                this.f18582g = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f18579d;
                int i2 = this.f18582g;
                this.f18582g = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f18579d;
                int i3 = this.f18582g;
                this.f18582g = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f18579d;
                int i4 = this.f18582g;
                this.f18582g = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f18579d;
                int i5 = this.f18582g;
                this.f18582g = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f18579d;
                int i6 = this.f18582g;
                this.f18582g = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f18579d;
                int i7 = this.f18582g;
                this.f18582g = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f18579d;
                int i8 = this.f18582g;
                this.f18582g = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18582g), Integer.valueOf(this.f18581f), 1), e);
            }
        }

        /* renamed from: c */
        public final void m18928c(AbstractC7925t2 t2Var) throws IOException {
            mo18908b(t2Var.mo18882d());
            t2Var.mo18884a(this);
        }

        /* renamed from: d */
        public final int m18927d() {
            return this.f18582g - this.f18580e;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: d */
        public final void mo18896d(int i) throws IOException {
            try {
                byte[] bArr = this.f18579d;
                int i2 = this.f18582g;
                this.f18582g = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f18579d;
                int i3 = this.f18582g;
                this.f18582g = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f18579d;
                int i4 = this.f18582g;
                this.f18582g = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f18579d;
                int i5 = this.f18582g;
                this.f18582g = i5 + 1;
                bArr4[i5] = (byte) (i >> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18582g), Integer.valueOf(this.f18581f), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: e */
        public final void mo18895e(int i, int i2) throws IOException {
            mo18918a(i, 5);
            mo18896d(i2);
        }
    }

    /* renamed from: h.i.a.e.j.j.t0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t0$b.class */
    public static final class C7920b extends C7919a {

        /* renamed from: h */
        public final ByteBuffer f18583h;

        /* renamed from: i */
        public int f18584i;

        public C7920b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f18583h = byteBuffer;
            this.f18584i = byteBuffer.position();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0.C7919a, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18921a() {
            this.f18583h.position(this.f18584i + m18927d());
        }
    }

    /* renamed from: h.i.a.e.j.j.t0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t0$c.class */
    public static final class C7921c extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7921c(java.lang.String r5) {
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
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0.C7921c.<init>(java.lang.String):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7921c(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0.C7921c.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public C7921c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* renamed from: h.i.a.e.j.j.t0$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t0$d.class */
    public static final class C7922d extends AbstractC7918t0 {

        /* renamed from: d */
        public final ByteBuffer f18585d;

        /* renamed from: e */
        public final ByteBuffer f18586e;

        public C7922d(ByteBuffer byteBuffer) {
            super();
            this.f18585d = byteBuffer;
            this.f18586e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18921a() {
            this.f18585d.position(this.f18586e.position());
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18920a(byte b) throws IOException {
            try {
                this.f18586e.put(b);
            } catch (BufferOverflowException e) {
                throw new C7921c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18919a(int i) throws IOException {
            if (i >= 0) {
                mo18908b(i);
            } else {
                mo18911a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18918a(int i, int i2) throws IOException {
            mo18908b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18917a(int i, long j) throws IOException {
            mo18918a(i, 0);
            mo18911a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18916a(int i, AbstractC7791e0 e0Var) throws IOException {
            mo18918a(i, 2);
            m18926b(e0Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18915a(int i, AbstractC7925t2 t2Var) throws IOException {
            mo18918a(i, 2);
            m18923c(t2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18914a(int i, AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) throws IOException {
            mo18918a(i, 2);
            m18925b(t2Var, k3Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18913a(int i, String str) throws IOException {
            mo18918a(i, 2);
            m18924b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18912a(int i, boolean z) throws IOException {
            mo18918a(i, 0);
            mo18920a(z ? (byte) 1 : (byte) 0);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18911a(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.f18586e.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new C7921c(e);
                }
            }
            this.f18586e.put((byte) j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7783d0
        /* renamed from: a */
        public final void mo18910a(byte[] bArr, int i, int i2) throws IOException {
            mo18901b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final int mo18909b() {
            return this.f18586e.remaining();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18908b(int i) throws IOException {
            while ((i & (-128)) != 0) {
                try {
                    this.f18586e.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new C7921c(e);
                }
            }
            this.f18586e.put((byte) i);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18907b(int i, int i2) throws IOException {
            mo18918a(i, 0);
            mo18919a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18906b(int i, AbstractC7791e0 e0Var) throws IOException {
            mo18918a(1, 3);
            mo18900c(2, i);
            mo18916a(3, e0Var);
            mo18918a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18905b(int i, AbstractC7925t2 t2Var) throws IOException {
            mo18918a(1, 3);
            mo18900c(2, i);
            mo18915a(3, t2Var);
            mo18918a(1, 4);
        }

        /* renamed from: b */
        public final void m18926b(AbstractC7791e0 e0Var) throws IOException {
            mo18908b(e0Var.size());
            e0Var.mo19168a(this);
        }

        /* renamed from: b */
        public final void m18925b(AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) throws IOException {
            AbstractC7943w wVar = (AbstractC7943w) t2Var;
            int e = wVar.mo18852e();
            int i = e;
            if (e == -1) {
                i = k3Var.mo18792c(wVar);
                wVar.mo18854a(i);
            }
            mo18908b(i);
            k3Var.mo18796a((AbstractC7849k3) t2Var, (AbstractC7962y4) this.f18578a);
        }

        /* renamed from: b */
        public final void m18924b(String str) throws IOException {
            int position = this.f18586e.position();
            try {
                int f = AbstractC7918t0.m18951f(str.length() * 3);
                int f2 = AbstractC7918t0.m18951f(str.length());
                if (f2 == f) {
                    int position2 = this.f18586e.position() + f2;
                    this.f18586e.position(position2);
                    m18922c(str);
                    int position3 = this.f18586e.position();
                    this.f18586e.position(position);
                    mo18908b(position3 - position2);
                    this.f18586e.position(position3);
                    return;
                }
                mo18908b(C7858l4.m19256a(str));
                m18922c(str);
            } catch (C7894p4 e) {
                this.f18586e.position(position);
                m18981a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new C7921c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18901b(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f18586e.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new C7921c(e);
            } catch (BufferOverflowException e2) {
                throw new C7921c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18900c(int i, int i2) throws IOException {
            mo18918a(i, 0);
            mo18908b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18899c(int i, long j) throws IOException {
            mo18918a(i, 1);
            mo18898c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18898c(long j) throws IOException {
            try {
                this.f18586e.putLong(j);
            } catch (BufferOverflowException e) {
                throw new C7921c(e);
            }
        }

        /* renamed from: c */
        public final void m18923c(AbstractC7925t2 t2Var) throws IOException {
            mo18908b(t2Var.mo18882d());
            t2Var.mo18884a(this);
        }

        /* renamed from: c */
        public final void m18922c(String str) throws IOException {
            try {
                C7858l4.m19255a(str, this.f18586e);
            } catch (IndexOutOfBoundsException e) {
                throw new C7921c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: d */
        public final void mo18896d(int i) throws IOException {
            try {
                this.f18586e.putInt(i);
            } catch (BufferOverflowException e) {
                throw new C7921c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: e */
        public final void mo18895e(int i, int i2) throws IOException {
            mo18918a(i, 5);
            mo18896d(i2);
        }
    }

    /* renamed from: h.i.a.e.j.j.t0$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t0$e.class */
    public static final class C7923e extends AbstractC7918t0 {

        /* renamed from: d */
        public final ByteBuffer f18587d;

        /* renamed from: e */
        public final ByteBuffer f18588e;

        /* renamed from: f */
        public final long f18589f;

        /* renamed from: g */
        public final long f18590g;

        /* renamed from: h */
        public final long f18591h;

        /* renamed from: i */
        public final long f18592i;

        /* renamed from: j */
        public long f18593j;

        public C7923e(ByteBuffer byteBuffer) {
            super();
            this.f18587d = byteBuffer;
            this.f18588e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f18589f = C7838j4.m19323a(byteBuffer);
            this.f18590g = this.f18589f + byteBuffer.position();
            this.f18591h = this.f18589f + byteBuffer.limit();
            this.f18592i = this.f18591h - 10;
            this.f18593j = this.f18590g;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18921a() {
            this.f18587d.position((int) (this.f18593j - this.f18589f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18920a(byte b) throws IOException {
            long j = this.f18593j;
            if (j < this.f18591h) {
                this.f18593j = 1 + j;
                C7838j4.m19334a(j, b);
                return;
            }
            throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.f18591h), 1));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18919a(int i) throws IOException {
            if (i >= 0) {
                mo18908b(i);
            } else {
                mo18911a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18918a(int i, int i2) throws IOException {
            mo18908b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18917a(int i, long j) throws IOException {
            mo18918a(i, 0);
            mo18911a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18916a(int i, AbstractC7791e0 e0Var) throws IOException {
            mo18918a(i, 2);
            m18904b(e0Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18915a(int i, AbstractC7925t2 t2Var) throws IOException {
            mo18918a(i, 2);
            m18897c(t2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18914a(int i, AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) throws IOException {
            mo18918a(i, 2);
            m18903b(t2Var, k3Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18913a(int i, String str) throws IOException {
            mo18918a(i, 2);
            m18902b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        public final void mo18912a(int i, boolean z) throws IOException {
            mo18918a(i, 0);
            mo18920a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo18911a(long r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 187
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0.C7923e.mo18911a(long):void");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7783d0
        /* renamed from: a */
        public final void mo18910a(byte[] bArr, int i, int i2) throws IOException {
            mo18901b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final int mo18909b() {
            return (int) (this.f18591h - this.f18593j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18908b(int i) throws IOException {
            int i2 = i;
            if (this.f18593j <= this.f18592i) {
                while ((i & (-128)) != 0) {
                    long j = this.f18593j;
                    this.f18593j = j + 1;
                    C7838j4.m19334a(j, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                long j2 = this.f18593j;
                this.f18593j = 1 + j2;
                C7838j4.m19334a(j2, (byte) i);
                return;
            }
            while (true) {
                long j3 = this.f18593j;
                if (j3 >= this.f18591h) {
                    throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j3), Long.valueOf(this.f18591h), 1));
                } else if ((i2 & (-128)) == 0) {
                    this.f18593j = 1 + j3;
                    C7838j4.m19334a(j3, (byte) i2);
                    return;
                } else {
                    this.f18593j = j3 + 1;
                    C7838j4.m19334a(j3, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18907b(int i, int i2) throws IOException {
            mo18918a(i, 0);
            mo18919a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18906b(int i, AbstractC7791e0 e0Var) throws IOException {
            mo18918a(1, 3);
            mo18900c(2, i);
            mo18916a(3, e0Var);
            mo18918a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18905b(int i, AbstractC7925t2 t2Var) throws IOException {
            mo18918a(1, 3);
            mo18900c(2, i);
            mo18915a(3, t2Var);
            mo18918a(1, 4);
        }

        /* renamed from: b */
        public final void m18904b(AbstractC7791e0 e0Var) throws IOException {
            mo18908b(e0Var.size());
            e0Var.mo19168a(this);
        }

        /* renamed from: b */
        public final void m18903b(AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) throws IOException {
            AbstractC7943w wVar = (AbstractC7943w) t2Var;
            int e = wVar.mo18852e();
            int i = e;
            if (e == -1) {
                i = k3Var.mo18792c(wVar);
                wVar.mo18854a(i);
            }
            mo18908b(i);
            k3Var.mo18796a((AbstractC7849k3) t2Var, (AbstractC7962y4) this.f18578a);
        }

        /* renamed from: b */
        public final void m18902b(String str) throws IOException {
            long j = this.f18593j;
            try {
                int f = AbstractC7918t0.m18951f(str.length() * 3);
                int f2 = AbstractC7918t0.m18951f(str.length());
                if (f2 == f) {
                    int i = ((int) (this.f18593j - this.f18589f)) + f2;
                    this.f18588e.position(i);
                    C7858l4.m19255a(str, this.f18588e);
                    int position = this.f18588e.position() - i;
                    mo18908b(position);
                    this.f18593j += position;
                    return;
                }
                int a = C7858l4.m19256a(str);
                mo18908b(a);
                m18894j(this.f18593j);
                C7858l4.m19255a(str, this.f18588e);
                this.f18593j += a;
            } catch (C7894p4 e) {
                this.f18593j = j;
                m18894j(this.f18593j);
                m18981a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new C7921c(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new C7921c(e3);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: b */
        public final void mo18901b(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = this.f18591h;
                long j2 = i2;
                long j3 = this.f18593j;
                if (j - j2 >= j3) {
                    C7838j4.m19320a(bArr, i, j3, j2);
                    this.f18593j += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException(C13032a.f29462d);
            }
            throw new C7921c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f18593j), Long.valueOf(this.f18591h), Integer.valueOf(i2)));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18900c(int i, int i2) throws IOException {
            mo18918a(i, 0);
            mo18908b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18899c(int i, long j) throws IOException {
            mo18918a(i, 1);
            mo18898c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: c */
        public final void mo18898c(long j) throws IOException {
            this.f18588e.putLong((int) (this.f18593j - this.f18589f), j);
            this.f18593j += 8;
        }

        /* renamed from: c */
        public final void m18897c(AbstractC7925t2 t2Var) throws IOException {
            mo18908b(t2Var.mo18882d());
            t2Var.mo18884a(this);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: d */
        public final void mo18896d(int i) throws IOException {
            this.f18588e.putInt((int) (this.f18593j - this.f18589f), i);
            this.f18593j += 4;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0
        /* renamed from: e */
        public final void mo18895e(int i, int i2) throws IOException {
            mo18918a(i, 5);
            mo18896d(i2);
        }

        /* renamed from: j */
        public final void m18894j(long j) {
            this.f18588e.position((int) (j - this.f18589f));
        }
    }

    public AbstractC7918t0() {
    }

    /* renamed from: a */
    public static int m18987a(int i, C7769b2 b2Var) {
        int m = m18931m(i);
        int b = b2Var.m19515b();
        return m + m18951f(b) + b;
    }

    /* renamed from: a */
    public static int m18986a(C7769b2 b2Var) {
        int b = b2Var.m19515b();
        return m18951f(b) + b;
    }

    /* renamed from: a */
    public static int m18985a(AbstractC7791e0 e0Var) {
        int size = e0Var.size();
        return m18951f(size) + size;
    }

    /* renamed from: a */
    public static int m18984a(AbstractC7925t2 t2Var) {
        int d = t2Var.mo18882d();
        return m18951f(d) + d;
    }

    /* renamed from: a */
    public static int m18983a(AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) {
        AbstractC7943w wVar = (AbstractC7943w) t2Var;
        int e = wVar.mo18852e();
        int i = e;
        if (e == -1) {
            i = k3Var.mo18792c(wVar);
            wVar.mo18854a(i);
        }
        return m18951f(i) + i;
    }

    /* renamed from: a */
    public static int m18982a(String str) {
        int i;
        try {
            i = C7858l4.m19256a(str);
        } catch (C7894p4 e) {
            i = str.getBytes(C7891p1.f18512a).length;
        }
        return m18951f(i) + i;
    }

    /* renamed from: a */
    public static AbstractC7918t0 m18980a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new C7920b(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            return C7838j4.m19314c() ? new C7923e(byteBuffer) : new C7922d(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    /* renamed from: a */
    public static AbstractC7918t0 m18978a(byte[] bArr) {
        return new C7919a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m18977b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m18976b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m18975b(int i, double d) {
        return m18931m(i) + 8;
    }

    /* renamed from: b */
    public static int m18974b(int i, float f) {
        return m18931m(i) + 4;
    }

    /* renamed from: b */
    public static int m18972b(int i, C7769b2 b2Var) {
        return (m18931m(1) << 1) + m18946g(2, i) + m18987a(3, b2Var);
    }

    /* renamed from: b */
    public static int m18971b(int i, AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) {
        return m18931m(i) + m18983a(t2Var, k3Var);
    }

    /* renamed from: b */
    public static int m18970b(int i, String str) {
        return m18931m(i) + m18982a(str);
    }

    /* renamed from: b */
    public static int m18969b(int i, boolean z) {
        return m18931m(i) + 1;
    }

    @Deprecated
    /* renamed from: b */
    public static int m18967b(AbstractC7925t2 t2Var) {
        return t2Var.mo18882d();
    }

    /* renamed from: b */
    public static int m18966b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m18965b(byte[] bArr) {
        int length = bArr.length;
        return m18951f(length) + length;
    }

    /* renamed from: c */
    public static int m18962c(int i, AbstractC7791e0 e0Var) {
        int m = m18931m(i);
        int size = e0Var.size();
        return m + m18951f(size) + size;
    }

    /* renamed from: c */
    public static int m18961c(int i, AbstractC7925t2 t2Var) {
        return m18931m(i) + m18984a(t2Var);
    }

    @Deprecated
    /* renamed from: c */
    public static int m18960c(int i, AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) {
        int m = m18931m(i);
        AbstractC7943w wVar = (AbstractC7943w) t2Var;
        int e = wVar.mo18852e();
        int i2 = e;
        if (e == -1) {
            i2 = k3Var.mo18792c(wVar);
            wVar.mo18854a(i2);
        }
        return (m << 1) + i2;
    }

    /* renamed from: d */
    public static int m18958d(int i, long j) {
        return m18931m(i) + m18952e(j);
    }

    /* renamed from: d */
    public static int m18957d(int i, AbstractC7791e0 e0Var) {
        return (m18931m(1) << 1) + m18946g(2, i) + m18962c(3, e0Var);
    }

    /* renamed from: d */
    public static int m18956d(int i, AbstractC7925t2 t2Var) {
        return (m18931m(1) << 1) + m18946g(2, i) + m18961c(3, t2Var);
    }

    /* renamed from: d */
    public static int m18955d(long j) {
        return m18952e(j);
    }

    /* renamed from: e */
    public static int m18954e(int i) {
        if (i >= 0) {
            return m18951f(i);
        }
        return 10;
    }

    /* renamed from: e */
    public static int m18953e(int i, long j) {
        return m18931m(i) + m18952e(j);
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
    public static int m18952e(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7918t0.m18952e(long):int");
    }

    /* renamed from: f */
    public static int m18951f(int i) {
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

    /* renamed from: f */
    public static int m18950f(int i, int i2) {
        return m18931m(i) + m18954e(i2);
    }

    /* renamed from: f */
    public static int m18949f(int i, long j) {
        return m18931m(i) + m18952e(m18937i(j));
    }

    /* renamed from: f */
    public static int m18948f(long j) {
        return m18952e(m18937i(j));
    }

    /* renamed from: g */
    public static int m18947g(int i) {
        return m18951f(m18934k(i));
    }

    /* renamed from: g */
    public static int m18946g(int i, int i2) {
        return m18931m(i) + m18951f(i2);
    }

    /* renamed from: g */
    public static int m18945g(int i, long j) {
        return m18931m(i) + 8;
    }

    /* renamed from: g */
    public static int m18944g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m18943h(int i) {
        return 4;
    }

    /* renamed from: h */
    public static int m18942h(int i, int i2) {
        return m18931m(i) + m18951f(m18934k(i2));
    }

    /* renamed from: h */
    public static int m18941h(int i, long j) {
        return m18931m(i) + 8;
    }

    /* renamed from: h */
    public static int m18940h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m18939i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m18938i(int i, int i2) {
        return m18931m(i) + 4;
    }

    /* renamed from: i */
    public static long m18937i(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: j */
    public static int m18936j(int i) {
        return m18954e(i);
    }

    /* renamed from: j */
    public static int m18935j(int i, int i2) {
        return m18931m(i) + 4;
    }

    /* renamed from: k */
    public static int m18934k(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: k */
    public static int m18933k(int i, int i2) {
        return m18931m(i) + m18954e(i2);
    }

    @Deprecated
    /* renamed from: l */
    public static int m18932l(int i) {
        return m18951f(i);
    }

    /* renamed from: m */
    public static int m18931m(int i) {
        return m18951f(i << 3);
    }

    /* renamed from: a */
    public abstract void mo18921a() throws IOException;

    /* renamed from: a */
    public abstract void mo18920a(byte b) throws IOException;

    /* renamed from: a */
    public final void m18991a(double d) throws IOException {
        mo18898c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m18990a(float f) throws IOException {
        mo18896d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo18919a(int i) throws IOException;

    /* renamed from: a */
    public final void m18989a(int i, double d) throws IOException {
        mo18899c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m18988a(int i, float f) throws IOException {
        mo18895e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo18918a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo18917a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo18916a(int i, AbstractC7791e0 e0Var) throws IOException;

    /* renamed from: a */
    public abstract void mo18915a(int i, AbstractC7925t2 t2Var) throws IOException;

    /* renamed from: a */
    public abstract void mo18914a(int i, AbstractC7925t2 t2Var, AbstractC7849k3 k3Var) throws IOException;

    /* renamed from: a */
    public abstract void mo18913a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo18912a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo18911a(long j) throws IOException;

    /* renamed from: a */
    public final void m18981a(String str, C7894p4 p4Var) throws IOException {
        f18576b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) p4Var);
        byte[] bytes = str.getBytes(C7891p1.f18512a);
        try {
            mo18908b(bytes.length);
            mo18910a(bytes, 0, bytes.length);
        } catch (C7921c e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new C7921c(e2);
        }
    }

    /* renamed from: a */
    public final void m18979a(boolean z) throws IOException {
        mo18920a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public abstract int mo18909b();

    /* renamed from: b */
    public abstract void mo18908b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo18907b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m18973b(int i, long j) throws IOException {
        mo18917a(i, m18937i(j));
    }

    /* renamed from: b */
    public abstract void mo18906b(int i, AbstractC7791e0 e0Var) throws IOException;

    /* renamed from: b */
    public abstract void mo18905b(int i, AbstractC7925t2 t2Var) throws IOException;

    /* renamed from: b */
    public final void m18968b(long j) throws IOException {
        mo18911a(m18937i(j));
    }

    /* renamed from: b */
    public abstract void mo18901b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m18963c(int i) throws IOException {
        mo18908b(m18934k(i));
    }

    /* renamed from: c */
    public abstract void mo18900c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo18899c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo18898c(long j) throws IOException;

    /* renamed from: d */
    public abstract void mo18896d(int i) throws IOException;

    /* renamed from: d */
    public final void m18959d(int i, int i2) throws IOException {
        mo18900c(i, m18934k(i2));
    }

    /* renamed from: e */
    public abstract void mo18895e(int i, int i2) throws IOException;
}

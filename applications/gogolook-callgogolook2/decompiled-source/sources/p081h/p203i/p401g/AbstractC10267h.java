package p081h.p203i.p401g;

import java.io.IOException;
import java.util.Arrays;
import p081h.p203i.p401g.AbstractC10437l0;
/* renamed from: h.i.g.h */
/* loaded from: classes2-dex2jar.jar:h/i/g/h.class */
public abstract class AbstractC10267h {

    /* renamed from: a */
    public int f23100a;

    /* renamed from: b */
    public int f23101b;

    /* renamed from: c */
    public boolean f23102c;

    /* renamed from: h.i.g.h$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/h$b.class */
    public static final class C10269b extends AbstractC10267h {

        /* renamed from: d */
        public final byte[] f23103d;

        /* renamed from: e */
        public final boolean f23104e;

        /* renamed from: f */
        public int f23105f;

        /* renamed from: g */
        public int f23106g;

        /* renamed from: h */
        public int f23107h;

        /* renamed from: i */
        public int f23108i;

        /* renamed from: j */
        public int f23109j;

        /* renamed from: k */
        public boolean f23110k;

        /* renamed from: l */
        public int f23111l;

        public C10269b(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.f23111l = Integer.MAX_VALUE;
            this.f23103d = bArr;
            this.f23105f = i2 + i;
            this.f23107h = i;
            this.f23108i = this.f23107h;
            this.f23104e = z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x015c, code lost:
            if (r0[r0] < 0) goto L_0x015f;
         */
        /* renamed from: A */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m12932A() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 367
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.AbstractC10267h.C10269b.m12932A():long");
        }

        /* renamed from: B */
        public long m12931B() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte x = m12894x();
                j |= (x & Byte.MAX_VALUE) << i;
                if ((x & 128) == 0) {
                    return j;
                }
            }
            throw C10222a0.m13072g();
        }

        /* renamed from: C */
        public final void m12930C() {
            this.f23105f += this.f23106g;
            int i = this.f23105f;
            int i2 = i - this.f23108i;
            int i3 = this.f23111l;
            if (i2 > i3) {
                this.f23106g = i2 - i3;
                this.f23105f = i - this.f23106g;
                return;
            }
            this.f23106g = 0;
        }

        /* renamed from: D */
        public void m12929D() throws IOException {
            int r;
            do {
                r = mo12899r();
                if (r == 0) {
                    return;
                }
            } while (mo12915d(r));
        }

        /* renamed from: E */
        public final void m12928E() throws IOException {
            if (this.f23105f - this.f23107h >= 10) {
                m12927F();
            } else {
                m12926G();
            }
        }

        /* renamed from: F */
        public final void m12927F() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f23103d;
                int i2 = this.f23107h;
                this.f23107h = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw C10222a0.m13072g();
        }

        /* renamed from: G */
        public final void m12926G() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (m12894x() >= 0) {
                    return;
                }
            }
            throw C10222a0.m13072g();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: a */
        public int mo12925a() {
            int i = this.f23111l;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - m12896v();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: a */
        public <T extends AbstractC10437l0> T mo12921a(AbstractC10462s0<T> s0Var, C10459r rVar) throws IOException {
            int k = mo12906k();
            if (this.f23100a < this.f23101b) {
                int c = mo12917c(k);
                this.f23100a++;
                T a = s0Var.mo11788a(this, rVar);
                mo12924a(0);
                this.f23100a--;
                mo12919b(c);
                return a;
            }
            throw C10222a0.m13070i();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: a */
        public void mo12924a(int i) throws C10222a0 {
            if (this.f23109j != i) {
                throw C10222a0.m13076c();
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: a */
        public void mo12923a(int i, AbstractC10437l0.AbstractC10438a aVar, C10459r rVar) throws IOException {
            int i2 = this.f23100a;
            if (i2 < this.f23101b) {
                this.f23100a = i2 + 1;
                aVar.mo11837a(this, rVar);
                mo12924a(C10406k1.m11926a(i, 4));
                this.f23100a--;
                return;
            }
            throw C10222a0.m13070i();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: a */
        public void mo12922a(AbstractC10437l0.AbstractC10438a aVar, C10459r rVar) throws IOException {
            int k = mo12906k();
            if (this.f23100a < this.f23101b) {
                int c = mo12917c(k);
                this.f23100a++;
                aVar.mo11837a(this, rVar);
                mo12924a(0);
                this.f23100a--;
                mo12919b(c);
                return;
            }
            throw C10222a0.m13070i();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: b */
        public void mo12919b(int i) {
            this.f23111l = i;
            m12930C();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: b */
        public boolean mo12920b() throws IOException {
            return m12932A() != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: c */
        public int mo12917c(int i) throws C10222a0 {
            if (i >= 0) {
                int v = i + m12896v();
                int i2 = this.f23111l;
                if (v <= i2) {
                    this.f23111l = v;
                    m12930C();
                    return i2;
                }
                throw C10222a0.m13069j();
            }
            throw C10222a0.m13071h();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: c */
        public AbstractC10253g mo12918c() throws IOException {
            int k = mo12906k();
            if (k > 0) {
                int i = this.f23105f;
                int i2 = this.f23107h;
                if (k <= i - i2) {
                    AbstractC10253g a = (!this.f23104e || !this.f23110k) ? AbstractC10253g.m12972a(this.f23103d, this.f23107h, k) : AbstractC10253g.m12967b(this.f23103d, i2, k);
                    this.f23107h += k;
                    return a;
                }
            }
            return k == 0 ? AbstractC10253g.f23087b : AbstractC10253g.m12968b(m12912f(k));
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: d */
        public double mo12916d() throws IOException {
            return Double.longBitsToDouble(m12892z());
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: d */
        public boolean mo12915d(int i) throws IOException {
            int b = C10406k1.m11924b(i);
            if (b == 0) {
                m12928E();
                return true;
            } else if (b == 1) {
                m12910g(8);
                return true;
            } else if (b == 2) {
                m12910g(mo12906k());
                return true;
            } else if (b == 3) {
                m12929D();
                mo12924a(C10406k1.m11926a(C10406k1.m11927a(i), 4));
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m12910g(4);
                    return true;
                }
                throw C10222a0.m13073f();
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: e */
        public int mo12914e() throws IOException {
            return mo12906k();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: f */
        public int mo12913f() throws IOException {
            return m12893y();
        }

        /* renamed from: f */
        public byte[] m12912f(int i) throws IOException {
            if (i > 0) {
                int i2 = this.f23105f;
                int i3 = this.f23107h;
                if (i <= i2 - i3) {
                    this.f23107h = i + i3;
                    return Arrays.copyOfRange(this.f23103d, i3, this.f23107h);
                }
            }
            if (i > 0) {
                throw C10222a0.m13069j();
            } else if (i == 0) {
                return C10516z.f23905c;
            } else {
                throw C10222a0.m13071h();
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: g */
        public long mo12911g() throws IOException {
            return m12892z();
        }

        /* renamed from: g */
        public void m12910g(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.f23105f;
                int i3 = this.f23107h;
                if (i <= i2 - i3) {
                    this.f23107h = i3 + i;
                    return;
                }
            }
            if (i < 0) {
                throw C10222a0.m13071h();
            }
            throw C10222a0.m13069j();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: h */
        public float mo12909h() throws IOException {
            return Float.intBitsToFloat(m12893y());
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: i */
        public int mo12908i() throws IOException {
            return mo12906k();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: j */
        public long mo12907j() throws IOException {
            return m12932A();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x010d, code lost:
            if (r0[r0] < 0) goto L_0x0110;
         */
        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo12906k() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 286
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.AbstractC10267h.C10269b.mo12906k():int");
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: l */
        public int mo12905l() throws IOException {
            return m12893y();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: m */
        public long mo12904m() throws IOException {
            return m12892z();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: n */
        public int mo12903n() throws IOException {
            return AbstractC10267h.m12934e(mo12906k());
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: o */
        public long mo12902o() throws IOException {
            return AbstractC10267h.m12938a(m12932A());
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: p */
        public String mo12901p() throws IOException {
            int k = mo12906k();
            if (k > 0) {
                int i = this.f23105f;
                int i2 = this.f23107h;
                if (k <= i - i2) {
                    String str = new String(this.f23103d, i2, k, C10516z.f23903a);
                    this.f23107h += k;
                    return str;
                }
            }
            if (k == 0) {
                return "";
            }
            if (k < 0) {
                throw C10222a0.m13071h();
            }
            throw C10222a0.m13069j();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: q */
        public String mo12900q() throws IOException {
            int k = mo12906k();
            if (k > 0) {
                int i = this.f23105f;
                int i2 = this.f23107h;
                if (k <= i - i2) {
                    String b = C10289j1.m12751b(this.f23103d, i2, k);
                    this.f23107h += k;
                    return b;
                }
            }
            if (k == 0) {
                return "";
            }
            if (k <= 0) {
                throw C10222a0.m13071h();
            }
            throw C10222a0.m13069j();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: r */
        public int mo12899r() throws IOException {
            if (m12895w()) {
                this.f23109j = 0;
                return 0;
            }
            this.f23109j = mo12906k();
            if (C10406k1.m11927a(this.f23109j) != 0) {
                return this.f23109j;
            }
            throw C10222a0.m13075d();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: s */
        public int mo12898s() throws IOException {
            return mo12906k();
        }

        @Override // p081h.p203i.p401g.AbstractC10267h
        /* renamed from: t */
        public long mo12897t() throws IOException {
            return m12932A();
        }

        /* renamed from: v */
        public int m12896v() {
            return this.f23107h - this.f23108i;
        }

        /* renamed from: w */
        public boolean m12895w() throws IOException {
            return this.f23107h == this.f23105f;
        }

        /* renamed from: x */
        public byte m12894x() throws IOException {
            int i = this.f23107h;
            if (i != this.f23105f) {
                byte[] bArr = this.f23103d;
                this.f23107h = i + 1;
                return bArr[i];
            }
            throw C10222a0.m13069j();
        }

        /* renamed from: y */
        public int m12893y() throws IOException {
            int i = this.f23107h;
            if (this.f23105f - i >= 4) {
                byte[] bArr = this.f23103d;
                this.f23107h = i + 4;
                return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
            }
            throw C10222a0.m13069j();
        }

        /* renamed from: z */
        public long m12892z() throws IOException {
            int i = this.f23107h;
            if (this.f23105f - i >= 8) {
                byte[] bArr = this.f23103d;
                this.f23107h = i + 8;
                return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
            }
            throw C10222a0.m13069j();
        }
    }

    public AbstractC10267h() {
        this.f23101b = 100;
        this.f23102c = false;
    }

    /* renamed from: a */
    public static long m12938a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static AbstractC10267h m12937a(byte[] bArr) {
        return m12936a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC10267h m12936a(byte[] bArr, int i, int i2) {
        return m12935a(bArr, i, i2, false);
    }

    /* renamed from: a */
    public static AbstractC10267h m12935a(byte[] bArr, int i, int i2, boolean z) {
        C10269b bVar = new C10269b(bArr, i, i2, z);
        try {
            bVar.mo12917c(i2);
            return bVar;
        } catch (C10222a0 e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m12934e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: a */
    public abstract int mo12925a();

    /* renamed from: a */
    public abstract <T extends AbstractC10437l0> T mo12921a(AbstractC10462s0<T> s0Var, C10459r rVar) throws IOException;

    /* renamed from: a */
    public abstract void mo12924a(int i) throws C10222a0;

    /* renamed from: a */
    public abstract void mo12923a(int i, AbstractC10437l0.AbstractC10438a aVar, C10459r rVar) throws IOException;

    /* renamed from: a */
    public abstract void mo12922a(AbstractC10437l0.AbstractC10438a aVar, C10459r rVar) throws IOException;

    /* renamed from: b */
    public abstract void mo12919b(int i);

    /* renamed from: b */
    public abstract boolean mo12920b() throws IOException;

    /* renamed from: c */
    public abstract int mo12917c(int i) throws C10222a0;

    /* renamed from: c */
    public abstract AbstractC10253g mo12918c() throws IOException;

    /* renamed from: d */
    public abstract double mo12916d() throws IOException;

    /* renamed from: d */
    public abstract boolean mo12915d(int i) throws IOException;

    /* renamed from: e */
    public abstract int mo12914e() throws IOException;

    /* renamed from: f */
    public abstract int mo12913f() throws IOException;

    /* renamed from: g */
    public abstract long mo12911g() throws IOException;

    /* renamed from: h */
    public abstract float mo12909h() throws IOException;

    /* renamed from: i */
    public abstract int mo12908i() throws IOException;

    /* renamed from: j */
    public abstract long mo12907j() throws IOException;

    /* renamed from: k */
    public abstract int mo12906k() throws IOException;

    /* renamed from: l */
    public abstract int mo12905l() throws IOException;

    /* renamed from: m */
    public abstract long mo12904m() throws IOException;

    /* renamed from: n */
    public abstract int mo12903n() throws IOException;

    /* renamed from: o */
    public abstract long mo12902o() throws IOException;

    /* renamed from: p */
    public abstract String mo12901p() throws IOException;

    /* renamed from: q */
    public abstract String mo12900q() throws IOException;

    /* renamed from: r */
    public abstract int mo12899r() throws IOException;

    /* renamed from: s */
    public abstract int mo12898s() throws IOException;

    /* renamed from: t */
    public abstract long mo12897t() throws IOException;

    /* renamed from: u */
    public final boolean m12933u() {
        return this.f23102c;
    }
}

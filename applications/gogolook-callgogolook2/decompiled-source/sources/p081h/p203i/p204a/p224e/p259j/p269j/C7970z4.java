package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.z4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/z4.class */
public final class C7970z4 {

    /* renamed from: a */
    public final byte[] f18689a;

    /* renamed from: b */
    public final int f18690b;

    /* renamed from: c */
    public final int f18691c;

    /* renamed from: d */
    public int f18692d;

    /* renamed from: e */
    public int f18693e;

    /* renamed from: f */
    public int f18694f;

    /* renamed from: g */
    public int f18695g;

    /* renamed from: i */
    public int f18697i;

    /* renamed from: k */
    public AbstractC7890p0 f18699k;

    /* renamed from: h */
    public int f18696h = Integer.MAX_VALUE;

    /* renamed from: j */
    public int f18698j = 64;

    public C7970z4(byte[] bArr, int i, int i2) {
        this.f18689a = bArr;
        this.f18690b = i;
        int i3 = i2 + i;
        this.f18692d = i3;
        this.f18691c = i3;
        this.f18694f = i;
    }

    /* renamed from: a */
    public static C7970z4 m18730a(byte[] bArr, int i, int i2) {
        return new C7970z4(bArr, 0, i2);
    }

    /* renamed from: a */
    public final int m18735a() {
        return this.f18694f - this.f18690b;
    }

    /* renamed from: a */
    public final <T extends AbstractC7869n1<T, ?>> T m18732a(AbstractC7794e3<T> e3Var) throws IOException {
        try {
            if (this.f18699k == null) {
                this.f18699k = AbstractC7890p0.m19111a(this.f18689a, this.f18690b, this.f18691c);
            }
            int t = this.f18699k.mo19053t();
            int i = this.f18694f - this.f18690b;
            if (t <= i) {
                this.f18699k.mo19067f(i - t);
                this.f18699k.m19109c(this.f18698j - this.f18697i);
                T t2 = (T) ((AbstractC7869n1) this.f18699k.mo19076a(e3Var, C7965z0.m18738d()));
                m18725c(this.f18695g);
                return t2;
            }
            throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(t), Integer.valueOf(i)));
        } catch (C7924t1 e) {
            throw new C7830i5("", e);
        }
    }

    /* renamed from: a */
    public final void m18734a(int i) {
        m18727b(i, this.f18695g);
    }

    /* renamed from: a */
    public final void m18731a(AbstractC7843j5 j5Var) throws IOException {
        int d = m18724d();
        if (this.f18697i < this.f18698j) {
            int d2 = m18723d(d);
            this.f18697i++;
            j5Var.mo18860a(this);
            m18728b(0);
            this.f18697i--;
            m18721e(d2);
            return;
        }
        throw new C7830i5("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: a */
    public final byte[] m18733a(int i, int i2) {
        if (i2 == 0) {
            return C7866m5.f18419b;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f18689a, this.f18690b + i, bArr, 0, i2);
        return bArr;
    }

    /* renamed from: b */
    public final String m18729b() throws IOException {
        int d = m18724d();
        if (d >= 0) {
            int i = this.f18692d;
            int i2 = this.f18694f;
            if (d <= i - i2) {
                String str = new String(this.f18689a, i2, d, C7822h5.f18339a);
                this.f18694f += d;
                return str;
            }
            throw C7830i5.m19342a();
        }
        throw C7830i5.m19341b();
    }

    /* renamed from: b */
    public final void m18728b(int i) throws C7830i5 {
        if (this.f18695g != i) {
            throw new C7830i5("Protocol message end-group tag did not match expected tag.");
        }
    }

    /* renamed from: b */
    public final void m18727b(int i, int i2) {
        int i3 = this.f18694f;
        int i4 = this.f18690b;
        if (i > i3 - i4) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(i3 - i4);
            throw new IllegalArgumentException(sb.toString());
        } else if (i >= 0) {
            this.f18694f = i4 + i;
            this.f18695g = i2;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* renamed from: c */
    public final int m18726c() throws IOException {
        if (this.f18694f == this.f18692d) {
            this.f18695g = 0;
            return 0;
        }
        this.f18695g = m18724d();
        int i = this.f18695g;
        if (i != 0) {
            return i;
        }
        throw new C7830i5("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: c */
    public final boolean m18725c(int i) throws IOException {
        int c;
        int i2 = i & 7;
        if (i2 == 0) {
            m18724d();
            return true;
        } else if (i2 == 1) {
            m18718g();
            m18718g();
            m18718g();
            m18718g();
            m18718g();
            m18718g();
            m18718g();
            m18718g();
            return true;
        } else if (i2 == 2) {
            m18719f(m18724d());
            return true;
        } else if (i2 == 3) {
            do {
                c = m18726c();
                if (c == 0) {
                    break;
                }
            } while (m18725c(c));
            m18728b(((i >>> 3) << 3) | 4);
            return true;
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                m18718g();
                m18718g();
                m18718g();
                m18718g();
                return true;
            }
            throw new C7830i5("Protocol message tag had invalid wire type.");
        }
    }

    /* renamed from: d */
    public final int m18724d() throws IOException {
        int i;
        int i2;
        byte g = m18718g();
        if (g >= 0) {
            return g;
        }
        int i3 = g & Byte.MAX_VALUE;
        byte g2 = m18718g();
        if (g2 >= 0) {
            i2 = g2 << 7;
        } else {
            i3 |= (g2 & Byte.MAX_VALUE) << 7;
            byte g3 = m18718g();
            if (g3 >= 0) {
                i2 = g3 << 14;
            } else {
                i3 |= (g3 & Byte.MAX_VALUE) << 14;
                byte g4 = m18718g();
                if (g4 >= 0) {
                    i2 = g4 << 21;
                } else {
                    byte g5 = m18718g();
                    int i4 = i3 | ((g4 & Byte.MAX_VALUE) << 21) | (g5 << 28);
                    i = i4;
                    if (g5 < 0) {
                        for (int i5 = 0; i5 < 5; i5++) {
                            if (m18718g() >= 0) {
                                return i4;
                            }
                        }
                        throw C7830i5.m19340c();
                    }
                    return i;
                }
            }
        }
        i = i3 | i2;
        return i;
    }

    /* renamed from: d */
    public final int m18723d(int i) throws C7830i5 {
        if (i >= 0) {
            int i2 = i + this.f18694f;
            int i3 = this.f18696h;
            if (i2 <= i3) {
                this.f18696h = i2;
                m18720f();
                return i3;
            }
            throw C7830i5.m19342a();
        }
        throw C7830i5.m19341b();
    }

    /* renamed from: e */
    public final long m18722e() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte g = m18718g();
            j |= (g & Byte.MAX_VALUE) << i;
            if ((g & 128) == 0) {
                return j;
            }
        }
        throw C7830i5.m19340c();
    }

    /* renamed from: e */
    public final void m18721e(int i) {
        this.f18696h = i;
        m18720f();
    }

    /* renamed from: f */
    public final void m18720f() {
        this.f18692d += this.f18693e;
        int i = this.f18692d;
        int i2 = this.f18696h;
        if (i > i2) {
            this.f18693e = i - i2;
            this.f18692d = i - this.f18693e;
            return;
        }
        this.f18693e = 0;
    }

    /* renamed from: f */
    public final void m18719f(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f18694f;
            int i3 = this.f18696h;
            if (i2 + i > i3) {
                m18719f(i3 - i2);
                throw C7830i5.m19342a();
            } else if (i <= this.f18692d - i2) {
                this.f18694f = i2 + i;
            } else {
                throw C7830i5.m19342a();
            }
        } else {
            throw C7830i5.m19341b();
        }
    }

    /* renamed from: g */
    public final byte m18718g() throws IOException {
        int i = this.f18694f;
        if (i != this.f18692d) {
            byte[] bArr = this.f18689a;
            this.f18694f = i + 1;
            return bArr[i];
        }
        throw C7830i5.m19342a();
    }

    /* renamed from: h */
    public final int m18717h() {
        int i = this.f18696h;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - this.f18694f;
    }
}

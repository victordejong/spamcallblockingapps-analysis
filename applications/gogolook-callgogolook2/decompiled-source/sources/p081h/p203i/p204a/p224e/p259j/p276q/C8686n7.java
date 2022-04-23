package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.n7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/n7.class */
public final class C8686n7 {

    /* renamed from: a */
    public final byte[] f19882a;

    /* renamed from: b */
    public final int f19883b;

    /* renamed from: c */
    public final int f19884c;

    /* renamed from: d */
    public int f19885d;

    /* renamed from: e */
    public int f19886e;

    /* renamed from: f */
    public int f19887f;

    /* renamed from: g */
    public int f19888g;

    /* renamed from: i */
    public int f19890i;

    /* renamed from: k */
    public AbstractC8590e3 f19892k;

    /* renamed from: h */
    public int f19889h = Integer.MAX_VALUE;

    /* renamed from: j */
    public int f19891j = 64;

    public C8686n7(byte[] bArr, int i, int i2) {
        this.f19882a = bArr;
        this.f19883b = i;
        int i3 = i2 + i;
        this.f19885d = i3;
        this.f19884c = i3;
        this.f19887f = i;
    }

    /* renamed from: a */
    public static C8686n7 m17304a(byte[] bArr, int i, int i2) {
        return new C8686n7(bArr, 0, i2);
    }

    /* renamed from: a */
    public final int m17309a() {
        return this.f19887f - this.f19883b;
    }

    /* renamed from: a */
    public final <T extends AbstractC8568c4<T, ?>> T m17306a(AbstractC8739t5<T> t5Var) throws IOException {
        try {
            if (this.f19892k == null) {
                this.f19892k = AbstractC8590e3.m17694a(this.f19882a, this.f19883b, this.f19884c);
            }
            int t = this.f19892k.mo17634t();
            int i = this.f19887f - this.f19883b;
            if (t <= i) {
                this.f19892k.mo17648f(i - t);
                this.f19892k.m17692c(this.f19891j - this.f19890i);
                T t2 = (T) ((AbstractC8568c4) this.f19892k.mo17657a(t5Var, C8691o3.m17279d()));
                m17302b(this.f19888g);
                return t2;
            }
            throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(t), Integer.valueOf(i)));
        } catch (C8647j4 e) {
            throw new C8759v7("", e);
        }
    }

    /* renamed from: a */
    public final void m17308a(int i) throws C8759v7 {
        if (this.f19888g != i) {
            throw new C8759v7("Protocol message end-group tag did not match expected tag.");
        }
    }

    /* renamed from: a */
    public final void m17305a(AbstractC8768w7 w7Var) throws IOException {
        int e = m17296e();
        if (this.f19890i < this.f19891j) {
            int c = m17299c(e);
            this.f19890i++;
            w7Var.mo16953a(this);
            m17308a(0);
            this.f19890i--;
            m17297d(c);
            return;
        }
        throw C8759v7.m17092d();
    }

    /* renamed from: a */
    public final byte[] m17307a(int i, int i2) {
        if (i2 == 0) {
            return C8799z7.f20162c;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f19882a, this.f19883b + i, bArr, 0, i2);
        return bArr;
    }

    /* renamed from: b */
    public final String m17303b() throws IOException {
        int e = m17296e();
        if (e >= 0) {
            int i = this.f19885d;
            int i2 = this.f19887f;
            if (e <= i - i2) {
                String str = new String(this.f19882a, i2, e, C8750u7.f20011a);
                this.f19887f += e;
                return str;
            }
            throw C8759v7.m17095a();
        }
        throw C8759v7.m17094b();
    }

    /* renamed from: b */
    public final void m17301b(int i, int i2) {
        int i3 = this.f19887f;
        int i4 = this.f19883b;
        if (i > i3 - i4) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(i3 - i4);
            throw new IllegalArgumentException(sb.toString());
        } else if (i >= 0) {
            this.f19887f = i4 + i;
            this.f19888g = i2;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* renamed from: b */
    public final boolean m17302b(int i) throws IOException {
        int c;
        int i2 = i & 7;
        if (i2 == 0) {
            m17296e();
            return true;
        } else if (i2 == 1) {
            m17291h();
            return true;
        } else if (i2 == 2) {
            m17295e(m17296e());
            return true;
        } else if (i2 == 3) {
            do {
                c = m17300c();
                if (c == 0) {
                    break;
                }
            } while (m17302b(c));
            m17308a(((i >>> 3) << 3) | 4);
            return true;
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                m17292g();
                return true;
            }
            throw new C8759v7("Protocol message tag had invalid wire type.");
        }
    }

    /* renamed from: c */
    public final int m17300c() throws IOException {
        if (this.f19887f == this.f19885d) {
            this.f19888g = 0;
            return 0;
        }
        this.f19888g = m17296e();
        int i = this.f19888g;
        if (i != 0) {
            return i;
        }
        throw new C8759v7("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: c */
    public final int m17299c(int i) throws C8759v7 {
        if (i >= 0) {
            int i2 = i + this.f19887f;
            int i3 = this.f19889h;
            if (i2 <= i3) {
                this.f19889h = i2;
                m17290i();
                return i3;
            }
            throw C8759v7.m17095a();
        }
        throw C8759v7.m17094b();
    }

    /* renamed from: d */
    public final void m17297d(int i) {
        this.f19889h = i;
        m17290i();
    }

    /* renamed from: d */
    public final boolean m17298d() throws IOException {
        return m17296e() != 0;
    }

    /* renamed from: e */
    public final int m17296e() throws IOException {
        int i;
        int i2;
        byte j = m17289j();
        if (j >= 0) {
            return j;
        }
        int i3 = j & Byte.MAX_VALUE;
        byte j2 = m17289j();
        if (j2 >= 0) {
            i2 = j2 << 7;
        } else {
            i3 |= (j2 & Byte.MAX_VALUE) << 7;
            byte j3 = m17289j();
            if (j3 >= 0) {
                i2 = j3 << 14;
            } else {
                i3 |= (j3 & Byte.MAX_VALUE) << 14;
                byte j4 = m17289j();
                if (j4 >= 0) {
                    i2 = j4 << 21;
                } else {
                    byte j5 = m17289j();
                    int i4 = i3 | ((j4 & Byte.MAX_VALUE) << 21) | (j5 << 28);
                    i = i4;
                    if (j5 < 0) {
                        for (int i5 = 0; i5 < 5; i5++) {
                            if (m17289j() >= 0) {
                                return i4;
                            }
                        }
                        throw C8759v7.m17093c();
                    }
                    return i;
                }
            }
        }
        i = i3 | i2;
        return i;
    }

    /* renamed from: e */
    public final void m17295e(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f19887f;
            int i3 = this.f19889h;
            if (i2 + i > i3) {
                m17295e(i3 - i2);
                throw C8759v7.m17095a();
            } else if (i <= this.f19885d - i2) {
                this.f19887f = i2 + i;
            } else {
                throw C8759v7.m17095a();
            }
        } else {
            throw C8759v7.m17094b();
        }
    }

    /* renamed from: f */
    public final long m17294f() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte j2 = m17289j();
            j |= (j2 & Byte.MAX_VALUE) << i;
            if ((j2 & 128) == 0) {
                return j;
            }
        }
        throw C8759v7.m17093c();
    }

    /* renamed from: f */
    public final void m17293f(int i) {
        m17301b(i, this.f19888g);
    }

    /* renamed from: g */
    public final int m17292g() throws IOException {
        return (m17289j() & 255) | ((m17289j() & 255) << 8) | ((m17289j() & 255) << 16) | ((m17289j() & 255) << 24);
    }

    /* renamed from: h */
    public final long m17291h() throws IOException {
        byte j = m17289j();
        return ((m17289j() & 255) << 8) | (j & 255) | ((m17289j() & 255) << 16) | ((m17289j() & 255) << 24) | ((m17289j() & 255) << 32) | ((m17289j() & 255) << 40) | ((m17289j() & 255) << 48) | ((m17289j() & 255) << 56);
    }

    /* renamed from: i */
    public final void m17290i() {
        this.f19885d += this.f19886e;
        int i = this.f19885d;
        int i2 = this.f19889h;
        if (i > i2) {
            this.f19886e = i - i2;
            this.f19885d = i - this.f19886e;
            return;
        }
        this.f19886e = 0;
    }

    /* renamed from: j */
    public final byte m17289j() throws IOException {
        int i = this.f19887f;
        if (i != this.f19885d) {
            byte[] bArr = this.f19882a;
            this.f19887f = i + 1;
            return bArr[i];
        }
        throw C8759v7.m17095a();
    }

    /* renamed from: k */
    public final int m17288k() {
        int i = this.f19889h;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - this.f19887f;
    }
}

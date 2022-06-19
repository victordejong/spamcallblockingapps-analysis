package p000a;

import java.util.Arrays;
/* renamed from: a.q */
/* loaded from: classes-dex2jar.jar:a/q.class */
public final class C0022q extends C0008f {

    /* renamed from: f */
    final transient byte[][] f53f;

    /* renamed from: g */
    final transient int[] f54g;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public C0022q(C0005c c0005c, int i) {
        super(null);
        C0027u.m22450a(c0005c.f14b, 0L, i);
        C0020o c0020o = c0005c.f13a;
        int i2 = 0;
        int i3 = 0;
        while (i3 < i) {
            if (c0020o.f46c == c0020o.f45b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += c0020o.f46c - c0020o.f45b;
            i2++;
            c0020o = c0020o.f49f;
        }
        this.f53f = new byte[i2];
        this.f54g = new int[i2 * 2];
        C0020o c0020o2 = c0005c.f13a;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i) {
            this.f53f[i4] = c0020o2.f44a;
            int i6 = (c0020o2.f46c - c0020o2.f45b) + i5;
            i5 = i6;
            if (i6 > i) {
                i5 = i;
            }
            this.f54g[i4] = i5;
            this.f54g[this.f53f.length + i4] = c0020o2.f45b;
            c0020o2.f47d = true;
            i4++;
            c0020o2 = c0020o2.f49f;
        }
    }

    /* renamed from: b */
    private int m22467b(int i) {
        int binarySearch = Arrays.binarySearch(this.f54g, 0, this.f53f.length, i + 1);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        }
        return binarySearch;
    }

    /* renamed from: i */
    private C0008f m22460i() {
        return new C0008f(mo22461h());
    }

    private Object writeReplace() {
        return m22460i();
    }

    @Override // p000a.C0008f
    /* renamed from: a */
    public byte mo22473a(int i) {
        C0027u.m22450a(this.f54g[this.f53f.length - 1], i, 1L);
        int m22467b = m22467b(i);
        return this.f53f[m22467b][(i - (m22467b == 0 ? 0 : this.f54g[m22467b - 1])) + this.f54g[this.f53f.length + m22467b]];
    }

    @Override // p000a.C0008f
    /* renamed from: a */
    public C0008f mo22472a(int i, int i2) {
        return m22460i().mo22472a(i, i2);
    }

    @Override // p000a.C0008f
    /* renamed from: a */
    public String mo22474a() {
        return m22460i().mo22474a();
    }

    @Override // p000a.C0008f
    /* renamed from: a */
    public void mo22469a(C0005c c0005c) {
        int length = this.f53f.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                c0005c.f14b += i3;
                return;
            }
            int i4 = this.f54g[length + i];
            int i5 = this.f54g[i];
            C0020o c0020o = new C0020o(this.f53f[i], i4, (i4 + i5) - i3, true, false);
            if (c0005c.f13a == null) {
                c0020o.f50g = c0020o;
                c0020o.f49f = c0020o;
                c0005c.f13a = c0020o;
            } else {
                c0005c.f13a.f50g.m22480a(c0020o);
            }
            i++;
            i2 = i5;
        }
    }

    @Override // p000a.C0008f
    /* renamed from: a */
    public boolean mo22471a(int i, C0008f c0008f, int i2, int i3) {
        boolean z = false;
        if (i >= 0) {
            if (i <= mo22462g() - i3) {
                int i4 = i;
                int m22467b = m22467b(i);
                while (true) {
                    if (i3 <= 0) {
                        z = true;
                        break;
                    }
                    int i5 = m22467b == 0 ? 0 : this.f54g[m22467b - 1];
                    int min = Math.min(i3, ((this.f54g[m22467b] - i5) + i5) - i4);
                    z = false;
                    if (!c0008f.mo22470a(i2, this.f53f[m22467b], (i4 - i5) + this.f54g[this.f53f.length + m22467b], min)) {
                        break;
                    }
                    i4 += min;
                    i2 += min;
                    i3 -= min;
                    m22467b++;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // p000a.C0008f
    /* renamed from: a */
    public boolean mo22470a(int i, byte[] bArr, int i2, int i3) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= mo22462g() - i3) {
                z = false;
                if (i2 >= 0) {
                    if (i2 <= bArr.length - i3) {
                        int m22467b = m22467b(i);
                        while (true) {
                            if (i3 <= 0) {
                                z = true;
                                break;
                            }
                            int i4 = m22467b == 0 ? 0 : this.f54g[m22467b - 1];
                            int min = Math.min(i3, ((this.f54g[m22467b] - i4) + i4) - i);
                            z = false;
                            if (!C0027u.m22447a(this.f53f[m22467b], (i - i4) + this.f54g[this.f53f.length + m22467b], bArr, i2, min)) {
                                break;
                            }
                            i += min;
                            i2 += min;
                            i3 -= min;
                            m22467b++;
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    @Override // p000a.C0008f
    /* renamed from: b */
    public String mo22468b() {
        return m22460i().mo22468b();
    }

    @Override // p000a.C0008f
    /* renamed from: c */
    public C0008f mo22466c() {
        return m22460i().mo22466c();
    }

    @Override // p000a.C0008f
    /* renamed from: d */
    public C0008f mo22465d() {
        return m22460i().mo22465d();
    }

    @Override // p000a.C0008f
    /* renamed from: e */
    public String mo22464e() {
        return m22460i().mo22464e();
    }

    @Override // p000a.C0008f
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            z = (obj instanceof C0008f) && ((C0008f) obj).mo22462g() == mo22462g() && mo22471a(0, (C0008f) obj, 0, mo22462g());
        }
        return z;
    }

    @Override // p000a.C0008f
    /* renamed from: f */
    public C0008f mo22463f() {
        return m22460i().mo22463f();
    }

    @Override // p000a.C0008f
    /* renamed from: g */
    public int mo22462g() {
        return this.f54g[this.f53f.length - 1];
    }

    @Override // p000a.C0008f
    /* renamed from: h */
    public byte[] mo22461h() {
        byte[] bArr = new byte[this.f54g[this.f53f.length - 1]];
        int length = this.f53f.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                int i4 = this.f54g[length + i];
                int i5 = this.f54g[i];
                System.arraycopy(this.f53f[i], i4, bArr, i3, i5 - i3);
                i++;
                i2 = i5;
            } else {
                return bArr;
            }
        }
    }

    @Override // p000a.C0008f
    public int hashCode() {
        int i = this.f18d;
        if (i == 0) {
            i = 1;
            int length = this.f53f.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i2 >= length) {
                    break;
                }
                byte[] bArr = this.f53f[i2];
                int i5 = this.f54g[length + i2];
                int i6 = this.f54g[i2];
                for (int i7 = i5; i7 < i5 + (i6 - i4); i7++) {
                    i = bArr[i7] + (i * 31);
                }
                i2++;
                i3 = i6;
            }
            this.f18d = i;
        }
        return i;
    }

    @Override // p000a.C0008f
    public String toString() {
        return m22460i().toString();
    }
}

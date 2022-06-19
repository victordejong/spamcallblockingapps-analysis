package com.bytedance.sdk.p127a.p128a;

import java.util.Arrays;
/* renamed from: com.bytedance.sdk.a.a.q */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/q.class */
public final class C3988q extends C3973f {

    /* renamed from: f */
    final transient byte[][] f14460f;

    /* renamed from: g */
    final transient int[] f14461g;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public C3988q(C3969c c3969c, int i) {
        super(null);
        C3993u.m37014a(c3969c.f14419b, 0L, i);
        C3986o c3986o = c3969c.f14418a;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            if (c3986o.f14453c == c3986o.f14452b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i2 += c3986o.f14453c - c3986o.f14452b;
            i3++;
            c3986o = c3986o.f14456f;
        }
        this.f14460f = new byte[i3];
        this.f14461g = new int[i3 * 2];
        C3986o c3986o2 = c3969c.f14418a;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i) {
            this.f14460f[i4] = c3986o2.f14451a;
            int i6 = i5 + (c3986o2.f14453c - c3986o2.f14452b);
            i5 = i6;
            if (i6 > i) {
                i5 = i;
            }
            int[] iArr = this.f14461g;
            iArr[i4] = i5;
            iArr[this.f14460f.length + i4] = c3986o2.f14452b;
            c3986o2.f14454d = true;
            i4++;
            c3986o2 = c3986o2.f14456f;
        }
    }

    /* renamed from: b */
    private int m37031b(int i) {
        int binarySearch = Arrays.binarySearch(this.f14461g, 0, this.f14460f.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    /* renamed from: i */
    private C3973f m37024i() {
        return new C3973f(mo37025h());
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: a */
    public final byte mo37037a(int i) {
        C3993u.m37014a(this.f14461g[this.f14460f.length - 1], i, 1L);
        int m37031b = m37031b(i);
        int i2 = m37031b == 0 ? 0 : this.f14461g[m37031b - 1];
        int[] iArr = this.f14461g;
        byte[][] bArr = this.f14460f;
        return bArr[m37031b][(i - i2) + iArr[bArr.length + m37031b]];
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: a */
    public final C3973f mo37036a(int i, int i2) {
        return m37024i().mo37036a(i, i2);
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: a */
    public final String mo37038a() {
        return m37024i().mo37038a();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: a */
    public final void mo37033a(C3969c c3969c) {
        int length = this.f14460f.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                c3969c.f14419b += i3;
                return;
            }
            int[] iArr = this.f14461g;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            C3986o c3986o = new C3986o(this.f14460f[i], i4, (i4 + i5) - i3, true, false);
            if (c3969c.f14418a == null) {
                c3986o.f14457g = c3986o;
                c3986o.f14456f = c3986o;
                c3969c.f14418a = c3986o;
            } else {
                c3969c.f14418a.f14457g.m37044a(c3986o);
            }
            i++;
            i2 = i5;
        }
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: a */
    public final boolean mo37035a(int i, C3973f c3973f, int i2, int i3) {
        if (i < 0 || i > mo37026g() - i3) {
            return false;
        }
        int m37031b = m37031b(i);
        while (i3 > 0) {
            int i4 = m37031b == 0 ? 0 : this.f14461g[m37031b - 1];
            int min = Math.min(i3, ((this.f14461g[m37031b] - i4) + i4) - i);
            int[] iArr = this.f14461g;
            byte[][] bArr = this.f14460f;
            if (!c3973f.mo37034a(i2, bArr[m37031b], (i - i4) + iArr[bArr.length + m37031b], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m37031b++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: a */
    public final boolean mo37034a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mo37026g() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int m37031b = m37031b(i);
        while (i3 > 0) {
            int i4 = m37031b == 0 ? 0 : this.f14461g[m37031b - 1];
            int min = Math.min(i3, ((this.f14461g[m37031b] - i4) + i4) - i);
            int[] iArr = this.f14461g;
            byte[][] bArr2 = this.f14460f;
            if (!C3993u.m37011a(bArr2[m37031b], (i - i4) + iArr[bArr2.length + m37031b], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m37031b++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: b */
    public final String mo37032b() {
        return m37024i().mo37032b();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: c */
    public final C3973f mo37030c() {
        return m37024i().mo37030c();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: d */
    public final C3973f mo37029d() {
        return m37024i().mo37029d();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: e */
    public final String mo37028e() {
        return m37024i().mo37028e();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3973f)) {
            return false;
        }
        C3973f c3973f = (C3973f) obj;
        return c3973f.mo37026g() == mo37026g() && mo37035a(0, c3973f, 0, mo37026g());
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: f */
    public final C3973f mo37027f() {
        return m37024i().mo37027f();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: g */
    public final int mo37026g() {
        return this.f14461g[this.f14460f.length - 1];
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    /* renamed from: h */
    public final byte[] mo37025h() {
        int[] iArr = this.f14461g;
        byte[][] bArr = this.f14460f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                int[] iArr2 = this.f14461g;
                int i4 = iArr2[length + i];
                int i5 = iArr2[i];
                System.arraycopy(this.f14460f[i], i4, bArr2, i3, i5 - i3);
                i++;
                i2 = i5;
            } else {
                return bArr2;
            }
        }
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    public final int hashCode() {
        int i = this.f14424d;
        if (i != 0) {
            return i;
        }
        int length = this.f14460f.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f14460f[i2];
            int[] iArr = this.f14461g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            for (int i7 = i5; i7 < (i6 - i3) + i5; i7++) {
                i4 = (i4 * 31) + bArr[i7];
            }
            i2++;
            i3 = i6;
        }
        this.f14424d = i4;
        return i4;
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3973f
    public final String toString() {
        return m37024i().toString();
    }
}

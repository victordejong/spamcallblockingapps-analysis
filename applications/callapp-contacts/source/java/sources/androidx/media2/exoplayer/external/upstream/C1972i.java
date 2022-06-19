package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.upstream.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/i.class */
public final class C1972i implements AbstractC1963b {

    /* renamed from: a */
    private final boolean f7961a;

    /* renamed from: b */
    private final int f7962b;

    /* renamed from: c */
    private final byte[] f7963c;

    /* renamed from: d */
    private final C1962a[] f7964d;

    /* renamed from: e */
    private int f7965e;

    /* renamed from: f */
    private int f7966f;

    /* renamed from: g */
    private int f7967g;

    /* renamed from: h */
    private C1962a[] f7968h;

    public C1972i(boolean z, int i) {
        this(z, i, 0);
    }

    public C1972i(boolean z, int i, int i2) {
        C1993a.m41688a(i > 0);
        C1993a.m41688a(i2 >= 0);
        this.f7961a = z;
        this.f7962b = i;
        this.f7967g = i2;
        this.f7968h = new C1962a[i2 + 100];
        if (i2 > 0) {
            this.f7963c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f7968h[i3] = new C1962a(this.f7963c, i3 * i);
            }
        } else {
            this.f7963c = null;
        }
        this.f7964d = new C1962a[1];
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1963b
    /* renamed from: a */
    public final C1962a mo41734a() {
        C1962a c1962a;
        synchronized (this) {
            this.f7966f++;
            int i = this.f7967g;
            if (i > 0) {
                C1962a[] c1962aArr = this.f7968h;
                int i2 = i - 1;
                this.f7967g = i2;
                c1962a = c1962aArr[i2];
                c1962aArr[i2] = null;
            } else {
                c1962a = new C1962a(new byte[this.f7962b], 0);
            }
        }
        return c1962a;
    }

    /* renamed from: a */
    public final void m41733a(int i) {
        synchronized (this) {
            boolean z = i < this.f7965e;
            this.f7965e = i;
            if (z) {
                mo41730b();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1963b
    /* renamed from: a */
    public final void mo41732a(C1962a c1962a) {
        synchronized (this) {
            C1962a[] c1962aArr = this.f7964d;
            c1962aArr[0] = c1962a;
            mo41731a(c1962aArr);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1963b
    /* renamed from: a */
    public final void mo41731a(C1962a[] c1962aArr) {
        synchronized (this) {
            int i = this.f7967g;
            int length = c1962aArr.length;
            C1962a[] c1962aArr2 = this.f7968h;
            if (length + i >= c1962aArr2.length) {
                this.f7968h = (C1962a[]) Arrays.copyOf(c1962aArr2, Math.max(c1962aArr2.length * 2, i + c1962aArr.length));
            }
            for (C1962a c1962a : c1962aArr) {
                C1962a[] c1962aArr3 = this.f7968h;
                int i2 = this.f7967g;
                this.f7967g = i2 + 1;
                c1962aArr3[i2] = c1962a;
            }
            this.f7966f -= c1962aArr.length;
            notifyAll();
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1963b
    /* renamed from: b */
    public final void mo41730b() {
        synchronized (this) {
            int max = Math.max(0, C1996ac.m41675a(this.f7965e, this.f7962b) - this.f7966f);
            int i = this.f7967g;
            if (max >= i) {
                return;
            }
            int i2 = max;
            if (this.f7963c != null) {
                int i3 = i - 1;
                int i4 = 0;
                while (i4 <= i3) {
                    C1962a c1962a = this.f7968h[i4];
                    if (c1962a.f7936a == this.f7963c) {
                        i4++;
                    } else {
                        C1962a c1962a2 = this.f7968h[i3];
                        if (c1962a2.f7936a != this.f7963c) {
                            i3--;
                        } else {
                            C1962a[] c1962aArr = this.f7968h;
                            c1962aArr[i4] = c1962a2;
                            c1962aArr[i3] = c1962a;
                            i3--;
                            i4++;
                        }
                    }
                }
                int max2 = Math.max(max, i4);
                i2 = max2;
                if (max2 >= this.f7967g) {
                    return;
                }
            }
            Arrays.fill(this.f7968h, i2, this.f7967g, (Object) null);
            this.f7967g = i2;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1963b
    /* renamed from: c */
    public final int mo41729c() {
        return this.f7962b;
    }

    /* renamed from: d */
    public final void m41728d() {
        synchronized (this) {
            if (this.f7961a) {
                m41733a(0);
            }
        }
    }

    /* renamed from: e */
    public final int m41727e() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f7966f;
            i2 = this.f7962b;
        }
        return i * i2;
    }
}

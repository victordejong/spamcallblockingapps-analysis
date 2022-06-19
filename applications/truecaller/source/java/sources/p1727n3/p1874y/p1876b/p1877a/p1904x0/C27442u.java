package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import java.util.Arrays;
/* renamed from: n3.y.b.a.x0.u */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/u.class */
public final class C27442u<V> {

    /* renamed from: a */
    public long[] f77221a = new long[10];

    /* renamed from: b */
    public V[] f77222b = (V[]) new Object[10];

    /* renamed from: c */
    public int f77223c;

    /* renamed from: d */
    public int f77224d;

    /* renamed from: a */
    public void m300a(long j, V v) {
        synchronized (this) {
            int i = this.f77224d;
            if (i > 0) {
                int i2 = this.f77223c;
                if (j <= this.f77221a[((i2 + i) - 1) % this.f77222b.length]) {
                    m299b();
                }
            }
            m298c();
            int i3 = this.f77223c;
            int i4 = this.f77224d;
            V[] vArr = this.f77222b;
            int length = (i3 + i4) % vArr.length;
            this.f77221a[length] = j;
            vArr[length] = v;
            this.f77224d = i4 + 1;
        }
    }

    /* renamed from: b */
    public void m299b() {
        synchronized (this) {
            this.f77223c = 0;
            this.f77224d = 0;
            Arrays.fill(this.f77222b, (Object) null);
        }
    }

    /* renamed from: c */
    public final void m298c() {
        int length = this.f77222b.length;
        if (this.f77224d < length) {
            return;
        }
        int i = length * 2;
        long[] jArr = new long[i];
        V[] vArr = (V[]) new Object[i];
        int i2 = this.f77223c;
        int i3 = length - i2;
        System.arraycopy(this.f77221a, i2, jArr, 0, i3);
        System.arraycopy(this.f77222b, this.f77223c, vArr, 0, i3);
        int i4 = this.f77223c;
        if (i4 > 0) {
            System.arraycopy(this.f77221a, 0, jArr, i3, i4);
            System.arraycopy(this.f77222b, 0, vArr, i3, this.f77223c);
        }
        this.f77221a = jArr;
        this.f77222b = vArr;
        this.f77223c = 0;
    }
}

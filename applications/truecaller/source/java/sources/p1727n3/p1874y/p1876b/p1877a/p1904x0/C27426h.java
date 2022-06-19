package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.x0.h */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/h.class */
public final class C27426h {

    /* renamed from: a */
    public int f77173a;

    /* renamed from: b */
    public long[] f77174b = new long[32];

    /* renamed from: a */
    public void m367a(long j) {
        int i = this.f77173a;
        long[] jArr = this.f77174b;
        if (i == jArr.length) {
            this.f77174b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f77174b;
        int i2 = this.f77173a;
        this.f77173a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public long m366b(int i) {
        if (i < 0 || i >= this.f77173a) {
            throw new IndexOutOfBoundsException(C22128a.m8683N1(46, "Invalid index ", i, ", size is ", this.f77173a));
        }
        return this.f77174b[i];
    }
}

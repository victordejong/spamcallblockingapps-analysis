package p012b.p076s.p078b.p079a.p080a1;

import java.util.Arrays;
/* renamed from: b.s.b.a.a1.k */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/k.class */
public final class C1176k {

    /* renamed from: a */
    public int f4708a;

    /* renamed from: b */
    public long[] f4709b;

    public C1176k() {
        this(32);
    }

    public C1176k(int i) {
        this.f4709b = new long[i];
    }

    /* renamed from: a */
    public int m34413a() {
        return this.f4708a;
    }

    /* renamed from: a */
    public long m34412a(int i) {
        if (i >= 0 && i < this.f4708a) {
            return this.f4709b[i];
        }
        int i2 = this.f4708a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    /* renamed from: a */
    public void m34411a(long j) {
        int i = this.f4708a;
        long[] jArr = this.f4709b;
        if (i == jArr.length) {
            this.f4709b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f4709b;
        int i2 = this.f4708a;
        this.f4708a = i2 + 1;
        jArr2[i2] = j;
    }
}

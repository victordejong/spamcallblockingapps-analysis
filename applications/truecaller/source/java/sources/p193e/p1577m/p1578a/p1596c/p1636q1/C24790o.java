package p193e.p1577m.p1578a.p1596c.p1636q1;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.q1.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/o.class */
public final class C24790o {

    /* renamed from: a */
    public int f69477a;

    /* renamed from: b */
    public long[] f69478b = new long[32];

    /* renamed from: a */
    public void m4575a(long j) {
        int i = this.f69477a;
        long[] jArr = this.f69478b;
        if (i == jArr.length) {
            this.f69478b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f69478b;
        int i2 = this.f69477a;
        this.f69477a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public long m4574b(int i) {
        if (i < 0 || i >= this.f69477a) {
            StringBuilder m8720E = C22128a.m8720E("Invalid index ", i, ", size is ");
            m8720E.append(this.f69477a);
            throw new IndexOutOfBoundsException(m8720E.toString());
        }
        return this.f69478b[i];
    }
}

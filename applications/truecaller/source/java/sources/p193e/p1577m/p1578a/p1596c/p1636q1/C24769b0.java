package p193e.p1577m.p1578a.p1596c.p1636q1;

import java.util.Arrays;
/* renamed from: e.m.a.c.q1.b0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/b0.class */
public final class C24769b0<V> {

    /* renamed from: a */
    public long[] f69418a = new long[10];

    /* renamed from: b */
    public V[] f69419b = (V[]) new Object[10];

    /* renamed from: c */
    public int f69420c;

    /* renamed from: d */
    public int f69421d;

    /* renamed from: a */
    public void m4638a(long j, V v) {
        synchronized (this) {
            int i = this.f69421d;
            if (i > 0) {
                int i2 = this.f69420c;
                if (j <= this.f69418a[((i2 + i) - 1) % this.f69419b.length]) {
                    m4637b();
                }
            }
            m4636c();
            int i3 = this.f69420c;
            int i4 = this.f69421d;
            V[] vArr = this.f69419b;
            int length = (i3 + i4) % vArr.length;
            this.f69418a[length] = j;
            vArr[length] = v;
            this.f69421d = i4 + 1;
        }
    }

    /* renamed from: b */
    public void m4637b() {
        synchronized (this) {
            this.f69420c = 0;
            this.f69421d = 0;
            Arrays.fill(this.f69419b, (Object) null);
        }
    }

    /* renamed from: c */
    public final void m4636c() {
        int length = this.f69419b.length;
        if (this.f69421d < length) {
            return;
        }
        int i = length * 2;
        long[] jArr = new long[i];
        V[] vArr = (V[]) new Object[i];
        int i2 = this.f69420c;
        int i3 = length - i2;
        System.arraycopy(this.f69418a, i2, jArr, 0, i3);
        System.arraycopy(this.f69419b, this.f69420c, vArr, 0, i3);
        int i4 = this.f69420c;
        if (i4 > 0) {
            System.arraycopy(this.f69418a, 0, jArr, i3, i4);
            System.arraycopy(this.f69419b, 0, vArr, i3, this.f69420c);
        }
        this.f69418a = jArr;
        this.f69419b = vArr;
        this.f69420c = 0;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: d */
    public final V m4635d(long j, boolean z) {
        char c = 65535;
        V v = null;
        while (true) {
            int i = this.f69421d;
            if (i <= 0) {
                break;
            }
            long[] jArr = this.f69418a;
            int i2 = this.f69420c;
            ?? r0 = j - jArr[i2];
            if (r0 < 0 && (z || (-r0) >= c)) {
                break;
            }
            V[] vArr = this.f69419b;
            v = vArr[i2];
            vArr[i2] = null;
            this.f69420c = (i2 + 1) % vArr.length;
            this.f69421d = i - 1;
            c = r0;
        }
        return v;
    }

    /* renamed from: e */
    public V m4634e(long j) {
        V m4635d;
        synchronized (this) {
            m4635d = m4635d(j, true);
        }
        return m4635d;
    }
}

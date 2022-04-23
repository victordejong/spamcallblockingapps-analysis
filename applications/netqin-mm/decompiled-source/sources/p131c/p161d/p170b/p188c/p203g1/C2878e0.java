package p131c.p161d.p170b.p188c.p203g1;

import java.util.Arrays;
/* renamed from: c.d.b.c.g1.e0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/e0.class */
public final class C2878e0<V> {

    /* renamed from: a */
    public long[] f10462a;

    /* renamed from: b */
    public V[] f10463b;

    /* renamed from: c */
    public int f10464c;

    /* renamed from: d */
    public int f10465d;

    public C2878e0() {
        this(10);
    }

    public C2878e0(int i) {
        this.f10462a = new long[i];
        this.f10463b = (V[]) m28728a(i);
    }

    /* renamed from: a */
    public static <V> V[] m28728a(int i) {
        return (V[]) new Object[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V m28725a(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r5
            int r0 = r0.f10465d
            if (r0 <= 0) goto L_0x0069
            r0 = r6
            r1 = r5
            long[] r1 = r1.f10462a
            r2 = r5
            int r2 = r2.f10464c
            r1 = r1[r2]
            long r0 = r0 - r1
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0033
            r0 = r8
            if (r0 != 0) goto L_0x0069
            r0 = r12
            long r0 = -r0
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0033
            goto L_0x0069
        L_0x0033:
            r0 = r5
            V[] r0 = r0.f10463b
            r14 = r0
            r0 = r5
            int r0 = r0.f10464c
            r15 = r0
            r0 = r14
            r1 = r15
            r0 = r0[r1]
            r11 = r0
            r0 = r14
            r1 = r15
            r2 = 0
            r0[r1] = r2
            r0 = r5
            r1 = r15
            r2 = 1
            int r1 = r1 + r2
            r2 = r14
            int r2 = r2.length
            int r1 = r1 % r2
            r0.f10464c = r1
            r0 = r5
            r1 = r5
            int r1 = r1.f10465d
            r2 = 1
            int r1 = r1 - r2
            r0.f10465d = r1
            r0 = r12
            r9 = r0
            goto L_0x0008
        L_0x0069:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2878e0.m28725a(long, boolean):java.lang.Object");
    }

    /* renamed from: a */
    public void m28729a() {
        synchronized (this) {
            this.f10464c = 0;
            this.f10465d = 0;
            Arrays.fill(this.f10463b, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m28727a(long j) {
        int i = this.f10465d;
        if (i > 0) {
            int i2 = this.f10464c;
            if (j <= this.f10462a[((i2 + i) - 1) % this.f10463b.length]) {
                m28729a();
            }
        }
    }

    /* renamed from: a */
    public void m28726a(long j, V v) {
        synchronized (this) {
            m28727a(j);
            m28724b();
            m28722b(j, v);
        }
    }

    /* renamed from: b */
    public V m28723b(long j) {
        V a;
        synchronized (this) {
            a = m28725a(j, false);
        }
        return a;
    }

    /* renamed from: b */
    public final void m28724b() {
        int length = this.f10463b.length;
        if (this.f10465d >= length) {
            int i = length * 2;
            long[] jArr = new long[i];
            V[] vArr = (V[]) m28728a(i);
            int i2 = this.f10464c;
            int i3 = length - i2;
            System.arraycopy(this.f10462a, i2, jArr, 0, i3);
            System.arraycopy(this.f10463b, this.f10464c, vArr, 0, i3);
            int i4 = this.f10464c;
            if (i4 > 0) {
                System.arraycopy(this.f10462a, 0, jArr, i3, i4);
                System.arraycopy(this.f10463b, 0, vArr, i3, this.f10464c);
            }
            this.f10462a = jArr;
            this.f10463b = vArr;
            this.f10464c = 0;
        }
    }

    /* renamed from: b */
    public final void m28722b(long j, V v) {
        int i = this.f10464c;
        int i2 = this.f10465d;
        V[] vArr = this.f10463b;
        int length = (i + i2) % vArr.length;
        this.f10462a[length] = j;
        vArr[length] = v;
        this.f10465d = i2 + 1;
    }

    /* renamed from: c */
    public V m28721c(long j) {
        V a;
        synchronized (this) {
            a = m28725a(j, true);
        }
        return a;
    }
}

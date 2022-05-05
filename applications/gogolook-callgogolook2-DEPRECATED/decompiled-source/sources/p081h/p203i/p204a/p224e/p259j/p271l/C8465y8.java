package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.y8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/y8.class */
public final class C8465y8 extends AbstractC8428w8 {

    /* renamed from: a */
    public int f19444a;

    /* renamed from: b */
    public int f19445b;

    /* renamed from: c */
    public int f19446c;

    /* renamed from: d */
    public int f19447d;

    /* renamed from: e */
    public int f19448e;

    public C8465y8(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f19448e = Integer.MAX_VALUE;
        this.f19444a = i2 + i;
        this.f19446c = i;
        this.f19447d = this.f19446c;
    }

    /* renamed from: a */
    public final int m17991a() {
        return this.f19446c - this.f19447d;
    }

    /* renamed from: a */
    public final int m17990a(int i) throws C8389u9 {
        if (i >= 0) {
            int a = i + m17991a();
            int i2 = this.f19448e;
            if (a <= i2) {
                this.f19448e = a;
                this.f19444a += this.f19445b;
                int i3 = this.f19444a;
                int i4 = i3 - this.f19447d;
                int i5 = this.f19448e;
                if (i4 > i5) {
                    this.f19445b = i4 - i5;
                    this.f19444a = i3 - this.f19445b;
                } else {
                    this.f19445b = 0;
                }
                return i2;
            }
            throw C8389u9.m18138a();
        }
        throw C8389u9.m18137b();
    }
}

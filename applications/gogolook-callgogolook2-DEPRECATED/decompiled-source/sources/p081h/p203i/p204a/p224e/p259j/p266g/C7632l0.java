package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.l0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/l0.class */
public final class C7632l0 extends AbstractC7618j0 {

    /* renamed from: a */
    public int f17902a;

    /* renamed from: b */
    public int f17903b;

    /* renamed from: c */
    public int f17904c;

    /* renamed from: d */
    public int f17905d;

    /* renamed from: e */
    public int f17906e;

    public C7632l0(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f17906e = Integer.MAX_VALUE;
        this.f17902a = i2 + i;
        this.f17904c = i;
        this.f17905d = this.f17904c;
    }

    /* renamed from: a */
    public final int m20082a() {
        return this.f17904c - this.f17905d;
    }

    /* renamed from: b */
    public final int m20081b(int i) throws C7633l1 {
        if (i >= 0) {
            int a = i + m20082a();
            int i2 = this.f17906e;
            if (a <= i2) {
                this.f17906e = a;
                this.f17902a += this.f17903b;
                int i3 = this.f17902a;
                int i4 = i3 - this.f17905d;
                int i5 = this.f17906e;
                if (i4 > i5) {
                    this.f17903b = i4 - i5;
                    this.f17902a = i3 - this.f17903b;
                } else {
                    this.f17903b = 0;
                }
                return i2;
            }
            throw C7633l1.m20080a();
        }
        throw new C7633l1("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
}

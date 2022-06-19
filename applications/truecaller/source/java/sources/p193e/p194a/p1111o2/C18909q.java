package p193e.p194a.p1111o2;
/* renamed from: e.a.o2.q */
/* loaded from: classes4-dex2jar.jar:e/a/o2/q.class */
public final class C18909q implements AbstractC18912t {

    /* renamed from: a */
    public final int f53027a;

    /* renamed from: b */
    public final int f53028b;

    /* renamed from: c */
    public final boolean f53029c;

    public C18909q(int i, int i2, boolean z, int i3) {
        i = (i3 & 1) != 0 ? 0 : i;
        i2 = (i3 & 2) != 0 ? 10 : i2;
        this.f53029c = (i3 & 4) != 0 ? false : z;
        this.f53027a = i2 <= 1 ? 2 : i2;
        this.f53028b = i >= 0 ? i : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: a */
    public int mo14338a(int i, int i2, int i3) {
        return (i * this.f53027a) + this.f53028b;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: b */
    public int mo14337b(int i, int i2, int i3) {
        int i4 = this.f53028b;
        if (i >= i4) {
            i += ((i - i4) / (this.f53027a - 1)) + 1;
        }
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: c */
    public boolean mo14336c(int i, int i2, int i3) {
        int i4 = this.f53028b;
        return i >= i4 && (i - i4) % this.f53027a == 0 && m14343g(i, i2) < i2;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: d */
    public int mo14335d(int i, int i2) {
        if (i2 != 0 || this.f53029c) {
            int i3 = this.f53028b;
            return i2 < i3 ? i2 : Math.min(((i2 - i3) / (this.f53027a - 1)) + 1, i) + i2;
        }
        return 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: e */
    public int mo14334e(int i, int i2, int i3) {
        return m14343g(i, i2);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: f */
    public int mo14333f(int i, int i2, int i3) {
        return i - m14343g(i, i2);
    }

    /* renamed from: g */
    public final int m14343g(int i, int i2) {
        int i3 = this.f53028b;
        return i > i3 ? Math.min((((i - i3) - 1) / this.f53027a) + 1, i2) : 0;
    }
}

package p193e.p194a.p1111o2;
/* renamed from: e.a.o2.g */
/* loaded from: classes4-dex2jar.jar:e/a/o2/g.class */
public final class C18899g implements AbstractC18912t {

    /* renamed from: a */
    public final int f53000a;

    public C18899g(int i, int i2) {
        i = (i2 & 1) != 0 ? 0 : i;
        this.f53000a = i >= 0 ? i : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: a */
    public int mo14338a(int i, int i2, int i3) {
        return Math.min(this.f53000a, i3) + i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: b */
    public int mo14337b(int i, int i2, int i3) {
        if (i >= this.f53000a) {
            i += i2;
        }
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: c */
    public boolean mo14336c(int i, int i2, int i3) {
        int i4 = this.f53000a;
        return i4 <= i && i2 + i4 > i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: d */
    public int mo14335d(int i, int i2) {
        if (i2 < this.f53000a) {
            i = 0;
        }
        return i2 + i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: e */
    public int mo14334e(int i, int i2, int i3) {
        return i - this.f53000a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18912t
    /* renamed from: f */
    public int mo14333f(int i, int i2, int i3) {
        if (i >= this.f53000a) {
            i -= i2;
        }
        return i;
    }
}

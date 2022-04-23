package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.l1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l1.class */
public final class C8218l1<E> extends AbstractC8154i1<E> {

    /* renamed from: e */
    public static final AbstractC8154i1<Object> f19026e = new C8218l1(new Object[0], 0);

    /* renamed from: c */
    public final transient Object[] f19027c;

    /* renamed from: d */
    public final transient int f19028d;

    public C8218l1(Object[] objArr, int i) {
        this.f19027c = objArr;
        this.f19028d = i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8154i1, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8093f1
    /* renamed from: a */
    public final int mo18370a(Object[] objArr, int i) {
        System.arraycopy(this.f19027c, 0, objArr, 0, this.f19028d);
        return this.f19028d + 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8093f1
    /* renamed from: b */
    public final Object[] mo18369b() {
        return this.f19027c;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8093f1
    /* renamed from: c */
    public final int mo18368c() {
        return 0;
    }

    @Override // java.util.List
    public final E get(int i) {
        C8056d1.m18637a(i, this.f19028d);
        return (E) this.f19027c[i];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8093f1
    /* renamed from: q */
    public final int mo18367q() {
        return this.f19028d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19028d;
    }
}

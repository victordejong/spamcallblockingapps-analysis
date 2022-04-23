package p081h.p203i.p316b.p317a;
/* renamed from: h.i.b.a.m */
/* loaded from: classes2-dex2jar.jar:h/i/b/a/m.class */
public final class C9303m<T> extends AbstractC9296h<T> {

    /* renamed from: a */
    public final T f21327a;

    public C9303m(T t) {
        this.f21327a = t;
    }

    @Override // p081h.p203i.p316b.p317a.AbstractC9296h
    /* renamed from: a */
    public T mo15464a() {
        return this.f21327a;
    }

    @Override // p081h.p203i.p316b.p317a.AbstractC9296h
    /* renamed from: b */
    public boolean mo15463b() {
        return true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C9303m) {
            return this.f21327a.equals(((C9303m) obj).f21327a);
        }
        return false;
    }

    public int hashCode() {
        return this.f21327a.hashCode() + 1502476572;
    }

    public String toString() {
        return "Optional.of(" + this.f21327a + ")";
    }
}

package p081h.p203i.p204a.p224e.p259j.p270k;
/* renamed from: h.i.a.e.j.k.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/k/o.class */
public final class C7987o extends AbstractC7986n {

    /* renamed from: a */
    public final C7985m f18709a = new C7985m();

    @Override // p081h.p203i.p204a.p224e.p259j.p270k.AbstractC7986n
    /* renamed from: a */
    public final void mo18702a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f18709a.m18703a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}

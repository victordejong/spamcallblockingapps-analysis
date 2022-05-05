package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.r1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r1.class */
public final class C8324r1 extends AbstractC8254n1 {

    /* renamed from: a */
    public final C8307q1 f19270a = new C8307q1();

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8254n1
    /* renamed from: a */
    public final void mo18177a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f19270a.m18198a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}

package p078c.p084c.p085a.p086a.p088b.p092d;
/* renamed from: c.c.a.a.b.d.l */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/d/l.class */
final class C1866l extends AbstractC1863i {

    /* renamed from: a */
    private final C1865k f6769a = new C1865k();

    @Override // p078c.p084c.p085a.p086a.p088b.p092d.AbstractC1863i
    /* renamed from: a */
    public final void mo28782a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f6769a.m28783a(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}

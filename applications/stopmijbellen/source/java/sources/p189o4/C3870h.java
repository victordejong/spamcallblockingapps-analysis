package p189o4;
/* renamed from: o4.h */
/* loaded from: classes-dex2jar.jar:o4/h.class */
public final class C3870h extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC3872i f12353b;

    public C3870h(ServiceConnectionC3872i serviceConnectionC3872i) {
        this.f12353b = serviceConnectionC3872i;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        C3873j c3873j = this.f12353b.f12354a;
        c3873j.f12357b.m1507e("unlinkToDeath", new Object[0]);
        c3873j.f12369n.asBinder().unlinkToDeath(c3873j.f12366k, 0);
        C3873j c3873j2 = this.f12353b.f12354a;
        c3873j2.f12369n = null;
        c3873j2.f12362g = false;
    }
}

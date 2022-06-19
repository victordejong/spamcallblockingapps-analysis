package p189o4;
/* renamed from: o4.d */
/* loaded from: classes-dex2jar.jar:o4/d.class */
public final class C3862d extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ C3873j f12350b;

    public C3862d(C3873j c3873j) {
        this.f12350b = c3873j;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        C3873j c3873j = this.f12350b;
        if (c3873j.f12369n != null) {
            c3873j.f12357b.m1507e("Unbind from service.", new Object[0]);
            C3873j c3873j2 = this.f12350b;
            c3873j2.f12356a.unbindService(c3873j2.f12368m);
            C3873j c3873j3 = this.f12350b;
            c3873j3.f12362g = false;
            c3873j3.f12369n = null;
            c3873j3.f12368m = null;
        }
        this.f12350b.m1746d();
    }
}

package p189o4;

import com.google.android.play.core.internal.zzat;
import p220r4.C4203l;
/* renamed from: o4.c */
/* loaded from: classes-dex2jar.jar:o4/c.class */
public final class C3860c extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ AbstractRunnableC3856a f12347b;

    /* renamed from: c */
    public final /* synthetic */ C3873j f12348c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3860c(C3873j c3873j, C4203l c4203l, AbstractRunnableC3856a abstractRunnableC3856a) {
        super(c4203l);
        this.f12348c = c3873j;
        this.f12347b = abstractRunnableC3856a;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        C3873j c3873j = this.f12348c;
        AbstractRunnableC3856a abstractRunnableC3856a = this.f12347b;
        if (c3873j.f12369n != null || c3873j.f12362g) {
            if (!c3873j.f12362g) {
                abstractRunnableC3856a.run();
                return;
            }
            c3873j.f12357b.m1507e("Waiting to bind to the service.", new Object[0]);
            c3873j.f12359d.add(abstractRunnableC3856a);
            return;
        }
        c3873j.f12357b.m1507e("Initiate binding to the service.", new Object[0]);
        c3873j.f12359d.add(abstractRunnableC3856a);
        ServiceConnectionC3872i serviceConnectionC3872i = new ServiceConnectionC3872i(c3873j);
        c3873j.f12368m = serviceConnectionC3872i;
        c3873j.f12362g = true;
        if (c3873j.f12356a.bindService(c3873j.f12363h, serviceConnectionC3872i, 1)) {
            return;
        }
        c3873j.f12357b.m1507e("Failed to bind to the service.", new Object[0]);
        c3873j.f12362g = false;
        for (AbstractRunnableC3856a abstractRunnableC3856a2 : c3873j.f12359d) {
            zzat zzatVar = new zzat();
            C4203l c4203l = abstractRunnableC3856a2.f12345a;
            if (c4203l != null) {
                c4203l.m1294a(zzatVar);
            }
        }
        c3873j.f12359d.clear();
    }
}

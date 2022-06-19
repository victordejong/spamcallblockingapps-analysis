package p189o4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* renamed from: o4.g */
/* loaded from: classes-dex2jar.jar:o4/g.class */
public final class C3868g extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ IBinder f12351b;

    /* renamed from: c */
    public final /* synthetic */ ServiceConnectionC3872i f12352c;

    public C3868g(ServiceConnectionC3872i serviceConnectionC3872i, IBinder iBinder) {
        this.f12352c = serviceConnectionC3872i;
        this.f12351b = iBinder;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        C3873j c3873j = this.f12352c.f12354a;
        c3873j.f12369n = (IInterface) c3873j.f12364i.mo1754b(this.f12351b);
        C3873j c3873j2 = this.f12352c.f12354a;
        c3873j2.f12357b.m1507e("linkToDeath", new Object[0]);
        try {
            c3873j2.f12369n.asBinder().linkToDeath(c3873j2.f12366k, 0);
        } catch (RemoteException e) {
            c3873j2.f12357b.m1508d(e, "linkToDeath failed", new Object[0]);
        }
        C3873j c3873j3 = this.f12352c.f12354a;
        c3873j3.f12362g = false;
        for (Runnable runnable : c3873j3.f12359d) {
            runnable.run();
        }
        this.f12352c.f12354a.f12359d.clear();
    }
}

package p134j4;

import android.os.RemoteException;
import p189o4.AbstractC3863d0;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: j4.h */
/* loaded from: classes-dex2jar.jar:j4/h.class */
public final class C3209h extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ C4203l f10807b;

    /* renamed from: c */
    public final /* synthetic */ C3238p f10808c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3209h(C3238p c3238p, C4203l c4203l, C4203l c4203l2) {
        super(c4203l);
        this.f10808c = c3238p;
        this.f10807b = c4203l2;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        try {
            C3238p c3238p = this.f10808c;
            ((AbstractC3863d0) c3238p.f10914e.f12369n).mo1755o(c3238p.f10910a, C3238p.m2520f(), new BinderC3229m(this.f10808c, this.f10807b));
        } catch (RemoteException e) {
            C3238p.f10908g.m1508d(e, "keepAlive", new Object[0]);
        }
    }
}

package p134j4;

import android.os.Bundle;
import android.os.RemoteException;
import p189o4.AbstractC3863d0;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: j4.f */
/* loaded from: classes-dex2jar.jar:j4/f.class */
public final class C3201f extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ int f10777b;

    /* renamed from: c */
    public final /* synthetic */ C4203l f10778c;

    /* renamed from: d */
    public final /* synthetic */ C3238p f10779d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3201f(C3238p c3238p, C4203l c4203l, int i, C4203l c4203l2) {
        super(c4203l);
        this.f10779d = c3238p;
        this.f10777b = i;
        this.f10778c = c4203l2;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        try {
            C3238p c3238p = this.f10779d;
            AbstractC3863d0 abstractC3863d0 = (AbstractC3863d0) c3238p.f10913d.f12369n;
            String str = c3238p.f10910a;
            int i = this.f10777b;
            Bundle bundle = new Bundle();
            bundle.putInt("session_id", i);
            abstractC3863d0.mo1758g(str, bundle, C3238p.m2520f(), new BinderC3221k(this.f10779d, this.f10778c, 1));
        } catch (RemoteException e) {
            C3238p.f10908g.m1508d(e, "notifySessionFailed", new Object[0]);
        }
    }
}

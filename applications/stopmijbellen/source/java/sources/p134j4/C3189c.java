package p134j4;

import android.os.RemoteException;
import java.util.Map;
import p189o4.AbstractC3863d0;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: j4.c */
/* loaded from: classes-dex2jar.jar:j4/c.class */
public final class C3189c extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ Map f10737b;

    /* renamed from: c */
    public final /* synthetic */ C4203l f10738c;

    /* renamed from: d */
    public final /* synthetic */ C3238p f10739d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3189c(C3238p c3238p, C4203l c4203l, Map map, C4203l c4203l2) {
        super(c4203l);
        this.f10739d = c3238p;
        this.f10737b = map;
        this.f10738c = c4203l2;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        try {
            C3238p c3238p = this.f10739d;
            ((AbstractC3863d0) c3238p.f10913d.f12369n).mo1760c(c3238p.f10910a, C3238p.m2516j(this.f10737b), new BinderC3225l(this.f10739d, this.f10738c));
        } catch (RemoteException e) {
            C3238p.f10908g.m1508d(e, "syncPacks", new Object[0]);
            this.f10738c.m1294a(new RuntimeException(e));
        }
    }
}

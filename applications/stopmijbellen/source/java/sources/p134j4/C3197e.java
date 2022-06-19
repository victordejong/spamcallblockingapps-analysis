package p134j4;

import android.os.Bundle;
import android.os.RemoteException;
import p189o4.AbstractC3863d0;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: j4.e */
/* loaded from: classes-dex2jar.jar:j4/e.class */
public final class C3197e extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ int f10766b;

    /* renamed from: c */
    public final /* synthetic */ String f10767c;

    /* renamed from: d */
    public final /* synthetic */ C4203l f10768d;

    /* renamed from: e */
    public final /* synthetic */ int f10769e;

    /* renamed from: f */
    public final /* synthetic */ C3238p f10770f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3197e(C3238p c3238p, C4203l c4203l, int i, String str, C4203l c4203l2, int i2) {
        super(c4203l);
        this.f10770f = c3238p;
        this.f10766b = i;
        this.f10767c = str;
        this.f10768d = c4203l2;
        this.f10769e = i2;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        try {
            C3238p c3238p = this.f10770f;
            AbstractC3863d0 abstractC3863d0 = (AbstractC3863d0) c3238p.f10913d.f12369n;
            String str = c3238p.f10910a;
            int i = this.f10766b;
            String str2 = this.f10767c;
            Bundle bundle = new Bundle();
            bundle.putInt("session_id", i);
            bundle.putString("module_name", str2);
            abstractC3863d0.mo1761a(str, bundle, C3238p.m2520f(), new BinderC3235o(this.f10770f, this.f10768d, this.f10766b, this.f10767c, this.f10769e));
        } catch (RemoteException e) {
            C3238p.f10908g.m1508d(e, "notifyModuleCompleted", new Object[0]);
        }
    }
}

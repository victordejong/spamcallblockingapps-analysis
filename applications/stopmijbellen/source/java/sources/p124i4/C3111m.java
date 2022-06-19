package p124i4;

import android.os.RemoteException;
import p189o4.AbstractC3888y;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: i4.m */
/* loaded from: classes-dex2jar.jar:i4/m.class */
public final class C3111m extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ String f10533b;

    /* renamed from: c */
    public final /* synthetic */ C4203l f10534c;

    /* renamed from: d */
    public final /* synthetic */ C3116r f10535d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3111m(C3116r c3116r, C4203l c4203l, String str, C4203l c4203l2) {
        super(c4203l);
        this.f10535d = c3116r;
        this.f10533b = str;
        this.f10534c = c4203l2;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        try {
            C3116r c3116r = this.f10535d;
            ((AbstractC3888y) c3116r.f10546a.f12369n).mo1732i(c3116r.f10547b, C3116r.m2604a(c3116r, this.f10533b), new BinderC3115q(this.f10535d, this.f10534c, this.f10533b));
        } catch (RemoteException e) {
            C3116r.f10544e.m1508d(e, "requestUpdateInfo(%s)", this.f10533b);
            this.f10534c.m1294a(new RuntimeException(e));
        }
    }
}

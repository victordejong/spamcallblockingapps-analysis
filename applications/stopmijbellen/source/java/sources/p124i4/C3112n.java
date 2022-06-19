package p124i4;

import android.os.RemoteException;
import p189o4.AbstractC3888y;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: i4.n */
/* loaded from: classes-dex2jar.jar:i4/n.class */
public final class C3112n extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ C4203l f10536b;

    /* renamed from: c */
    public final /* synthetic */ String f10537c;

    /* renamed from: d */
    public final /* synthetic */ C3116r f10538d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3112n(C3116r c3116r, C4203l c4203l, C4203l c4203l2, String str) {
        super(c4203l);
        this.f10538d = c3116r;
        this.f10536b = c4203l2;
        this.f10537c = str;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        try {
            C3116r c3116r = this.f10538d;
            ((AbstractC3888y) c3116r.f10546a.f12369n).mo1731l(c3116r.f10547b, C3116r.m2603b(), new BinderC3114p(this.f10538d, this.f10536b));
        } catch (RemoteException e) {
            C3116r.f10544e.m1508d(e, "completeUpdate(%s)", this.f10537c);
            this.f10536b.m1294a(new RuntimeException(e));
        }
    }
}

package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.r3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/r3.class */
public final class C7382r3 extends AbstractC7418u3<AbstractC7446w7> {

    /* renamed from: b */
    public final /* synthetic */ FrameLayout f17432b;

    /* renamed from: c */
    public final /* synthetic */ FrameLayout f17433c;

    /* renamed from: d */
    public final /* synthetic */ Context f17434d;

    /* renamed from: e */
    public final /* synthetic */ C7297k3 f17435e;

    public C7382r3(C7297k3 k3Var, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f17435e = k3Var;
        this.f17432b = frameLayout;
        this.f17433c = frameLayout2;
        this.f17434d = context;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7446w7 mo20653a() {
        C7297k3.m20867a(this.f17434d, "native_ad_view_delegate");
        return new BinderC7324m6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7446w7 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20459a(BinderC7110d.m21058a(this.f17432b), BinderC7110d.m21058a(this.f17433c));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7446w7 mo20650b() throws RemoteException {
        C7327m9 m9Var;
        m9Var = this.f17435e.f17362d;
        return m9Var.m20792a(this.f17434d, this.f17432b, this.f17433c);
    }
}

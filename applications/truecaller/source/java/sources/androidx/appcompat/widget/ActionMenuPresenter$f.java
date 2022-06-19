package androidx.appcompat.widget;

import n3.b.e.i.r;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$f.class */
public class ActionMenuPresenter$f implements AbstractC25483m.AbstractC25484a {

    /* renamed from: a */
    public final /* synthetic */ ActionMenuPresenter f232a;

    public ActionMenuPresenter$f(ActionMenuPresenter actionMenuPresenter) {
        this.f232a = actionMenuPresenter;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
    /* renamed from: a */
    public void mo3413a(C25469g c25469g, boolean z) {
        if (c25469g instanceof r) {
            c25469g.m3473k().m3481c(false);
        }
        AbstractC25483m.AbstractC25484a abstractC25484a = this.f232a.f71182e;
        if (abstractC25484a != null) {
            abstractC25484a.mo3413a(c25469g, z);
        }
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
    /* renamed from: b */
    public boolean mo3412b(C25469g c25469g) {
        ActionMenuPresenter actionMenuPresenter = this.f232a;
        boolean z = false;
        if (c25469g == actionMenuPresenter.f71180c) {
            return false;
        }
        actionMenuPresenter.z = ((r) c25469g).A.f71247a;
        AbstractC25483m.AbstractC25484a abstractC25484a = actionMenuPresenter.f71182e;
        if (abstractC25484a != null) {
            z = abstractC25484a.mo3412b(c25469g);
        }
        return z;
    }
}

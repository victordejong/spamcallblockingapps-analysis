package androidx.appcompat.widget;

import android.view.View;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
public class ActionMenuPresenter$c implements Runnable {

    /* renamed from: a */
    public ActionMenuPresenter$e f227a;

    /* renamed from: b */
    public final /* synthetic */ ActionMenuPresenter f228b;

    public ActionMenuPresenter$c(ActionMenuPresenter actionMenuPresenter, ActionMenuPresenter$e actionMenuPresenter$e) {
        this.f228b = actionMenuPresenter;
        this.f227a = actionMenuPresenter$e;
    }

    @Override // java.lang.Runnable
    public void run() {
        C25469g.AbstractC25470a abstractC25470a;
        C25469g c25469g = this.f228b.f71180c;
        if (c25469g != null && (abstractC25470a = c25469g.f71220e) != null) {
            abstractC25470a.mo3368b(c25469g);
        }
        View view = (View) this.f228b.f71185h;
        if (view != null && view.getWindowToken() != null && this.f227a.m3424h()) {
            this.f228b.u = this.f227a;
        }
        this.f228b.w = null;
    }
}

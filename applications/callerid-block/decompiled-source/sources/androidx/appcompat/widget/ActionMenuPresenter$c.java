package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.widget.ActionMenuPresenter;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
class ActionMenuPresenter$c implements Runnable {

    /* renamed from: b */
    private ActionMenuPresenter.e f358b;

    /* renamed from: c */
    final /* synthetic */ ActionMenuPresenter f359c;

    public ActionMenuPresenter$c(ActionMenuPresenter actionMenuPresenter, ActionMenuPresenter.e eVar) {
        this.f359c = actionMenuPresenter;
        this.f358b = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ActionMenuPresenter.p(this.f359c) != null) {
            ActionMenuPresenter.q(this.f359c).d();
        }
        View view = (View) ActionMenuPresenter.r(this.f359c);
        if (!(view == null || view.getWindowToken() == null || !this.f358b.m14824m())) {
            this.f359c.y = this.f358b;
        }
        this.f359c.A = null;
    }
}

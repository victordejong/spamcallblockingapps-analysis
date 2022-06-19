package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.widget.ActionMenuPresenter;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
public class ActionMenuPresenter$c implements Runnable {

    /* renamed from: a */
    public ActionMenuPresenter.e f501a;

    /* renamed from: b */
    public final /* synthetic */ ActionMenuPresenter f502b;

    public ActionMenuPresenter$c(ActionMenuPresenter actionMenuPresenter, ActionMenuPresenter.e eVar) {
        this.f502b = actionMenuPresenter;
        this.f501a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ActionMenuPresenter.o(this.f502b) != null) {
            ActionMenuPresenter.p(this.f502b).changeMenuMode();
        }
        View view = (View) ActionMenuPresenter.q(this.f502b);
        if (view != null && view.getWindowToken() != null && this.f501a.m5478m()) {
            this.f502b.z = this.f501a;
        }
        this.f502b.B = null;
    }
}

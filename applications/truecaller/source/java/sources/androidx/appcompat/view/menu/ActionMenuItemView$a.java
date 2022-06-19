package androidx.appcompat.view.menu;

import androidx.appcompat.widget.ActionMenuPresenter$a;
import androidx.appcompat.widget.ActionMenuPresenter$b;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25480k;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25488p;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
public class ActionMenuItemView$a extends AbstractView$OnTouchListenerC25561z {

    /* renamed from: j */
    public final /* synthetic */ ActionMenuItemView f178j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuItemView$a(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f178j = actionMenuItemView;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z
    /* renamed from: b */
    public AbstractC25488p mo3240b() {
        ActionMenuItemView$b actionMenuItemView$b = this.f178j.k;
        AbstractC25480k abstractC25480k = null;
        if (actionMenuItemView$b != null) {
            ActionMenuPresenter$a actionMenuPresenter$a = ((ActionMenuPresenter$b) actionMenuItemView$b).f226a.v;
            abstractC25480k = null;
            if (actionMenuPresenter$a != null) {
                abstractC25480k = actionMenuPresenter$a.m3431a();
            }
        }
        return abstractC25480k;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z
    /* renamed from: c */
    public boolean mo3239c() {
        ActionMenuItemView actionMenuItemView = this.f178j;
        C25469g.AbstractC25471b abstractC25471b = actionMenuItemView.i;
        boolean z = false;
        if (abstractC25471b != null) {
            z = false;
            if (abstractC25471b.mo3457e(actionMenuItemView.f)) {
                AbstractC25488p mo3240b = mo3240b();
                z = false;
                if (mo3240b != null) {
                    z = false;
                    if (mo3240b.isShowing()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }
}

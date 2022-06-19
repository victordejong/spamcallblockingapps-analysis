package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;
import androidx.appcompat.C0032R;
import n3.b.e.i.r;
import p1727n3.p1734b.p1741e.p1742i.C25481l;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$a.class */
public class ActionMenuPresenter$a extends C25481l {

    /* renamed from: m */
    public final /* synthetic */ ActionMenuPresenter f225m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [android.view.View] */
    public ActionMenuPresenter$a(ActionMenuPresenter actionMenuPresenter, Context context, r rVar, View view) {
        super(context, rVar, view, false, C0032R.attr.actionOverflowMenuStyle, 0);
        this.f225m = actionMenuPresenter;
        if (!rVar.A.m3452g()) {
            ActionMenuPresenter$d actionMenuPresenter$d = actionMenuPresenter.j;
            this.f71289f = actionMenuPresenter$d == null ? (View) actionMenuPresenter.f71185h : actionMenuPresenter$d;
        }
        m3427e(actionMenuPresenter.y);
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25481l
    /* renamed from: c */
    public void mo3429c() {
        ActionMenuPresenter actionMenuPresenter = this.f225m;
        actionMenuPresenter.v = null;
        actionMenuPresenter.z = 0;
        super.mo3429c();
    }
}

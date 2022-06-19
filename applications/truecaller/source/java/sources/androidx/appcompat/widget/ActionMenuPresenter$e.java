package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1741e.p1742i.C25481l;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$e.class */
public class ActionMenuPresenter$e extends C25481l {

    /* renamed from: m */
    public final /* synthetic */ ActionMenuPresenter f231m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuPresenter$e(ActionMenuPresenter actionMenuPresenter, Context context, C25469g c25469g, View view, boolean z) {
        super(context, c25469g, view, z, C0032R.attr.actionOverflowMenuStyle, 0);
        this.f231m = actionMenuPresenter;
        this.f71290g = 8388613;
        m3427e(actionMenuPresenter.y);
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25481l
    /* renamed from: c */
    public void mo3429c() {
        C25469g c25469g = this.f231m.f71180c;
        if (c25469g != null) {
            c25469g.m3481c(true);
        }
        this.f231m.u = null;
        super.mo3429c();
    }
}

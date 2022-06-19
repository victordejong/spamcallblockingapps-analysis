package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/ConstraintLayout$a.class */
public class ConstraintLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ ConstraintLayout f2253a;

    public ConstraintLayout$a(ConstraintLayout constraintLayout) {
        this.f2253a = constraintLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(ConstraintLayout.i(this.f2253a))) {
            outline.setRect(0, 0, this.f2253a.getWidth(), this.f2253a.getHeight());
            return;
        }
        ConstraintLayout.j(this.f2253a).setBounds(0, 0, this.f2253a.getWidth(), this.f2253a.getHeight());
        ConstraintLayout.j(this.f2253a).getOutline(outline);
    }
}

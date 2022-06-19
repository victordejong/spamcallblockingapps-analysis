package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/LinearLayout$a.class */
public class LinearLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ LinearLayout f2295a;

    public LinearLayout$a(LinearLayout linearLayout) {
        this.f2295a = linearLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(LinearLayout.a(this.f2295a))) {
            outline.setRect(0, 0, this.f2295a.getWidth(), this.f2295a.getHeight());
            return;
        }
        LinearLayout.b(this.f2295a).setBounds(0, 0, this.f2295a.getWidth(), this.f2295a.getHeight());
        LinearLayout.b(this.f2295a).getOutline(outline);
    }
}

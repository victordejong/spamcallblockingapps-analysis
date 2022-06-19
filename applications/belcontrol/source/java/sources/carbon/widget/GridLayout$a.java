package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/GridLayout$a.class */
public class GridLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ GridLayout f2279a;

    public GridLayout$a(GridLayout gridLayout) {
        this.f2279a = gridLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(GridLayout.L(this.f2279a))) {
            outline.setRect(0, 0, this.f2279a.getWidth(), this.f2279a.getHeight());
            return;
        }
        GridLayout.M(this.f2279a).setBounds(0, 0, this.f2279a.getWidth(), this.f2279a.getHeight());
        GridLayout.M(this.f2279a).getOutline(outline);
    }
}

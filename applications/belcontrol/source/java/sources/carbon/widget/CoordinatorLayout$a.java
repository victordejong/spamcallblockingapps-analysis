package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/CoordinatorLayout$a.class */
public class CoordinatorLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f2254a;

    public CoordinatorLayout$a(CoordinatorLayout coordinatorLayout) {
        this.f2254a = coordinatorLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(CoordinatorLayout.a(this.f2254a))) {
            outline.setRect(0, 0, this.f2254a.getWidth(), this.f2254a.getHeight());
            return;
        }
        CoordinatorLayout.b(this.f2254a).setBounds(0, 0, this.f2254a.getWidth(), this.f2254a.getHeight());
        CoordinatorLayout.b(this.f2254a).getOutline(outline);
    }
}

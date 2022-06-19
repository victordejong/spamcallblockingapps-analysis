package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/DrawerLayout$a.class */
public class DrawerLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ DrawerLayout f2256a;

    public DrawerLayout$a(DrawerLayout drawerLayout) {
        this.f2256a = drawerLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(DrawerLayout.Q(this.f2256a))) {
            outline.setRect(0, 0, this.f2256a.getWidth(), this.f2256a.getHeight());
            return;
        }
        DrawerLayout.R(this.f2256a).setBounds(0, 0, this.f2256a.getWidth(), this.f2256a.getHeight());
        DrawerLayout.R(this.f2256a).getOutline(outline);
    }
}

package carbon.beta;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/beta/AppBarLayout$a.class */
public class AppBarLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ AppBarLayout f2224a;

    public AppBarLayout$a(AppBarLayout appBarLayout) {
        this.f2224a = appBarLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(AppBarLayout.a(this.f2224a))) {
            outline.setRect(0, 0, this.f2224a.getWidth(), this.f2224a.getHeight());
            return;
        }
        AppBarLayout.b(this.f2224a).setBounds(0, 0, this.f2224a.getWidth(), this.f2224a.getHeight());
        AppBarLayout.b(this.f2224a).getOutline(outline);
    }
}

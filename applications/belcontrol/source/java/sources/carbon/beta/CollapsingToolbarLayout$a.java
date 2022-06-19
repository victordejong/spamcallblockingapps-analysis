package carbon.beta;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/beta/CollapsingToolbarLayout$a.class */
public class CollapsingToolbarLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ CollapsingToolbarLayout f2228a;

    public CollapsingToolbarLayout$a(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f2228a = collapsingToolbarLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(CollapsingToolbarLayout.a(this.f2228a))) {
            outline.setRect(0, 0, this.f2228a.getWidth(), this.f2228a.getHeight());
            return;
        }
        CollapsingToolbarLayout.b(this.f2228a).setBounds(0, 0, this.f2228a.getWidth(), this.f2228a.getHeight());
        CollapsingToolbarLayout.b(this.f2228a).getOutline(outline);
    }
}

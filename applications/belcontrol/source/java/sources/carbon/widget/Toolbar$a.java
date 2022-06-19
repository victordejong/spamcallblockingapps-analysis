package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/Toolbar$a.class */
public class Toolbar$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ Toolbar f2340a;

    public Toolbar$a(Toolbar toolbar) {
        this.f2340a = toolbar;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(Toolbar.a(this.f2340a))) {
            outline.setRect(0, 0, this.f2340a.getWidth(), this.f2340a.getHeight());
            return;
        }
        Toolbar.b(this.f2340a).setBounds(0, 0, this.f2340a.getWidth(), this.f2340a.getHeight());
        Toolbar.b(this.f2340a).getOutline(outline);
    }
}

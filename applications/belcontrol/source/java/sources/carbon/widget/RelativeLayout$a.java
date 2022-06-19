package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/RelativeLayout$a.class */
public class RelativeLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ RelativeLayout f2324a;

    public RelativeLayout$a(RelativeLayout relativeLayout) {
        this.f2324a = relativeLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(RelativeLayout.a(this.f2324a))) {
            outline.setRect(0, 0, this.f2324a.getWidth(), this.f2324a.getHeight());
            return;
        }
        RelativeLayout.b(this.f2324a).setBounds(0, 0, this.f2324a.getWidth(), this.f2324a.getHeight());
        RelativeLayout.b(this.f2324a).getOutline(outline);
    }
}

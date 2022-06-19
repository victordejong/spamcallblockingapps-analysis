package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/FlowLayout$a.class */
public class FlowLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ FlowLayout f2274a;

    public FlowLayout$a(FlowLayout flowLayout) {
        this.f2274a = flowLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(FlowLayout.a(this.f2274a))) {
            outline.setRect(0, 0, this.f2274a.getWidth(), this.f2274a.getHeight());
            return;
        }
        FlowLayout.b(this.f2274a).setBounds(0, 0, this.f2274a.getWidth(), this.f2274a.getHeight());
        FlowLayout.b(this.f2274a).getOutline(outline);
    }
}

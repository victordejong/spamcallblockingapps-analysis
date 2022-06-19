package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/FrameLayout$a.class */
public class FrameLayout$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f2275a;

    public FrameLayout$a(FrameLayout frameLayout) {
        this.f2275a = frameLayout;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(FrameLayout.a(this.f2275a))) {
            outline.setRect(0, 0, this.f2275a.getWidth(), this.f2275a.getHeight());
            return;
        }
        FrameLayout.b(this.f2275a).setBounds(0, 0, this.f2275a.getWidth(), this.f2275a.getHeight());
        FrameLayout.b(this.f2275a).getOutline(outline);
    }
}

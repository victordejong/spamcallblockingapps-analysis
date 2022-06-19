package carbon.view;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/view/View$a.class */
public class View$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ View f2240a;

    public View$a(View view) {
        this.f2240a = view;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(View.a(this.f2240a))) {
            outline.setRect(0, 0, this.f2240a.getWidth(), this.f2240a.getHeight());
            return;
        }
        View.b(this.f2240a).setBounds(0, 0, this.f2240a.getWidth(), this.f2240a.getHeight());
        View.b(this.f2240a).getOutline(outline);
    }
}

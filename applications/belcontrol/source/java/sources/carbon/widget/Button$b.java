package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/Button$b.class */
public class Button$b extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ Button f2251a;

    public Button$b(Button button) {
        this.f2251a = button;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(Button.a(this.f2251a))) {
            outline.setRect(0, 0, this.f2251a.getWidth(), this.f2251a.getHeight());
            return;
        }
        Button.b(this.f2251a).setBounds(0, 0, this.f2251a.getWidth(), this.f2251a.getHeight());
        Button.b(this.f2251a).getOutline(outline);
    }
}

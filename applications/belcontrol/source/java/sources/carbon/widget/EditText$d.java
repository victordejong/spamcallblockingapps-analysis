package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/EditText$d.class */
public class EditText$d extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ EditText f2270a;

    public EditText$d(EditText editText) {
        this.f2270a = editText;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(EditText.f(this.f2270a))) {
            outline.setRect(0, 0, this.f2270a.getWidth(), this.f2270a.getHeight());
            return;
        }
        EditText.g(this.f2270a).setBounds(0, 0, this.f2270a.getWidth(), this.f2270a.getHeight());
        EditText.g(this.f2270a).getOutline(outline);
    }
}

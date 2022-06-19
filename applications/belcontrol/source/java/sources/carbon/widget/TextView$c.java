package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/TextView$c.class */
public class TextView$c extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ TextView f2336a;

    public TextView$c(TextView textView) {
        this.f2336a = textView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(TextView.d(this.f2336a))) {
            outline.setRect(0, 0, this.f2336a.getWidth(), this.f2336a.getHeight());
            return;
        }
        TextView.e(this.f2336a).setBounds(0, 0, this.f2336a.getWidth(), this.f2336a.getHeight());
        TextView.e(this.f2336a).getOutline(outline);
    }
}

package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/ImageView$a.class */
public class ImageView$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ ImageView f2280a;

    public ImageView$a(ImageView imageView) {
        this.f2280a = imageView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(ImageView.a(this.f2280a))) {
            outline.setRect(0, 0, this.f2280a.getWidth(), this.f2280a.getHeight());
            return;
        }
        ImageView.b(this.f2280a).setBounds(0, 0, this.f2280a.getWidth(), this.f2280a.getHeight());
        ImageView.b(this.f2280a).getOutline(outline);
    }
}

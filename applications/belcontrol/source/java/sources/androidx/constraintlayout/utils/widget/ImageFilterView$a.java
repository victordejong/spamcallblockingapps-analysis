package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$a.class */
public class ImageFilterView$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ ImageFilterView f661a;

    public ImageFilterView$a(ImageFilterView imageFilterView) {
        this.f661a = imageFilterView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        int width = this.f661a.getWidth();
        int height = this.f661a.getHeight();
        outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.c(this.f661a)) / 2.0f);
    }
}

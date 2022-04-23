package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$a.class */
class ImageFilterView$a extends ViewOutlineProvider {

    /* renamed from: a */
    final /* synthetic */ ImageFilterView f1271a;

    ImageFilterView$a(ImageFilterView imageFilterView) {
        this.f1271a = imageFilterView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        int width = this.f1271a.getWidth();
        int height = this.f1271a.getHeight();
        outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.c(this.f1271a)) / 2.0f);
    }
}

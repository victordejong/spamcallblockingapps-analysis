package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton$a.class */
class ImageFilterButton$a extends ViewOutlineProvider {

    /* renamed from: a */
    final /* synthetic */ ImageFilterButton f1269a;

    ImageFilterButton$a(ImageFilterButton imageFilterButton) {
        this.f1269a = imageFilterButton;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        int width = this.f1269a.getWidth();
        int height = this.f1269a.getHeight();
        outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.a(this.f1269a)) / 2.0f);
    }
}

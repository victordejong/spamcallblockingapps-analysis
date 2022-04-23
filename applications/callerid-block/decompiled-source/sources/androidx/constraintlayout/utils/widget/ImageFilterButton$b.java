package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton$b.class */
class ImageFilterButton$b extends ViewOutlineProvider {

    /* renamed from: a */
    final /* synthetic */ ImageFilterButton f1270a;

    ImageFilterButton$b(ImageFilterButton imageFilterButton) {
        this.f1270a = imageFilterButton;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, this.f1270a.getWidth(), this.f1270a.getHeight(), ImageFilterButton.b(this.f1270a));
    }
}

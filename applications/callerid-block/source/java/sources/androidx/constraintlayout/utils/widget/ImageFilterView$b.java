package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$b.class */
class ImageFilterView$b extends ViewOutlineProvider {

    /* renamed from: a */
    final /* synthetic */ ImageFilterView f1272a;

    ImageFilterView$b(ImageFilterView imageFilterView) {
        this.f1272a = imageFilterView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, this.f1272a.getWidth(), this.f1272a.getHeight(), ImageFilterView.d(this.f1272a));
    }
}

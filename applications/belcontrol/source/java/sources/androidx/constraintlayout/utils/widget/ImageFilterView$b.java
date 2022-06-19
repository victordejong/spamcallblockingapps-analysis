package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$b.class */
public class ImageFilterView$b extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ ImageFilterView f662a;

    public ImageFilterView$b(ImageFilterView imageFilterView) {
        this.f662a = imageFilterView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, this.f662a.getWidth(), this.f662a.getHeight(), ImageFilterView.d(this.f662a));
    }
}

package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton$b.class */
public class ImageFilterButton$b extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ ImageFilterButton f660a;

    public ImageFilterButton$b(ImageFilterButton imageFilterButton) {
        this.f660a = imageFilterButton;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, this.f660a.getWidth(), this.f660a.getHeight(), ImageFilterButton.b(this.f660a));
    }
}

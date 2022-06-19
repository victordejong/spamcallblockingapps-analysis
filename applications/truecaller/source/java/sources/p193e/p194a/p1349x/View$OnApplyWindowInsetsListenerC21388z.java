package p193e.p194a.p1349x;

import android.view.View;
import android.view.WindowInsets;
import androidx.constraintlayout.widget.Guideline;
import s1.z.c.l;
/* renamed from: e.a.x.z */
/* loaded from: classes9-dex2jar.jar:e/a/x/z.class */
public final class View$OnApplyWindowInsetsListenerC21388z implements View.OnApplyWindowInsetsListener {

    /* renamed from: a */
    public final /* synthetic */ Guideline f59852a;

    public View$OnApplyWindowInsetsListenerC21388z(Guideline guideline) {
        this.f59852a = guideline;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        Guideline guideline = this.f59852a;
        l.d(windowInsets, "insets");
        guideline.setGuidelineBegin(windowInsets.getSystemWindowInsetTop());
        return windowInsets;
    }
}

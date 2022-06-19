package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout {

    /* renamed from: a */
    public AbstractC0244j0 f615a;

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        AbstractC0244j0 abstractC0244j0 = this.f615a;
        if (abstractC0244j0 != null) {
            abstractC0244j0.m8475a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(AbstractC0244j0 abstractC0244j0) {
        this.f615a = abstractC0244j0;
    }
}

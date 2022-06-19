package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsLinearLayout.class */
public class FitWindowsLinearLayout extends LinearLayout {

    /* renamed from: a */
    public AbstractC0244j0 f616a;

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        AbstractC0244j0 abstractC0244j0 = this.f616a;
        if (abstractC0244j0 != null) {
            abstractC0244j0.m8475a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(AbstractC0244j0 abstractC0244j0) {
        this.f616a = abstractC0244j0;
    }
}

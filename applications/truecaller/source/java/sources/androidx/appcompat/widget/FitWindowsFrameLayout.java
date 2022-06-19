package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import p1727n3.p1734b.p1743f.AbstractC25559y;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout {

    /* renamed from: a */
    public AbstractC25559y f307a;

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        AbstractC25559y abstractC25559y = this.f307a;
        if (abstractC25559y != null) {
            abstractC25559y.m3243a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(AbstractC25559y abstractC25559y) {
        this.f307a = abstractC25559y;
    }
}

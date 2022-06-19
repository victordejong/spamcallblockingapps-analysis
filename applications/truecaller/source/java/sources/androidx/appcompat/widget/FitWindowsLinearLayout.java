package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import p1727n3.p1734b.p1743f.AbstractC25559y;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsLinearLayout.class */
public class FitWindowsLinearLayout extends LinearLayout {

    /* renamed from: a */
    public AbstractC25559y f308a;

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        AbstractC25559y abstractC25559y = this.f308a;
        if (abstractC25559y != null) {
            abstractC25559y.m3243a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(AbstractC25559y abstractC25559y) {
        this.f308a = abstractC25559y;
    }
}

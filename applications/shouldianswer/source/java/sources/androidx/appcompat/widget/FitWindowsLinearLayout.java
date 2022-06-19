package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AbstractC0272ac;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsLinearLayout.class */
public class FitWindowsLinearLayout extends LinearLayout implements AbstractC0272ac {

    /* renamed from: a */
    private AbstractC0272ac.AbstractC0273a f978a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        AbstractC0272ac.AbstractC0273a abstractC0273a = this.f978a;
        if (abstractC0273a != null) {
            abstractC0273a.mo7289a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.AbstractC0272ac
    public void setOnFitSystemWindowsListener(AbstractC0272ac.AbstractC0273a abstractC0273a) {
        this.f978a = abstractC0273a;
    }
}

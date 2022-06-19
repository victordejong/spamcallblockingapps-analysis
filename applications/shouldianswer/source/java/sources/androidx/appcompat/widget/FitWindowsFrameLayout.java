package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AbstractC0272ac;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout implements AbstractC0272ac {

    /* renamed from: a */
    private AbstractC0272ac.AbstractC0273a f977a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        AbstractC0272ac.AbstractC0273a abstractC0273a = this.f977a;
        if (abstractC0273a != null) {
            abstractC0273a.mo7289a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.AbstractC0272ac
    public void setOnFitSystemWindowsListener(AbstractC0272ac.AbstractC0273a abstractC0273a) {
        this.f977a = abstractC0273a;
    }
}

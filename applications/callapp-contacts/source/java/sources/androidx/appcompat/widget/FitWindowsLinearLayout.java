package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AbstractC0408q;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsLinearLayout.class */
public class FitWindowsLinearLayout extends LinearLayout implements AbstractC0408q {

    /* renamed from: a */
    private AbstractC0408q.AbstractC0409a f1221a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        AbstractC0408q.AbstractC0409a abstractC0409a = this.f1221a;
        if (abstractC0409a != null) {
            abstractC0409a.mo45618a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.AbstractC0408q
    public void setOnFitSystemWindowsListener(AbstractC0408q.AbstractC0409a abstractC0409a) {
        this.f1221a = abstractC0409a;
    }
}

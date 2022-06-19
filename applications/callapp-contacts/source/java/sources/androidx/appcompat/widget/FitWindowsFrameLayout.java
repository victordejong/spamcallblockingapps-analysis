package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AbstractC0408q;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout implements AbstractC0408q {

    /* renamed from: a */
    private AbstractC0408q.AbstractC0409a f1220a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        AbstractC0408q.AbstractC0409a abstractC0409a = this.f1220a;
        if (abstractC0409a != null) {
            abstractC0409a.mo45618a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.AbstractC0408q
    public void setOnFitSystemWindowsListener(AbstractC0408q.AbstractC0409a abstractC0409a) {
        this.f1220a = abstractC0409a;
    }
}

package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AbstractC0321s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout implements AbstractC0321s {

    /* renamed from: d */
    private AbstractC0321s.AbstractC0322a f958d;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        AbstractC0321s.AbstractC0322a abstractC0322a = this.f958d;
        if (abstractC0322a != null) {
            abstractC0322a.mo34758a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.AbstractC0321s
    public void setOnFitSystemWindowsListener(AbstractC0321s.AbstractC0322a abstractC0322a) {
        this.f958d = abstractC0322a;
    }
}

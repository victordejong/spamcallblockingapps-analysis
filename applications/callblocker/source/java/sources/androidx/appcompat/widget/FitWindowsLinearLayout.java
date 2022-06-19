package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AbstractC0280aa;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsLinearLayout.class */
public class FitWindowsLinearLayout extends LinearLayout implements AbstractC0280aa {

    /* renamed from: a */
    private AbstractC0280aa.AbstractC0281a f1040a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (this.f1040a != null) {
            this.f1040a.mo21561a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.AbstractC0280aa
    public void setOnFitSystemWindowsListener(AbstractC0280aa.AbstractC0281a abstractC0281a) {
        this.f1040a = abstractC0281a;
    }
}

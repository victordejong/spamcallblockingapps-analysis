package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import p012b.p016b.p026q.AbstractC0720r;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsLinearLayout.class */
public class FitWindowsLinearLayout extends LinearLayout implements AbstractC0720r {

    /* renamed from: a */
    public AbstractC0720r.AbstractC0721a f612a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        AbstractC0720r.AbstractC0721a aVar = this.f612a;
        if (aVar != null) {
            aVar.mo36233a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // p012b.p016b.p026q.AbstractC0720r
    public void setOnFitSystemWindowsListener(AbstractC0720r.AbstractC0721a aVar) {
        this.f612a = aVar;
    }
}

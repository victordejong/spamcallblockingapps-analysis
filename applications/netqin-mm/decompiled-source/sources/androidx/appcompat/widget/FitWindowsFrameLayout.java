package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import p012b.p016b.p026q.AbstractC0720r;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout implements AbstractC0720r {

    /* renamed from: a */
    public AbstractC0720r.AbstractC0721a f611a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        AbstractC0720r.AbstractC0721a aVar = this.f611a;
        if (aVar != null) {
            aVar.mo36233a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // p012b.p016b.p026q.AbstractC0720r
    public void setOnFitSystemWindowsListener(AbstractC0720r.AbstractC0721a aVar) {
        this.f611a = aVar;
    }
}

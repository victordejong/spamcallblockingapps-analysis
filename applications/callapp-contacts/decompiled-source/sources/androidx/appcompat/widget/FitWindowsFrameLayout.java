package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.widget.q;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout implements q {

    /* renamed from: a  reason: collision with root package name */
    private q.a f956a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        q.a aVar = this.f956a;
        if (aVar != null) {
            aVar.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.q
    public void setOnFitSystemWindowsListener(q.a aVar) {
        this.f956a = aVar;
    }
}

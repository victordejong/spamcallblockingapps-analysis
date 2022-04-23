package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.FitWindowsViewGroup;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout implements FitWindowsViewGroup {

    /* renamed from: f */
    private FitWindowsViewGroup.OnFitSystemWindowsListener f1071f;

    public FitWindowsFrameLayout(@NonNull Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        FitWindowsViewGroup.OnFitSystemWindowsListener onFitSystemWindowsListener = this.f1071f;
        if (onFitSystemWindowsListener != null) {
            onFitSystemWindowsListener.mo21486a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.FitWindowsViewGroup
    public void setOnFitSystemWindowsListener(FitWindowsViewGroup.OnFitSystemWindowsListener onFitSystemWindowsListener) {
        this.f1071f = onFitSystemWindowsListener;
    }
}

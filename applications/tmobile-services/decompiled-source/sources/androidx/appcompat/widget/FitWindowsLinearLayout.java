package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.FitWindowsViewGroup;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsLinearLayout.class */
public class FitWindowsLinearLayout extends LinearLayout implements FitWindowsViewGroup {

    /* renamed from: f */
    private FitWindowsViewGroup.OnFitSystemWindowsListener f1072f;

    public FitWindowsLinearLayout(@NonNull Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        FitWindowsViewGroup.OnFitSystemWindowsListener onFitSystemWindowsListener = this.f1072f;
        if (onFitSystemWindowsListener != null) {
            onFitSystemWindowsListener.mo21486a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.FitWindowsViewGroup
    public void setOnFitSystemWindowsListener(FitWindowsViewGroup.OnFitSystemWindowsListener onFitSystemWindowsListener) {
        this.f1072f = onFitSystemWindowsListener;
    }
}

package androidx.appcompat.widget;

import android.graphics.Rect;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsViewGroup.class */
public interface FitWindowsViewGroup {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener.class */
    public interface OnFitSystemWindowsListener {
        /* renamed from: a */
        void mo21486a(Rect rect);
    }

    void setOnFitSystemWindowsListener(OnFitSystemWindowsListener onFitSystemWindowsListener);
}

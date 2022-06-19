package androidx.appcompat.widget;

import android.graphics.Rect;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsViewGroup.class */
public interface FitWindowsViewGroup {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener.class */
    public interface OnFitSystemWindowsListener {
        void onFitSystemWindows(Rect rect);
    }

    void setOnFitSystemWindowsListener(OnFitSystemWindowsListener onFitSystemWindowsListener);
}

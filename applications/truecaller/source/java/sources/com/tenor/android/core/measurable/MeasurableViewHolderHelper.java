package com.tenor.android.core.measurable;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.util.AbstractUIUtils;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/measurable/MeasurableViewHolderHelper.class */
public class MeasurableViewHolderHelper {
    public static float calculateVisibleFraction(RecyclerView recyclerView, View view, float f) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        if (rect.isEmpty()) {
            return 0.01f;
        }
        Rect rect2 = new Rect();
        recyclerView.getGlobalVisibleRect(rect2);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        boolean isRightToLeft = AbstractUIUtils.isRightToLeft(recyclerView.getContext());
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        float f2 = !isRightToLeft ? 1.0f - f : f;
        float f3 = rect2.left;
        float f4 = measuredWidth;
        int i = (int) (f3 - (f2 * f4));
        int i2 = (int) (rect2.right - ((1.0f - f2) * f4));
        float f5 = rect2.top;
        float f6 = measuredHeight;
        int i3 = (int) (f5 - ((1.0f - f) * f6));
        int i4 = (int) (rect2.bottom - (f * f6));
        boolean z = false;
        boolean z2 = iArr[0] < i || iArr[0] > i2;
        if (iArr[1] < i3 || iArr[1] > i4) {
            z = true;
        }
        if (!z2 && !z) {
            return Math.max(Math.min(Math.min(rect.width() / f4, rect.height() / f6), 1.0f), 0.01f);
        }
        return 0.01f;
    }
}

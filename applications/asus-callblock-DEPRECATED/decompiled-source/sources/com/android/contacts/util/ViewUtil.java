package com.android.contacts.util;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ViewUtil.class */
public class ViewUtil {
    private ViewUtil() {
    }

    public static int getConstantPreLayoutWidth(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams.width >= 0) {
            return layoutParams.width;
        }
        throw new IllegalStateException("Expecting view's width to be a constant rather than a result of the layout pass");
    }
}

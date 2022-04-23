package com.facebook.rebound.ui;

import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.FrameLayout;
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/a.class */
public abstract class a {
    public static final int a(float f, Resources resources) {
        return (int) TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    public static final FrameLayout.LayoutParams a(int i, int i2) {
        return new FrameLayout.LayoutParams(i, i2);
    }
}

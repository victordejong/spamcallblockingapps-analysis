package com.facebook.rebound.p308ui;

import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.FrameLayout;
/* renamed from: com.facebook.rebound.ui.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/a.class */
public abstract class AbstractC10430a {
    /* renamed from: a */
    public static final int m22804a(float f, Resources resources) {
        return (int) TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    /* renamed from: a */
    public static final FrameLayout.LayoutParams m22803a(int i, int i2) {
        return new FrameLayout.LayoutParams(i, i2);
    }
}

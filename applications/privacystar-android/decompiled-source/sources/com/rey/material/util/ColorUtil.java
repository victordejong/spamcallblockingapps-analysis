package com.rey.material.util;

import android.graphics.Color;
import android.support.p001v4.view.ViewCompat;
/* loaded from: classes2-dex2jar.jar:com/rey/material/util/ColorUtil.class */
public class ColorUtil {
    public static int getColor(int i, float f) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | (Math.round(Color.alpha(i) * f) << 24);
    }

    public static int getMiddleColor(int i, int i2, float f) {
        return i == i2 ? i2 : f == 0.0f ? i : f == 1.0f ? i2 : Color.argb(getMiddleValue(Color.alpha(i), Color.alpha(i2), f), getMiddleValue(Color.red(i), Color.red(i2), f), getMiddleValue(Color.green(i), Color.green(i2), f), getMiddleValue(Color.blue(i), Color.blue(i2), f));
    }

    private static int getMiddleValue(int i, int i2, float f) {
        return Math.round(i + ((i2 - i) * f));
    }
}

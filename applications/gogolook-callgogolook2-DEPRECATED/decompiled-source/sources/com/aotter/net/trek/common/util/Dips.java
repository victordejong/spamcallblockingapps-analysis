package com.aotter.net.trek.common.util;

import android.content.Context;
import android.util.TypedValue;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/Dips.class */
public class Dips {
    public static float asFloatPixels(float f, Context context) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int asIntPixels(float f, Context context) {
        return (int) (asFloatPixels(f, context) + 0.5f);
    }
}

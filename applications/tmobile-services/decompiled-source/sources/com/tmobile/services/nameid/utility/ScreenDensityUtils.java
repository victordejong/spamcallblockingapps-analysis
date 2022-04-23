package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.util.TypedValue;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ScreenDensityUtils.class */
public class ScreenDensityUtils {
    private ScreenDensityUtils() {
        throw new IllegalAccessError("This is a utility class, it shouldn't be created");
    }

    /* renamed from: a */
    public static int m5376a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }
}

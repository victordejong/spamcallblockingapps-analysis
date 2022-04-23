package com.privacystar.core.p011ui.util;

import android.content.Context;
import android.util.TypedValue;
/* renamed from: com.privacystar.core.ui.util.DensityUtil */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/DensityUtil.class */
public class DensityUtil {
    public static int dpToPx(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }
}

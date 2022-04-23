package com.integralads.avid.library.mopub.utils;

import android.os.Build;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/utils/AvidViewUtil.class */
public class AvidViewUtil {
    public static boolean isViewVisible(View view) {
        boolean z = false;
        if (view.getVisibility() != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 11) {
            return true;
        }
        if (view.getAlpha() > 0.0d) {
            z = true;
        }
        return z;
    }
}

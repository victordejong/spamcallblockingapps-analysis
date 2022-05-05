package com.zendesk.util;

import android.graphics.Color;
import com.zendesk.logger.Logger;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/ColorUtils.class */
public class ColorUtils {
    public static final String LOG_TAG = "ColorUtils";

    private ColorUtils() {
    }

    public static Integer apiColorToAndroidColor(String str) {
        Integer num;
        if (StringUtils.isEmpty(str)) {
            Logger.m295e(LOG_TAG, "The supplied hex value is null or empty, returning null", new Object[0]);
            return null;
        }
        if (!str.startsWith("#")) {
            str = "#" + str;
        }
        if (str.length() != 7) {
            Logger.m295e(LOG_TAG, "The hex value is malformed, returning null for input: " + str, new Object[0]);
            return null;
        }
        try {
            num = Integer.valueOf(Color.parseColor(str));
        } catch (IllegalArgumentException e) {
            Logger.m296e(LOG_TAG, e.getMessage(), e, new Object[0]);
            num = null;
        }
        return num;
    }
}

package com.tenor.android.core.constant;

import android.content.Context;
import com.tenor.android.core.util.AbstractUIUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/ItemVisualPosition.class */
public class ItemVisualPosition {
    public static final String LEFT = "LEFT";
    public static final String RIGHT = "RIGHT";
    public static final String UNKNOWN = "UNKNOWN";

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/ItemVisualPosition$Value.class */
    public @interface Value {
    }

    @Value
    public static String parse(int i, boolean z) {
        if (i != -1) {
            String str = LEFT;
            if (i != 0) {
                if (!z) {
                    str = RIGHT;
                }
                return str;
            }
            if (z) {
                str = RIGHT;
            }
            return str;
        }
        return "UNKNOWN";
    }

    @Value
    public static String parse(Context context, int i) {
        return context == null ? "UNKNOWN" : parse(i, AbstractUIUtils.isRightToLeft(context));
    }
}

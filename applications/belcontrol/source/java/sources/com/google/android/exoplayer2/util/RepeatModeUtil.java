package com.google.android.exoplayer2.util;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/RepeatModeUtil.class */
public final class RepeatModeUtil {
    public static final int REPEAT_TOGGLE_MODE_ALL = 2;
    public static final int REPEAT_TOGGLE_MODE_NONE = 0;
    public static final int REPEAT_TOGGLE_MODE_ONE = 1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/RepeatModeUtil$RepeatToggleModes.class */
    public @interface RepeatToggleModes {
    }

    private RepeatModeUtil() {
    }

    public static int getNextRepeatMode(int i, int i2) {
        for (int i3 = 1; i3 <= 2; i3++) {
            int i4 = (i + i3) % 3;
            if (isRepeatModeEnabled(i4, i2)) {
                return i4;
            }
        }
        return i;
    }

    public static boolean isRepeatModeEnabled(int i, int i2) {
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                return (i2 & 2) != 0;
            }
            z = (i2 & 1) != 0;
        }
        return z;
    }
}

package com.tenor.android.core.checker;

import android.content.Context;
import com.tenor.android.core.C2746R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/checker/ScriptDirectionChecker.class */
public class ScriptDirectionChecker {
    public static final int LEFT_TO_RIGHT = 0;
    public static final int RIGHT_TO_LEFT = 1;
    public static final int UNSPECIFIED = -1;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/checker/ScriptDirectionChecker$Value.class */
    public @interface Value {
    }

    @Value
    public static int checkSelfScriptDirection(Context context) {
        if (context == null || context.getResources() == null) {
            return -1;
        }
        return context.getResources().getBoolean(C2746R.bool.right_to_left) ? 1 : 0;
    }
}

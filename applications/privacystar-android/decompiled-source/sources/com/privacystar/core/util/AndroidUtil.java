package com.privacystar.core.util;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/AndroidUtil.class */
public class AndroidUtil {
    @NonNull
    public static String getString(@Nullable Context context, @StringRes int i) {
        return context == null ? "" : context.getString(i);
    }

    @Nullable
    public static String getStringOrNull(Context context, @StringRes int i) {
        if (context == null) {
            return null;
        }
        return context.getString(i);
    }
}

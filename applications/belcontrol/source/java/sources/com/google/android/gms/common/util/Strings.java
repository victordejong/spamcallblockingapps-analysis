package com.google.android.gms.common.util;

import android.text.TextUtils;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.regex.Pattern;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/Strings.class */
public class Strings {
    private static final Pattern zza = Pattern.compile("\\$\\{(.*?)\\}");

    private Strings() {
    }

    @RecentlyNullable
    @KeepForSdk
    public static String emptyToNull(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        return str2;
    }

    @KeepForSdk
    public static boolean isEmptyOrWhitespace(String str) {
        return str == null || str.trim().isEmpty();
    }
}

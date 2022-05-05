package com.google.android.gms.common.util;

import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.regex.Pattern;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/Strings.class */
public class Strings {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    private Strings() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m14309a(@Nullable String str) {
        return str == null || str.trim().isEmpty();
    }
}

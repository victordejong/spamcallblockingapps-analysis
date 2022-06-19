package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/Strings.class */
public class Strings {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    private Strings() {
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    @KeepForSdk
    /* renamed from: a */
    public static boolean m38772a(String str) {
        return str == null || str.trim().isEmpty();
    }
}

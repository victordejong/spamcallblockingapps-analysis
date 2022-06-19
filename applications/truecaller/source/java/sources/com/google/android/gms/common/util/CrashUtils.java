package com.google.android.gms.common.util;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/CrashUtils.class */
public final class CrashUtils {
    @KeepForSdk
    /* renamed from: a */
    public static boolean m38790a(Context context, Throwable th) {
        try {
            Objects.requireNonNull(context, "null reference");
            Objects.requireNonNull(th, "null reference");
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}

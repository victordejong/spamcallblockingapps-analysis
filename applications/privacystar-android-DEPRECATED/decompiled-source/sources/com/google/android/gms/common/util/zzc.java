package com.google.android.gms.common.util;

import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/zzc.class */
public final class zzc {
    public static boolean isMainThread() {
        return Looper.getMainLooper() == Looper.myLooper();
    }
}

package com.facebook.ads.internal.util.common;

import android.os.Looper;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/util/common/Preconditions.class */
public final class Preconditions {
    public static void checkIsOnMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new RuntimeException("Must be called from the UiThread");
    }

    public static void checkIsTrue(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException(str);
    }
}

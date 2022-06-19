package com.google.android.gms.common.internal;

import android.os.Looper;
import com.google.android.gms.common.annotation.KeepForSdk;
import javax.annotation.Nullable;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Asserts.class */
public final class Asserts {
    private Asserts() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    public static void checkMainThread(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        new StringBuilder(String.valueOf(Thread.currentThread()).length() + 57 + String.valueOf(Looper.getMainLooper().getThread()).length());
        throw new IllegalStateException(str);
    }

    @KeepForSdk
    public static void checkNotMainThread(String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        new StringBuilder(String.valueOf(Thread.currentThread()).length() + 56 + String.valueOf(Looper.getMainLooper().getThread()).length());
        throw new IllegalStateException(str);
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    public static void checkNotNull(@Nullable Object obj) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("null reference");
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    public static void checkNotNull(@Nullable Object obj, Object obj2) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj2));
    }

    @KeepForSdk
    public static void checkNull(Object obj) {
        if (obj == null) {
            return;
        }
        throw new IllegalArgumentException("non-null reference");
    }

    @KeepForSdk
    public static void checkState(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    @KeepForSdk
    public static void checkState(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}

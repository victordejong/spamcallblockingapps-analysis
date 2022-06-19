package com.huawei.hms.common.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/Preconditions.class */
public final class Preconditions {
    public Preconditions() {
        throw new AssertionError("Cannot use constructor to make a new instance");
    }

    /* renamed from: a */
    public static boolean m38095a() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static void checkArgument(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static void checkHandlerThread(Handler handler) {
        checkHandlerThread(handler, "Must be called on the handler thread");
    }

    public static void checkHandlerThread(Handler handler, String str) {
        if (Looper.myLooper() == handler.getLooper()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    public static void checkMainThread(String str) {
        if (m38095a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    public static void checkNotMainThread() {
        if (!m38095a()) {
            return;
        }
        throw new IllegalStateException("Must not be called on the main application thread");
    }

    public static <O> O checkNotNull(O o) {
        Objects.requireNonNull(o, "must not refer to a null object");
        return o;
    }

    public static <O> O checkNotNull(O o, Object obj) {
        if (o != null) {
            return o;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}

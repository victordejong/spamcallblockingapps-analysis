package com.google.android.gms.common.internal;

import android.os.Looper;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/c.class */
public final class C12024c {
    private C12024c() {
        throw new AssertionError("Uninstantiable");
    }

    /* renamed from: a */
    public static void m19191a(Object obj) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("null reference");
    }

    /* renamed from: a */
    public static void m19190a(Object obj, Object obj2) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj2));
    }

    /* renamed from: a */
    public static void m19189a(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
        sb.append("checkMainThread: current thread ");
        sb.append(valueOf);
        sb.append(" IS NOT the main thread ");
        sb.append(valueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        throw new IllegalStateException(str);
    }
}

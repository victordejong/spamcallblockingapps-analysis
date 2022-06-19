package com.google.android.gms.common.internal;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c.class */
public final class C6110c {
    /* renamed from: a */
    public static void m17139a(@RecentlyNonNull String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
        sb.append("checkMainThread: current thread ");
        sb.append(valueOf);
        sb.append(" IS NOT the main thread ");
        sb.append(valueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        throw new IllegalStateException(str);
    }

    /* renamed from: b */
    public static void m17138b(@RecentlyNonNull String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(valueOf.length() + 56 + valueOf2.length());
        sb.append("checkNotMainThread: current thread ");
        sb.append(valueOf);
        sb.append(" IS the main thread ");
        sb.append(valueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        throw new IllegalStateException(str);
    }

    /* renamed from: c */
    public static void m17137c(@RecentlyNonNull Object obj) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("null reference");
    }
}

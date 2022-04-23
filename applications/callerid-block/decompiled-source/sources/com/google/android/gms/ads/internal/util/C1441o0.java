package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.os.StrictMode;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.ui;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.util.o0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/o0.class */
public final class C1441o0 {
    @Deprecated
    /* renamed from: a */
    public static <T> T m8726a(Context context, Callable<T> callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            T call = callable.call();
            StrictMode.setThreadPolicy(threadPolicy);
            return call;
        } catch (Throwable th) {
            C1894po.m6182d("Unexpected exception.", th);
            ui.c(context).m5051a(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }
}

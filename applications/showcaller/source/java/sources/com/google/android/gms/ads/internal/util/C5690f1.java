package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.os.StrictMode;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.ic0;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.util.f1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/f1.class */
public final class C5690f1 {
    @Deprecated
    /* renamed from: a */
    public static <T> T m18026a(Context context, Callable<T> callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            T call = callable.call();
            StrictMode.setThreadPolicy(threadPolicy);
            return call;
        } catch (Throwable th) {
            ei0.m15466d("Unexpected exception.", th);
            ic0.m14453c(context).mo13921b(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }
}

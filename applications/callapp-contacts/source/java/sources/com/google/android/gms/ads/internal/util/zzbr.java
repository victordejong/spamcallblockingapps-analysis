package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.os.StrictMode;
import com.google.android.gms.internal.ads.C12898sb;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.cyn;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbr.class */
public final class zzbr {
    @Deprecated
    public static <T> T zza(Context context, Callable<T> callable) {
        try {
            return (T) zza(callable);
        } catch (Throwable th) {
            C13088za.zzc("Unexpected exception.", th);
            C12898sb.m14202a(context).mo14197a(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }

    public static <T> T zza(cyn<T> cynVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return cynVar.mo17050a();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    private static <T> T zza(Callable<T> callable) throws Exception {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}

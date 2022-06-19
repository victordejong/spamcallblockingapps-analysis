package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashSet;
/* renamed from: com.google.android.gms.internal.ads.q4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q4.class */
public final class C6873q4 {
    @Deprecated

    /* renamed from: a */
    public static final String f28308a;

    /* renamed from: b */
    private static final HashSet<String> f28309b = new HashSet<>();

    /* renamed from: c */
    private static final String f28310c = "goog.exo.core";

    static {
        String str = Build.VERSION.RELEASE;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 57);
        sb.append("ExoPlayerLib/2.15.0 (Linux; Android ");
        sb.append(str);
        sb.append(") ExoPlayerLib/2.15.0");
        f28308a = sb.toString();
    }

    /* renamed from: a */
    public static String m12035a() {
        String str;
        synchronized (C6873q4.class) {
            try {
                str = f28310c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}

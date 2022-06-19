package com.google.android.exoplayer2;

import android.os.Build;
import java.util.HashSet;
/* renamed from: com.google.android.exoplayer2.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/p.class */
public final class C11257p {
    @Deprecated

    /* renamed from: a */
    public static final String f36924a = "ExoPlayerLib/2.13.3 (Linux; Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/2.13.3";

    /* renamed from: b */
    private static final HashSet<String> f36925b = new HashSet<>();

    /* renamed from: c */
    private static String f36926c = "goog.exo.core";

    private C11257p() {
    }

    /* renamed from: a */
    public static String m21032a() {
        String str;
        synchronized (C11257p.class) {
            try {
                str = f36926c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static void m21031a(String str) {
        synchronized (C11257p.class) {
            try {
                if (f36925b.add(str)) {
                    f36926c += ", " + str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

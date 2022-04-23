package com.google.android.exoplayer2;

import android.os.Build;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/p.class */
public final class p {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final String f21508a = "ExoPlayerLib/2.13.3 (Linux; Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/2.13.3";

    /* renamed from: b  reason: collision with root package name */
    private static final HashSet<String> f21509b = new HashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private static String f21510c = "goog.exo.core";

    private p() {
    }

    public static String a() {
        String str;
        synchronized (p.class) {
            try {
                str = f21510c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public static void a(String str) {
        synchronized (p.class) {
            try {
                if (f21509b.add(str)) {
                    f21510c += ", " + str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package com.google.android.exoplayer2;

import java.util.HashSet;
/* renamed from: com.google.android.exoplayer2.e0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/e0.class */
public final class C5053e0 {

    /* renamed from: a */
    private static final HashSet<String> f15725a = new HashSet<>();

    /* renamed from: b */
    private static String f15726b = "goog.exo.core";

    /* renamed from: a */
    public static void m20746a(String str) {
        synchronized (C5053e0.class) {
            try {
                if (f15725a.add(str)) {
                    f15726b += ", " + str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static String m20745b() {
        String str;
        synchronized (C5053e0.class) {
            try {
                str = f15726b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}

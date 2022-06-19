package com.google.android.exoplayer2.util;

import android.annotation.TargetApi;
import android.os.Trace;
/* renamed from: com.google.android.exoplayer2.util.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/f0.class */
public final class C5511f0 {
    /* renamed from: a */
    public static void m18893a(String str) {
        if (C5515h0.f17876a >= 18) {
            m18892b(str);
        }
    }

    @TargetApi(18)
    /* renamed from: b */
    private static void m18892b(String str) {
        Trace.beginSection(str);
    }

    /* renamed from: c */
    public static void m18891c() {
        if (C5515h0.f17876a >= 18) {
            m18890d();
        }
    }

    @TargetApi(18)
    /* renamed from: d */
    private static void m18890d() {
        Trace.endSection();
    }
}

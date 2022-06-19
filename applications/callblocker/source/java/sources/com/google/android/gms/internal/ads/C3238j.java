package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/j.class */
public final class C3238j {
    /* renamed from: a */
    public static C3319m m7742a(C3373o c3373o) {
        return c3373o == null ? null : c3373o.m7382a(C2341q.m14737j().mo13861b());
    }

    /* renamed from: a */
    public static boolean m7741a(C3373o c3373o, C3319m c3319m, String... strArr) {
        boolean z = false;
        if (c3373o != null) {
            if (c3319m == null) {
                z = false;
            } else {
                z = false;
                if (c3373o.f17049a) {
                    z = false;
                    if (c3319m != null) {
                        z = c3373o.m7381a(c3319m, C2341q.m14737j().mo13861b(), strArr);
                    }
                }
            }
        }
        return z;
    }
}

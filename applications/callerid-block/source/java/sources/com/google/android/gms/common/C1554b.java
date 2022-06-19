package com.google.android.gms.common;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/b.class */
public class C1554b {

    /* renamed from: a */
    public static final int f5810a = C1555c.f5812a;

    /* renamed from: b */
    private static final C1554b f5811b = new C1554b();

    C1554b() {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static C1554b m8455b() {
        return f5811b;
    }

    /* renamed from: a */
    public int m8456a(@RecentlyNonNull Context context) {
        return C1555c.m8452a(context);
    }

    /* renamed from: c */
    public int m8454c(@RecentlyNonNull Context context) {
        return m8453d(context, f5810a);
    }

    /* renamed from: d */
    public int m8453d(@RecentlyNonNull Context context, int i) {
        int m8449d = C1555c.m8449d(context, i);
        if (C1555c.m8448e(context, m8449d)) {
            return 18;
        }
        return m8449d;
    }
}

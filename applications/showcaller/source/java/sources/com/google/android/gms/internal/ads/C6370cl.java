package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* renamed from: com.google.android.gms.internal.ads.cl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cl.class */
public final class C6370cl implements Comparator<C6926rk> {
    public C6370cl(C6407dl c6407dl) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(C6926rk c6926rk, C6926rk c6926rk2) {
        C6926rk c6926rk3 = c6926rk;
        C6926rk c6926rk4 = c6926rk2;
        int i = 1;
        if (c6926rk3.m11436b() >= c6926rk4.m11436b()) {
            if (c6926rk3.m11436b() <= c6926rk4.m11436b()) {
                if (c6926rk3.m11437a() >= c6926rk4.m11437a()) {
                    if (c6926rk3.m11437a() <= c6926rk4.m11437a()) {
                        float m11434d = (c6926rk3.m11434d() - c6926rk3.m11436b()) * (c6926rk3.m11435c() - c6926rk3.m11437a());
                        float m11434d2 = (c6926rk4.m11434d() - c6926rk4.m11436b()) * (c6926rk4.m11435c() - c6926rk4.m11437a());
                        if (m11434d <= m11434d2) {
                            if (m11434d >= m11434d2) {
                                return 0;
                            }
                        }
                    }
                }
            }
            return i;
        }
        i = -1;
        return i;
    }
}

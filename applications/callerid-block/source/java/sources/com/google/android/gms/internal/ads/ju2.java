package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ju2.class */
public final class ju2 implements Comparator<yt2> {
    public ju2(ku2 ku2Var) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(yt2 yt2Var, yt2 yt2Var2) {
        yt2 yt2Var3 = yt2Var;
        yt2 yt2Var4 = yt2Var2;
        int i = 1;
        if (yt2Var3.m4700b() >= yt2Var4.m4700b()) {
            if (yt2Var3.m4700b() <= yt2Var4.m4700b()) {
                if (yt2Var3.m4701a() >= yt2Var4.m4701a()) {
                    if (yt2Var3.m4701a() <= yt2Var4.m4701a()) {
                        float m4698d = (yt2Var3.m4698d() - yt2Var3.m4700b()) * (yt2Var3.m4699c() - yt2Var3.m4701a());
                        float m4698d2 = (yt2Var4.m4698d() - yt2Var4.m4700b()) * (yt2Var4.m4699c() - yt2Var4.m4701a());
                        if (m4698d <= m4698d2) {
                            if (m4698d >= m4698d2) {
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

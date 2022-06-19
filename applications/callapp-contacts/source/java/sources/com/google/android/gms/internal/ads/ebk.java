package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebk.class */
public final class ebk {
    /* renamed from: a */
    public static int m15307a(ecy ecyVar) {
        int i = 0;
        while (ecyVar.m15229b() != 0) {
            int m15225d = ecyVar.m15225d();
            int i2 = i + m15225d;
            i = i2;
            if (m15225d != 255) {
                return i2;
            }
        }
        return -1;
    }
}

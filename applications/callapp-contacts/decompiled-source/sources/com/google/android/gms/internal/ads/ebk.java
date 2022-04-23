package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebk.class */
public final class ebk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(ecy ecyVar) {
        int i = 0;
        while (ecyVar.b() != 0) {
            int d2 = ecyVar.d();
            int i2 = i + d2;
            i = i2;
            if (d2 != 255) {
                return i2;
            }
        }
        return -1;
    }
}

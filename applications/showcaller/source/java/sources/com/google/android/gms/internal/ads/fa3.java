package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fa3.class */
public final class fa3 {

    /* renamed from: a */
    private static final le3<fa3> f22760a = new ea3();

    /* renamed from: a */
    public static int m15289a(int i) {
        if (i != 1) {
            return i - 2;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    /* renamed from: b */
    public static int m15288b(int i) {
        if (i != 0) {
            if (i == 1) {
                return 3;
            }
            if (i == 2) {
                return 4;
            }
            if (i == 3) {
                return 5;
            }
            return i != 4 ? 0 : 6;
        }
        return 2;
    }
}

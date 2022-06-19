package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o83.class */
public final class o83 {

    /* renamed from: a */
    private static final le3<o83> f27474a = new n83();

    /* renamed from: a */
    public static int m12710a(int i) {
        if (i != 1) {
            return i - 2;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    /* renamed from: b */
    public static int m12709b(int i) {
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
            if (i == 4) {
                return 6;
            }
            return i != 5 ? 0 : 7;
        }
        return 2;
    }
}

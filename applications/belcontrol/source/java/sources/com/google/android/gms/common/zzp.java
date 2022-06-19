package com.google.android.gms.common;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzp.class */
public final class zzp {
    public static int zza(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = new int[]{1, 2, 3, 4, 5}[i2];
            if (i3 == 0) {
                throw null;
            }
            if (i3 - 1 == i) {
                return i3;
            }
        }
        return 1;
    }
}

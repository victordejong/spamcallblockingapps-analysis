package com.google.android.gms.common;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/v.class */
final class v {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = new int[]{1, 2, 3, 4, 5}[i2];
            if (i3 == 0) {
                throw null;
            } else if (i3 - 1 == i) {
                return i3;
            }
        }
        return 1;
    }
}

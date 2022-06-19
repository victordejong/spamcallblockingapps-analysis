package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.y */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/y.class */
public final class C5539y {
    /* renamed from: a */
    public static int m18639a(int i, int i2) {
        for (int i3 = 1; i3 <= 2; i3++) {
            int i4 = (i + i3) % 3;
            if (m18638b(i4, i2)) {
                return i4;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m18638b(int i, int i2) {
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                return (i2 & 2) != 0;
            }
            z = (i2 & 1) != 0;
        }
        return z;
    }
}

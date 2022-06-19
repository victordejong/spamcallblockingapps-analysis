package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/w.class */
public final class C11630w {
    private C11630w() {
    }

    /* renamed from: a */
    public static int m19768a(int i, int i2) {
        for (int i3 = 1; i3 <= 2; i3++) {
            int i4 = (i + i3) % 3;
            if (m19767b(i4, i2)) {
                return i4;
            }
        }
        return i;
    }

    /* renamed from: b */
    private static boolean m19767b(int i, int i2) {
        if (i != 0) {
            return i != 1 ? i == 2 && (i2 & 2) != 0 : (i2 & 1) != 0;
        }
        return true;
    }
}

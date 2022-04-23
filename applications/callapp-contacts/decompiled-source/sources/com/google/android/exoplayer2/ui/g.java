package com.google.android.exoplayer2.ui;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/g.class */
final class g {
    private g() {
    }

    public static float a(int i, float f, int i2, int i3) {
        float f2;
        if (f == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i == 0) {
            f2 = i3;
        } else if (i == 1) {
            f2 = i2;
        } else if (i != 2) {
            return -3.4028235E38f;
        } else {
            return f;
        }
        return f * f2;
    }
}

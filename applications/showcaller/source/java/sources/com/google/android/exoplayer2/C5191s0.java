package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
/* renamed from: com.google.android.exoplayer2.s0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/s0.class */
public final /* synthetic */ class C5191s0 {
    /* renamed from: a */
    public static int m20194a(int i) {
        return m20193b(i, 0, 0);
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: b */
    public static int m20193b(int i, int i2, int i3) {
        return i | i2 | i3;
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: c */
    public static int m20192c(int i) {
        return i & 24;
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: d */
    public static int m20191d(int i) {
        return i & 7;
    }

    /* renamed from: e */
    public static String m20190e(int i) {
        if (i != 0) {
            if (i == 1) {
                return "NO_UNSUPPORTED_TYPE";
            }
            if (i == 2) {
                return "NO_UNSUPPORTED_DRM";
            }
            if (i == 3) {
                return "NO_EXCEEDS_CAPABILITIES";
            }
            if (i != 4) {
                throw new IllegalStateException();
            }
            return "YES";
        }
        return "NO";
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: f */
    public static int m20189f(int i) {
        return i & 32;
    }
}

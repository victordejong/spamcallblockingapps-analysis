package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bt3.class */
public final class bt3 {

    /* renamed from: a */
    public static final AbstractC7093w2<bt3> f20960a = bs3.f20955a;

    /* renamed from: b */
    public final int f20961b = 1;

    /* renamed from: c */
    private final C7021u4[] f20962c;

    /* renamed from: d */
    private int f20963d;

    public bt3(C7021u4... c7021u4Arr) {
        this.f20962c = c7021u4Arr;
        m16207c(c7021u4Arr[0].f30502e);
        int i = c7021u4Arr[0].f30504g;
    }

    /* renamed from: c */
    private static String m16207c(String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    /* renamed from: a */
    public final C7021u4 m16209a(int i) {
        return this.f20962c[i];
    }

    /* renamed from: b */
    public final int m16208b(C7021u4 c7021u4) {
        for (int i = 0; i <= 0; i++) {
            if (c7021u4 == this.f20962c[i]) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && bt3.class == obj.getClass() && Arrays.equals(this.f20962c, ((bt3) obj).f20962c);
    }

    public final int hashCode() {
        int i = this.f20963d;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f20962c) + 527;
            this.f20963d = i2;
        }
        return i2;
    }
}

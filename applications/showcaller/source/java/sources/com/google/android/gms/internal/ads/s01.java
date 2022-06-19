package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s01.class */
public final class s01 {

    /* renamed from: a */
    public final long f29350a;

    /* renamed from: b */
    public final AbstractC6839p7 f29351b;

    /* renamed from: c */
    public final int f29352c;

    /* renamed from: d */
    public final mk3 f29353d;

    /* renamed from: e */
    public final long f29354e;

    /* renamed from: f */
    public final AbstractC6839p7 f29355f;

    /* renamed from: g */
    public final int f29356g;

    /* renamed from: h */
    public final mk3 f29357h;

    /* renamed from: i */
    public final long f29358i;

    /* renamed from: j */
    public final long f29359j;

    public s01(long j, AbstractC6839p7 abstractC6839p7, int i, mk3 mk3Var, long j2, AbstractC6839p7 abstractC6839p72, int i2, mk3 mk3Var2, long j3, long j4) {
        this.f29350a = j;
        this.f29351b = abstractC6839p7;
        this.f29352c = i;
        this.f29353d = mk3Var;
        this.f29354e = j2;
        this.f29355f = abstractC6839p72;
        this.f29356g = i2;
        this.f29357h = mk3Var2;
        this.f29358i = j3;
        this.f29359j = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s01.class != obj.getClass()) {
            return false;
        }
        s01 s01Var = (s01) obj;
        return this.f29350a == s01Var.f29350a && this.f29352c == s01Var.f29352c && this.f29354e == s01Var.f29354e && this.f29356g == s01Var.f29356g && this.f29358i == s01Var.f29358i && this.f29359j == s01Var.f29359j && tu2.m10497a(this.f29351b, s01Var.f29351b) && tu2.m10497a(this.f29353d, s01Var.f29353d) && tu2.m10497a(this.f29355f, s01Var.f29355f) && tu2.m10497a(this.f29357h, s01Var.f29357h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f29350a), this.f29351b, Integer.valueOf(this.f29352c), this.f29353d, Long.valueOf(this.f29354e), this.f29355f, Integer.valueOf(this.f29356g), this.f29357h, Long.valueOf(this.f29358i), Long.valueOf(this.f29359j)});
    }
}

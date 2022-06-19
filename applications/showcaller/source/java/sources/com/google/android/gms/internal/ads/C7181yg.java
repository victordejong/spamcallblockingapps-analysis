package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.yg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yg.class */
public final class C7181yg {

    /* renamed from: a */
    public static final C7181yg f32492a = new C7181yg(new C7144xg[0]);

    /* renamed from: b */
    public final int f32493b;

    /* renamed from: c */
    private final C7144xg[] f32494c;

    /* renamed from: d */
    private int f32495d;

    public C7181yg(C7144xg... c7144xgArr) {
        this.f32494c = c7144xgArr;
        this.f32493b = c7144xgArr.length;
    }

    /* renamed from: a */
    public final C7144xg m8834a(int i) {
        return this.f32494c[i];
    }

    /* renamed from: b */
    public final int m8833b(C7144xg c7144xg) {
        for (int i = 0; i < this.f32493b; i++) {
            if (this.f32494c[i] == c7144xg) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C7181yg.class != obj.getClass()) {
            return false;
        }
        C7181yg c7181yg = (C7181yg) obj;
        return this.f32493b == c7181yg.f32493b && Arrays.equals(this.f32494c, c7181yg.f32494c);
    }

    public final int hashCode() {
        int i = this.f32495d;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f32494c);
            this.f32495d = i2;
        }
        return i2;
    }
}

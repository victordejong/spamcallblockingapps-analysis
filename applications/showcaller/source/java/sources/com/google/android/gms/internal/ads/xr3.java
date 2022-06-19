package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xr3.class */
public final class xr3 {

    /* renamed from: a */
    public final int f32272a;

    /* renamed from: b */
    public final byte[] f32273b;

    /* renamed from: c */
    public final int f32274c;

    /* renamed from: d */
    public final int f32275d;

    public xr3(int i, byte[] bArr, int i2, int i3) {
        this.f32272a = i;
        this.f32273b = bArr;
        this.f32274c = i2;
        this.f32275d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || xr3.class != obj.getClass()) {
            return false;
        }
        xr3 xr3Var = (xr3) obj;
        return this.f32272a == xr3Var.f32272a && this.f32274c == xr3Var.f32274c && this.f32275d == xr3Var.f32275d && Arrays.equals(this.f32273b, xr3Var.f32273b);
    }

    public final int hashCode() {
        return (((((this.f32272a * 31) + Arrays.hashCode(this.f32273b)) * 31) + this.f32274c) * 31) + this.f32275d;
    }
}

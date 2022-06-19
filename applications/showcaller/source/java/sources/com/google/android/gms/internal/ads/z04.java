package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z04.class */
public final class z04 {

    /* renamed from: a */
    public static final z04 f32747a = new z04(0, 0, 0, 1.0f);

    /* renamed from: b */
    public static final AbstractC7093w2<z04> f32748b = yz3.f32734a;

    /* renamed from: c */
    public final int f32749c;

    /* renamed from: d */
    public final int f32750d;

    /* renamed from: e */
    public final int f32751e;

    /* renamed from: f */
    public final float f32752f;

    public z04(int i, int i2, int i3, float f) {
        this.f32749c = i;
        this.f32750d = i2;
        this.f32751e = i3;
        this.f32752f = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z04)) {
            return false;
        }
        z04 z04Var = (z04) obj;
        return this.f32749c == z04Var.f32749c && this.f32750d == z04Var.f32750d && this.f32751e == z04Var.f32751e && this.f32752f == z04Var.f32752f;
    }

    public final int hashCode() {
        return ((((((this.f32749c + 217) * 31) + this.f32750d) * 31) + this.f32751e) * 31) + Float.floatToRawIntBits(this.f32752f);
    }
}

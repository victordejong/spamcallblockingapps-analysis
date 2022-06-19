package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gl2.class */
public final class gl2 {

    /* renamed from: d */
    public static final gl2 f6663d = new gl2(1.0f, 1.0f);

    /* renamed from: a */
    public final float f6664a;

    /* renamed from: b */
    public final float f6665b = 1.0f;

    /* renamed from: c */
    private final int f6666c;

    public gl2(float f, float f2) {
        this.f6664a = f;
        this.f6666c = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public final long m7360a(long j) {
        return j * this.f6666c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && gl2.class == obj.getClass() && this.f6664a == ((gl2) obj).f6664a;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f6664a) + 527) * 31) + Float.floatToRawIntBits(1.0f);
    }
}

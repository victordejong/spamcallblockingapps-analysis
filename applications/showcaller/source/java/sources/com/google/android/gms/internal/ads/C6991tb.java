package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.tb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tb.class */
public final class C6991tb {

    /* renamed from: a */
    public static final C6991tb f29879a = new C6991tb(1.0f, 1.0f);

    /* renamed from: b */
    public final float f29880b;

    /* renamed from: c */
    public final float f29881c = 1.0f;

    /* renamed from: d */
    private final int f29882d;

    public C6991tb(float f, float f2) {
        this.f29880b = f;
        this.f29882d = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public final long m10751a(long j) {
        return j * this.f29882d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C6991tb.class == obj.getClass() && this.f29880b == ((C6991tb) obj).f29880b;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f29880b) + 527) * 31) + Float.floatToRawIntBits(1.0f);
    }
}

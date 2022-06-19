package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.d6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d6.class */
public final class C6392d6 {

    /* renamed from: a */
    public static final C6392d6 f21486a = new C6392d6(1.0f, 1.0f);

    /* renamed from: b */
    public static final AbstractC7093w2<C6392d6> f21487b = C6355c6.f21110a;

    /* renamed from: c */
    public final float f21488c;

    /* renamed from: d */
    public final float f21489d;

    /* renamed from: e */
    private final int f21490e;

    public C6392d6(float f, float f2) {
        C7173y8.m8898a(f > 0.0f);
        C7173y8.m8898a(f2 > 0.0f);
        this.f21488c = f;
        this.f21489d = f2;
        this.f21490e = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public final long m15946a(long j) {
        return j * this.f21490e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6392d6.class != obj.getClass()) {
            return false;
        }
        C6392d6 c6392d6 = (C6392d6) obj;
        return this.f21488c == c6392d6.f21488c && this.f21489d == c6392d6.f21489d;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f21488c) + 527) * 31) + Float.floatToRawIntBits(this.f21489d);
    }

    public final String toString() {
        return C7101wa.m9700a0("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f21488c), Float.valueOf(this.f21489d));
    }
}

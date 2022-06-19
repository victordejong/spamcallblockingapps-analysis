package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlj.class */
public final class dlj {

    /* renamed from: a */
    public static final dlj f14660a = new dlj(1.0f, 1.0f);

    /* renamed from: b */
    public final float f14661b;

    /* renamed from: c */
    public final float f14662c;

    /* renamed from: d */
    private final int f14663d;

    public dlj(float f, float f2) {
        this.f14661b = f;
        this.f14662c = f2;
        this.f14663d = Math.round(1000.0f * f);
    }

    /* renamed from: a */
    public final long m9203a(long j) {
        return this.f14663d * j;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dlj dljVar = (dlj) obj;
                if (this.f14661b != dljVar.f14661b || this.f14662c != dljVar.f14662c) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f14661b) + 527) * 31) + Float.floatToRawIntBits(this.f14662c);
    }
}

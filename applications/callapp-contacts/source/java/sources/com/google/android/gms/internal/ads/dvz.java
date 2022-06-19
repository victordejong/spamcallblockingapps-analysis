package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvz.class */
public final class dvz {

    /* renamed from: a */
    public static final dvz f47757a = new dvz(1.0f, 1.0f);

    /* renamed from: b */
    public final float f47758b;

    /* renamed from: c */
    public final float f47759c;

    /* renamed from: d */
    final int f47760d;

    public dvz(float f, float f2) {
        this.f47758b = f;
        this.f47759c = f2;
        this.f47760d = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dvz dvzVar = (dvz) obj;
        return this.f47758b == dvzVar.f47758b && this.f47759c == dvzVar.f47759c;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f47758b) + 527) * 31) + Float.floatToRawIntBits(this.f47759c);
    }
}

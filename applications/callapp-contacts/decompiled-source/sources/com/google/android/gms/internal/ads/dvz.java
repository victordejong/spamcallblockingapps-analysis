package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvz.class */
public final class dvz {

    /* renamed from: a  reason: collision with root package name */
    public static final dvz f27282a = new dvz(1.0f, 1.0f);

    /* renamed from: b  reason: collision with root package name */
    public final float f27283b;

    /* renamed from: c  reason: collision with root package name */
    public final float f27284c;

    /* renamed from: d  reason: collision with root package name */
    final int f27285d;

    public dvz(float f, float f2) {
        this.f27283b = f;
        this.f27284c = f2;
        this.f27285d = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dvz dvzVar = (dvz) obj;
        return this.f27283b == dvzVar.f27283b && this.f27284c == dvzVar.f27284c;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f27283b) + 527) * 31) + Float.floatToRawIntBits(this.f27284c);
    }
}

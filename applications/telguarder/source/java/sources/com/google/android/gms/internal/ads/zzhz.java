package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhz.class */
public final class zzhz {
    public static final zzhz zzaia = new zzhz(1.0f, 1.0f);
    public final float zzaib;
    public final float zzaic;
    private final int zzaid;

    public zzhz(float f, float f2) {
        this.zzaib = f;
        this.zzaic = f2;
        this.zzaid = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzhz zzhzVar = (zzhz) obj;
        return this.zzaib == zzhzVar.zzaib && this.zzaic == zzhzVar.zzaic;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.zzaib) + 527) * 31) + Float.floatToRawIntBits(this.zzaic);
    }

    public final long zzdu(long j) {
        return j * this.zzaid;
    }
}

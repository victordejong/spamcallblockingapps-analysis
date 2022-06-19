package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffz.class */
public final class zzffz implements zzffx {
    private final String zza;

    public zzffz(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzffz)) {
            return false;
        }
        return this.zza.equals(((zzffz) obj).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza;
    }
}

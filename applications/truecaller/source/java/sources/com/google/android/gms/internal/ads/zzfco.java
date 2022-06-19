package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfco.class */
public final class zzfco implements zzfcm {
    private final String zza;

    public zzfco(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfcm
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfco)) {
            return false;
        }
        return this.zza.equals(((zzfco) obj).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfcm
    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza;
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpn.class */
public final class zzdpn implements zzdpl {
    private final String zzcm;

    public zzdpn(String str) {
        this.zzcm = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdpl
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdpn)) {
            return false;
        }
        return this.zzcm.equals(((zzdpn) obj).zzcm);
    }

    @Override // com.google.android.gms.internal.ads.zzdpl
    public final int hashCode() {
        return this.zzcm.hashCode();
    }

    public final String toString() {
        return this.zzcm;
    }
}

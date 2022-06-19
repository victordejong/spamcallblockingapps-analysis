package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfio.class */
public final class zzfio extends zzfik {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;

    public /* synthetic */ zzfio(String str, boolean z, boolean z2, zzfin zzfinVar) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfik)) {
            return false;
        }
        zzfik zzfikVar = (zzfik) obj;
        return this.zza.equals(zzfikVar.zza()) && this.zzb == zzfikVar.zzb() && this.zzc == zzfikVar.zzc();
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode();
        int i = 1237;
        int i2 = true != this.zzb ? 1237 : 1231;
        if (true == this.zzc) {
            i = 1231;
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.zza;
        boolean z = this.zzb;
        boolean z2 = this.zzc;
        StringBuilder sb = new StringBuilder(str.length() + 99);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfik
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfik
    public final boolean zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfik
    public final boolean zzc() {
        return this.zzc;
    }
}

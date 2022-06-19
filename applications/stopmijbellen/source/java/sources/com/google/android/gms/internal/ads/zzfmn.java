package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfmn.class */
final class zzfmn extends zzfmj {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;

    public /* synthetic */ zzfmn(String str, boolean z, boolean z2, zzfmm zzfmmVar) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfmj)) {
            return false;
        }
        zzfmj zzfmjVar = (zzfmj) obj;
        return this.zza.equals(zzfmjVar.zzb()) && this.zzb == zzfmjVar.zzd() && this.zzc == zzfmjVar.zzc();
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

    @Override // com.google.android.gms.internal.ads.zzfmj
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfmj
    public final boolean zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfmj
    public final boolean zzd() {
        return this.zzb;
    }
}

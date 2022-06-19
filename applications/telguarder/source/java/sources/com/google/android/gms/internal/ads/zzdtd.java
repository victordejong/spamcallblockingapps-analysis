package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtd.class */
final class zzdtd extends zzdtc {
    private final String zzhso;
    private final boolean zzxf;
    private final boolean zzzj;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdtd(String str, boolean z, boolean z2) {
        this.zzhso = str;
        this.zzxf = z;
        this.zzzj = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdtc)) {
            return false;
        }
        zzdtc zzdtcVar = (zzdtc) obj;
        return this.zzhso.equals(zzdtcVar.zzaxp()) && this.zzxf == zzdtcVar.zzaxq() && this.zzzj == zzdtcVar.zzcm();
    }

    public final int hashCode() {
        int hashCode = this.zzhso.hashCode();
        int i = 1231;
        int i2 = this.zzxf ? 1231 : 1237;
        if (!this.zzzj) {
            i = 1237;
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.zzhso;
        boolean z = this.zzxf;
        boolean z2 = this.zzzj;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdtc
    public final String zzaxp() {
        return this.zzhso;
    }

    @Override // com.google.android.gms.internal.ads.zzdtc
    public final boolean zzaxq() {
        return this.zzxf;
    }

    @Override // com.google.android.gms.internal.ads.zzdtc
    public final boolean zzcm() {
        return this.zzzj;
    }
}

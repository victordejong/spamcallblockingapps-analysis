package com.google.android.gms.ads.internal.util;

import com.google.android.gms.common.internal.Objects;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbf.class */
public final class zzbf {
    public final String zza;
    public final double zzb;
    public final double zzc;
    public final double zzd;
    public final int zze;

    public zzbf(String str, double d, double d2, double d3, int i) {
        this.zza = str;
        this.zzc = d;
        this.zzb = d2;
        this.zzd = d3;
        this.zze = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbf)) {
            return false;
        }
        zzbf zzbfVar = (zzbf) obj;
        return Objects.m38910a(this.zza, zzbfVar.zza) && this.zzb == zzbfVar.zzb && this.zzc == zzbfVar.zzc && this.zze == zzbfVar.zze && Double.compare(this.zzd, zzbfVar.zzd) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, Double.valueOf(this.zzb), Double.valueOf(this.zzc), Double.valueOf(this.zzd), Integer.valueOf(this.zze)});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.m38909a(AnalyticsConstants.NAME, this.zza);
        toStringHelper.m38909a("minBound", Double.valueOf(this.zzc));
        toStringHelper.m38909a("maxBound", Double.valueOf(this.zzb));
        toStringHelper.m38909a("percent", Double.valueOf(this.zzd));
        toStringHelper.m38909a("count", Integer.valueOf(this.zze));
        return toStringHelper.toString();
    }
}

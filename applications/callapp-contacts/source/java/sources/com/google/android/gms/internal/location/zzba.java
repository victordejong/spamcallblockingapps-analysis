package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzba.class */
public final class zzba extends AbstractSafeParcelable {
    final LocationRequest zzb;
    final List<ClientIdentity> zzc;
    final String zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;
    final String zzh;
    final boolean zzi;
    boolean zzj;
    String zzk;
    long zzl;
    static final List<ClientIdentity> zza = Collections.emptyList();
    public static final Parcelable.Creator<zzba> CREATOR = new C13343r();

    public zzba(LocationRequest locationRequest, List<ClientIdentity> list, String str, boolean z, boolean z2, boolean z3, String str2, boolean z4, boolean z5, String str3, long j) {
        this.zzb = locationRequest;
        this.zzc = list;
        this.zzd = str;
        this.zze = z;
        this.zzf = z2;
        this.zzg = z3;
        this.zzh = str2;
        this.zzi = z4;
        this.zzj = z5;
        this.zzk = str3;
        this.zzl = j;
    }

    public static zzba zza(String str, LocationRequest locationRequest) {
        return new zzba(locationRequest, zza, null, false, false, false, null, false, false, null, Long.MAX_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzba) {
            zzba zzbaVar = (zzba) obj;
            return C12041m.m19168a(this.zzb, zzbaVar.zzb) && C12041m.m19168a(this.zzc, zzbaVar.zzc) && C12041m.m19168a(this.zzd, zzbaVar.zzd) && this.zze == zzbaVar.zze && this.zzf == zzbaVar.zzf && this.zzg == zzbaVar.zzg && C12041m.m19168a(this.zzh, zzbaVar.zzh) && this.zzi == zzbaVar.zzi && this.zzj == zzbaVar.zzj && C12041m.m19168a(this.zzk, zzbaVar.zzk);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzb);
        if (this.zzd != null) {
            sb.append(" tag=");
            sb.append(this.zzd);
        }
        if (this.zzh != null) {
            sb.append(" moduleId=");
            sb.append(this.zzh);
        }
        if (this.zzk != null) {
            sb.append(" contextAttributionTag=");
            sb.append(this.zzk);
        }
        sb.append(" hideAppOps=");
        sb.append(this.zze);
        sb.append(" clients=");
        sb.append(this.zzc);
        sb.append(" forceCoarseLocation=");
        sb.append(this.zzf);
        if (this.zzg) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        if (this.zzi) {
            sb.append(" locationSettingsIgnored");
        }
        if (this.zzj) {
            sb.append(" inaccurateLocationsDelayed");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, this.zzb, i, false);
        C12050a.m19102a(parcel, 5, (List) this.zzc, false);
        C12050a.m19104a(parcel, 6, this.zzd, false);
        C12050a.m19101a(parcel, 7, this.zze);
        C12050a.m19101a(parcel, 8, this.zzf);
        C12050a.m19101a(parcel, 9, this.zzg);
        C12050a.m19104a(parcel, 10, this.zzh, false);
        C12050a.m19101a(parcel, 11, this.zzi);
        C12050a.m19101a(parcel, 12, this.zzj);
        C12050a.m19104a(parcel, 13, this.zzk, false);
        C12050a.m19111a(parcel, 14, this.zzl);
        C12050a.m19095b(parcel, m19116a);
    }

    public final zzba zzb(long j) {
        if (this.zzb.getMaxWaitTime() <= this.zzb.getInterval()) {
            this.zzl = 10000L;
            return this;
        }
        long interval = this.zzb.getInterval();
        long maxWaitTime = this.zzb.getMaxWaitTime();
        StringBuilder sb = new StringBuilder(120);
        sb.append("could not set max age when location batching is requested, interval=");
        sb.append(interval);
        sb.append("maxWaitTime=");
        sb.append(maxWaitTime);
        throw new IllegalArgumentException(sb.toString());
    }

    public final zzba zzc(String str) {
        this.zzk = str;
        return this;
    }

    public final zzba zzd(boolean z) {
        this.zzj = true;
        return this;
    }
}

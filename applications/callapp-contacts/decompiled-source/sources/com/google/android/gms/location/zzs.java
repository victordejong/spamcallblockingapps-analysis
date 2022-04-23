package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new at();
    boolean zza;
    long zzb;
    float zzc;
    long zzd;
    int zze;

    public zzs() {
        this(true, 50L, BitmapDescriptorFactory.HUE_RED, Long.MAX_VALUE, Integer.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(boolean z, long j, float f, long j2, int i) {
        this.zza = z;
        this.zzb = j;
        this.zzc = f;
        this.zzd = j2;
        this.zze = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return this.zza == zzsVar.zza && this.zzb == zzsVar.zzb && Float.compare(this.zzc, zzsVar.zzc) == 0 && this.zzd == zzsVar.zzd && this.zze == zzsVar.zze;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zza), Long.valueOf(this.zzb), Float.valueOf(this.zzc), Long.valueOf(this.zzd), Integer.valueOf(this.zze)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DeviceOrientationRequest[mShouldUseMag=");
        sb.append(this.zza);
        sb.append(" mMinimumSamplingPeriodMs=");
        sb.append(this.zzb);
        sb.append(" mSmallestAngleChangeRadians=");
        sb.append(this.zzc);
        long j = this.zzd;
        if (j != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j - elapsedRealtime);
            sb.append("ms");
        }
        if (this.zze != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.zze);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.a(parcel, 2, this.zzb);
        a.a(parcel, 3, this.zzc);
        a.a(parcel, 4, this.zzd);
        a.a(parcel, 5, this.zze);
        a.b(parcel, a2);
    }
}

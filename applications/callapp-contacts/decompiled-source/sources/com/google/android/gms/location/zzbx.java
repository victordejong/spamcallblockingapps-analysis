package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzbx.class */
public final class zzbx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbx> CREATOR = new ak();
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;

    public zzbx(int i, int i2, int i3, int i4) {
        boolean z = true;
        o.a(i >= 0 && i <= 23, "Start hour must be in range [0, 23].");
        o.a(i2 >= 0 && i2 <= 59, "Start minute must be in range [0, 59].");
        o.a(i3 >= 0 && i3 <= 23, "End hour must be in range [0, 23].");
        o.a(i4 >= 0 && i4 <= 59, "End minute must be in range [0, 59].");
        if (i + i2 + i3 + i4 <= 0) {
            z = false;
        }
        o.a(z, "Parameters can't be all 0.");
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbx)) {
            return false;
        }
        zzbx zzbxVar = (zzbx) obj;
        return this.zza == zzbxVar.zza && this.zzb == zzbxVar.zzb && this.zzc == zzbxVar.zzc && this.zzd == zzbxVar.zzd;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd)});
    }

    public final String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        int i4 = this.zzd;
        StringBuilder sb = new StringBuilder(117);
        sb.append("UserPreferredSleepWindow [startHour=");
        sb.append(i);
        sb.append(", startMinute=");
        sb.append(i2);
        sb.append(", endHour=");
        sb.append(i3);
        sb.append(", endMinute=");
        sb.append(i4);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        o.a(parcel);
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.a(parcel, 2, this.zzb);
        a.a(parcel, 3, this.zzc);
        a.a(parcel, 4, this.zzd);
        a.b(parcel, a2);
    }
}

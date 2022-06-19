package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkq.class */
public final class zzkq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkq> CREATOR = new zzkr();
    @SafeParcelable.Field(m4805id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final String zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final long zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final Long zzd;
    @SafeParcelable.Field(m4805id = 6)
    public final String zze;
    @SafeParcelable.Field(m4805id = 7)
    public final String zzf;
    @SafeParcelable.Field(m4805id = 8)
    public final Double zzg;

    @SafeParcelable.Constructor
    public zzkq(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) long j, @SafeParcelable.Param(m4804id = 4) Long l, @SafeParcelable.Param(m4804id = 5) Float f, @SafeParcelable.Param(m4804id = 6) String str2, @SafeParcelable.Param(m4804id = 7) String str3, @SafeParcelable.Param(m4804id = 8) Double d) {
        this.zza = i;
        this.zzb = str;
        this.zzc = j;
        this.zzd = l;
        if (i == 1) {
            this.zzg = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.zzg = d;
        }
        this.zze = str2;
        this.zzf = str3;
    }

    public zzkq(zzks zzksVar) {
        this(zzksVar.zzc, zzksVar.zzd, zzksVar.zze, zzksVar.zzb);
    }

    public zzkq(String str, long j, Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.zza = 2;
        this.zzb = str;
        this.zzc = j;
        this.zzf = str2;
        if (obj == null) {
            this.zzd = null;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof Long) {
            this.zzd = (Long) obj;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof String) {
            this.zzd = null;
            this.zzg = null;
            this.zze = (String) obj;
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        } else {
            this.zzd = null;
            this.zzg = (Double) obj;
            this.zze = null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzkr.zza(this, parcel, i);
    }

    public final Object zza() {
        Long l = this.zzd;
        if (l != null) {
            return l;
        }
        Double d = this.zzg;
        if (d != null) {
            return d;
        }
        String str = this.zze;
        if (str == null) {
            return null;
        }
        return str;
    }
}

package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcl.class */
public final class zzcl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcl> CREATOR = new zzcm();
    @SafeParcelable.Field
    public final long zza;
    @SafeParcelable.Field
    public final long zzb;
    @SafeParcelable.Field
    public final boolean zzc;
    @SafeParcelable.Field
    public final String zzd;
    @SafeParcelable.Field
    public final String zze;
    @SafeParcelable.Field
    public final String zzf;
    @SafeParcelable.Field
    public final Bundle zzg;
    @SafeParcelable.Field
    public final String zzh;

    @SafeParcelable.Constructor
    public zzcl(@SafeParcelable.Param(id = 1) long j, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) String str4) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = z;
        this.zzd = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = bundle;
        this.zzh = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        long j = this.zza;
        parcel.writeInt(524289);
        parcel.writeLong(j);
        long j2 = this.zzb;
        parcel.writeInt(524290);
        parcel.writeLong(j2);
        boolean z = this.zzc;
        parcel.writeInt(262147);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 4, this.zzd, false);
        SafeParcelWriter.m38846q(parcel, 5, this.zze, false);
        SafeParcelWriter.m38846q(parcel, 6, this.zzf, false);
        SafeParcelWriter.m38860c(parcel, 7, this.zzg, false);
        SafeParcelWriter.m38846q(parcel, 8, this.zzh, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}

package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ConditionalUserPropertyParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaa.class */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new zzab();
    @SafeParcelable.Field(m4805id = 2)
    public String zza;
    @SafeParcelable.Field(m4805id = 3)
    public String zzb;
    @SafeParcelable.Field(m4805id = 4)
    public zzkq zzc;
    @SafeParcelable.Field(m4805id = 5)
    public long zzd;
    @SafeParcelable.Field(m4805id = 6)
    public boolean zze;
    @SafeParcelable.Field(m4805id = 7)
    public String zzf;
    @SafeParcelable.Field(m4805id = 8)
    public final zzas zzg;
    @SafeParcelable.Field(m4805id = 9)
    public long zzh;
    @SafeParcelable.Field(m4805id = 10)
    public zzas zzi;
    @SafeParcelable.Field(m4805id = 11)
    public final long zzj;
    @SafeParcelable.Field(m4805id = 12)
    public final zzas zzk;

    public zzaa(zzaa zzaaVar) {
        Preconditions.checkNotNull(zzaaVar);
        this.zza = zzaaVar.zza;
        this.zzb = zzaaVar.zzb;
        this.zzc = zzaaVar.zzc;
        this.zzd = zzaaVar.zzd;
        this.zze = zzaaVar.zze;
        this.zzf = zzaaVar.zzf;
        this.zzg = zzaaVar.zzg;
        this.zzh = zzaaVar.zzh;
        this.zzi = zzaaVar.zzi;
        this.zzj = zzaaVar.zzj;
        this.zzk = zzaaVar.zzk;
    }

    @SafeParcelable.Constructor
    public zzaa(@SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) String str2, @SafeParcelable.Param(m4804id = 4) zzkq zzkqVar, @SafeParcelable.Param(m4804id = 5) long j, @SafeParcelable.Param(m4804id = 6) boolean z, @SafeParcelable.Param(m4804id = 7) String str3, @SafeParcelable.Param(m4804id = 8) zzas zzasVar, @SafeParcelable.Param(m4804id = 9) long j2, @SafeParcelable.Param(m4804id = 10) zzas zzasVar2, @SafeParcelable.Param(m4804id = 11) long j3, @SafeParcelable.Param(m4804id = 12) zzas zzasVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzkqVar;
        this.zzd = j;
        this.zze = z;
        this.zzf = str3;
        this.zzg = zzasVar;
        this.zzh = j2;
        this.zzi = zzasVar2;
        this.zzj = j3;
        this.zzk = zzasVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.zzh);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.zzj);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzk, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

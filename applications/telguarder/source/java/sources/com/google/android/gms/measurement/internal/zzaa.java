package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzaa.class */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new zzab();
    public String zza;
    public String zzb;
    public zzkg zzc;
    public long zzd;
    public boolean zze;
    public String zzf;
    public final zzas zzg;
    public long zzh;
    public zzas zzi;
    public final long zzj;
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

    public zzaa(String str, String str2, zzkg zzkgVar, long j, boolean z, String str3, zzas zzasVar, long j2, zzas zzasVar2, long j3, zzas zzasVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzkgVar;
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

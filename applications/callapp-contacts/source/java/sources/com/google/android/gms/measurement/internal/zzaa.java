package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzaa.class */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new C13878b();
    public String zza;
    public String zzb;
    public zzkl zzc;
    public long zzd;
    public boolean zze;
    public String zzf;
    public final zzas zzg;
    public long zzh;
    public zzas zzi;
    public final long zzj;
    public final zzas zzk;

    public zzaa(zzaa zzaaVar) {
        C12045o.m19162a(zzaaVar);
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

    public zzaa(String str, String str2, zzkl zzklVar, long j, boolean z, String str3, zzas zzasVar, long j2, zzas zzasVar2, long j3, zzas zzasVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzklVar;
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.zza, false);
        C12050a.m19104a(parcel, 3, this.zzb, false);
        C12050a.m19107a(parcel, 4, this.zzc, i, false);
        C12050a.m19111a(parcel, 5, this.zzd);
        C12050a.m19101a(parcel, 6, this.zze);
        C12050a.m19104a(parcel, 7, this.zzf, false);
        C12050a.m19107a(parcel, 8, this.zzg, i, false);
        C12050a.m19111a(parcel, 9, this.zzh);
        C12050a.m19107a(parcel, 10, this.zzi, i, false);
        C12050a.m19111a(parcel, 11, this.zzj);
        C12050a.m19107a(parcel, 12, this.zzk, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}

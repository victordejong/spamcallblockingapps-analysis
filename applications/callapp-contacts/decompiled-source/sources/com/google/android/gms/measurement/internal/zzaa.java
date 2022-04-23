package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzaa.class */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new b();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzaa zzaaVar) {
        o.a(zzaaVar);
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

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zza, false);
        a.a(parcel, 3, this.zzb, false);
        a.a(parcel, 4, this.zzc, i, false);
        a.a(parcel, 5, this.zzd);
        a.a(parcel, 6, this.zze);
        a.a(parcel, 7, this.zzf, false);
        a.a(parcel, 8, this.zzg, i, false);
        a.a(parcel, 9, this.zzh);
        a.a(parcel, 10, this.zzi, i, false);
        a.a(parcel, 11, this.zzj);
        a.a(parcel, 12, this.zzk, i, false);
        a.b(parcel, a2);
    }
}

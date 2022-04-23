package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzp.class */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new kb();
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final long zze;
    public final long zzf;
    public final String zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final long zzj;
    public final String zzk;
    public final long zzl;
    public final long zzm;
    public final int zzn;
    public final boolean zzo;
    public final boolean zzp;
    public final String zzq;
    public final Boolean zzr;
    public final long zzs;
    public final List<String> zzt;
    public final String zzu;
    public final String zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        o.a(str);
        this.zza = str;
        this.zzb = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.zzc = str3;
        this.zzj = j;
        this.zzd = str4;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = j4;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = str8;
        this.zzv = str9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzj = j3;
        this.zzd = str4;
        this.zze = j;
        this.zzf = j2;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = j4;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = str8;
        this.zzv = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zza, false);
        a.a(parcel, 3, this.zzb, false);
        a.a(parcel, 4, this.zzc, false);
        a.a(parcel, 5, this.zzd, false);
        a.a(parcel, 6, this.zze);
        a.a(parcel, 7, this.zzf);
        a.a(parcel, 8, this.zzg, false);
        a.a(parcel, 9, this.zzh);
        a.a(parcel, 10, this.zzi);
        a.a(parcel, 11, this.zzj);
        a.a(parcel, 12, this.zzk, false);
        a.a(parcel, 13, this.zzl);
        a.a(parcel, 14, this.zzm);
        a.a(parcel, 15, this.zzn);
        a.a(parcel, 16, this.zzo);
        a.a(parcel, 18, this.zzp);
        a.a(parcel, 19, this.zzq, false);
        Boolean bool = this.zzr;
        if (bool != null) {
            a.b(parcel, 21, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        a.a(parcel, 22, this.zzs);
        a.a(parcel, 23, this.zzt);
        a.a(parcel, 24, this.zzu, false);
        a.a(parcel, 25, this.zzv, false);
        a.b(parcel, a2);
    }
}

package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzz.class */
public final class zzz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzz> CREATOR = new C13379b();
    public final long zza;
    public final long zzb;
    public final boolean zzc;
    public final String zzd;
    public final String zze;
    public final String zzf;
    public final Bundle zzg;
    public final String zzh;

    public zzz(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle, String str4) {
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19111a(parcel, 1, this.zza);
        C12050a.m19111a(parcel, 2, this.zzb);
        C12050a.m19101a(parcel, 3, this.zzc);
        C12050a.m19104a(parcel, 4, this.zzd, false);
        C12050a.m19104a(parcel, 5, this.zze, false);
        C12050a.m19104a(parcel, 6, this.zzf, false);
        C12050a.m19110a(parcel, 7, this.zzg, false);
        C12050a.m19104a(parcel, 8, this.zzh, false);
        C12050a.m19095b(parcel, m19116a);
    }
}

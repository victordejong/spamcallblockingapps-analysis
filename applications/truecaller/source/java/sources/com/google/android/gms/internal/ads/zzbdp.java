package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdp.class */
public final class zzbdp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdp> CREATOR = new zzbdq();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public long zzb;
    @SafeParcelable.Field
    public zzbcz zzc;
    @SafeParcelable.Field
    public final Bundle zzd;

    @SafeParcelable.Constructor
    public zzbdp(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) zzbcz zzbczVar, @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.zza = str;
        this.zzb = j;
        this.zzc = zzbczVar;
        this.zzd = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.zza, false);
        long j = this.zzb;
        parcel.writeInt(524290);
        parcel.writeLong(j);
        SafeParcelWriter.m38847p(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.m38860c(parcel, 4, this.zzd, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}

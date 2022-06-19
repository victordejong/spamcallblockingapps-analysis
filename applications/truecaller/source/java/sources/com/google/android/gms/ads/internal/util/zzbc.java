package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbcz;
import com.google.android.gms.internal.ads.zzfbm;
import com.google.android.gms.internal.ads.zzfmi;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbc.class */
public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new zzbd();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public final int zzb;

    @SafeParcelable.Constructor
    public zzbc(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i) {
        this.zza = str == null ? "" : str;
        this.zzb = i;
    }

    public static zzbc zza(Throwable th) {
        zzbcz zza = zzfbm.zza(th);
        return new zzbc(zzfmi.zzc(th.getMessage()) ? zza.zzb : th.getMessage(), zza.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.zza, false);
        int i2 = this.zzb;
        parcel.writeInt(262146);
        parcel.writeInt(i2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}

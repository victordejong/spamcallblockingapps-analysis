package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcx.class */
public final class zzbcx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbcx> CREATOR = new zzbcy();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public final String zzb;

    @SafeParcelable.Constructor
    public zzbcx(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.zza, false);
        SafeParcelWriter.m38846q(parcel, 2, this.zzb, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}

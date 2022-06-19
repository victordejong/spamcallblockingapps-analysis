package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccg.class */
public final class zzccg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzccg> CREATOR = new zzcch();
    @SafeParcelable.Field
    public final zzbdg zza;
    @SafeParcelable.Field
    public final String zzb;

    @SafeParcelable.Constructor
    public zzccg(@SafeParcelable.Param(id = 2) zzbdg zzbdgVar, @SafeParcelable.Param(id = 3) String str) {
        this.zza = zzbdgVar;
        this.zzb = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 2, this.zza, i, false);
        SafeParcelWriter.m38846q(parcel, 3, this.zzb, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}

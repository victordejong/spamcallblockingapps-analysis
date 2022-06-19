package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "RewardedVideoAdRequestParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcen.class */
public final class zzcen extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcen> CREATOR = new zzceo();
    @SafeParcelable.Field(m4805id = 2)
    public final zzbfd zza;
    @SafeParcelable.Field(m4805id = 3)
    public final String zzb;

    @SafeParcelable.Constructor
    public zzcen(@SafeParcelable.Param(m4804id = 2) zzbfd zzbfdVar, @SafeParcelable.Param(m4804id = 3) String str) {
        this.zza = zzbfdVar;
        this.zzb = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

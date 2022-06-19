package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "AdDataParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbeu.class */
public final class zzbeu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbeu> CREATOR = new zzbev();
    @SafeParcelable.Field(m4805id = 1)
    public final String zza;
    @SafeParcelable.Field(m4805id = 2)
    public final String zzb;

    @SafeParcelable.Constructor
    public zzbeu(@SafeParcelable.Param(m4804id = 1) String str, @SafeParcelable.Param(m4804id = 2) String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

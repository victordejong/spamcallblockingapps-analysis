package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "SignalConfigurationParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchx.class */
public final class zzchx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzchx> CREATOR = new zzchy();
    @Deprecated
    @SafeParcelable.Field(m4805id = 1)
    public final String zza;
    @SafeParcelable.Field(m4805id = 2)
    public final String zzb;
    @Deprecated
    @SafeParcelable.Field(m4805id = 3)
    public final zzbfi zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final zzbfd zzd;

    @SafeParcelable.Constructor
    public zzchx(@SafeParcelable.Param(m4804id = 1) String str, @SafeParcelable.Param(m4804id = 2) String str2, @SafeParcelable.Param(m4804id = 3) zzbfi zzbfiVar, @SafeParcelable.Param(m4804id = 4) zzbfd zzbfdVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzbfiVar;
        this.zzd = zzbfdVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

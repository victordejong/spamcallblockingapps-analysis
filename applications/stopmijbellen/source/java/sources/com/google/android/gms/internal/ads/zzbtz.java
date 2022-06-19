package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "InstreamAdConfigurationParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtz.class */
public final class zzbtz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbtz> CREATOR = new zzbua();
    @SafeParcelable.VersionField(m4803id = 1000)
    public final int zza;
    @SafeParcelable.Field(m4805id = 1)
    public final int zzb;
    @SafeParcelable.Field(m4805id = 2)
    public final String zzc;
    @SafeParcelable.Field(m4805id = 3)
    public final int zzd;

    @SafeParcelable.Constructor
    public zzbtz(@SafeParcelable.Param(m4804id = 1000) int i, @SafeParcelable.Param(m4804id = 1) int i2, @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzb);
        SafeParcelWriter.writeString(parcel, 2, this.zzc, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzd);
        SafeParcelWriter.writeInt(parcel, 1000, this.zza);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

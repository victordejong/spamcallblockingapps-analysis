package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ProgramRequestCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfny.class */
public final class zzfny extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfny> CREATOR = new zzfnz();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final int zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final String zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final String zzd;
    @SafeParcelable.Field(m4805id = 5)
    public final int zze;

    @SafeParcelable.Constructor
    public zzfny(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) int i2, @SafeParcelable.Param(m4804id = 5) int i3, @SafeParcelable.Param(m4804id = 3) String str, @SafeParcelable.Param(m4804id = 4) String str2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = str2;
        this.zze = i3;
    }

    public zzfny(int i, int i2, String str, String str2) {
        this(1, 1, i2 - 1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

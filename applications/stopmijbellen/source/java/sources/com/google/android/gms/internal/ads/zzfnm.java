package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "GassEventParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfnm.class */
public final class zzfnm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfnm> CREATOR = new zzfnn();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final byte[] zzb;

    @SafeParcelable.Constructor
    public zzfnm(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) byte[] bArr) {
        this.zza = i;
        this.zzb = bArr;
    }

    public zzfnm(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

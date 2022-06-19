package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class(creator = "ProgramResponseCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfoa.class */
public final class zzfoa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfoa> CREATOR = new zzfob();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final byte[] zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final int zzc;

    @SafeParcelable.Constructor
    public zzfoa(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) byte[] bArr, @SafeParcelable.Param(m4804id = 3) int i2) {
        this.zza = i;
        this.zzb = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.zzc = i2;
    }

    public zzfoa(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

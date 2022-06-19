package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "HttpResponseParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtc.class */
public final class zzbtc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbtc> CREATOR = new zzbtd();
    @SafeParcelable.Field(m4805id = 1)
    public final boolean zza;
    @SafeParcelable.Field(m4805id = 2)
    public final String zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final int zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final byte[] zzd;
    @SafeParcelable.Field(m4805id = 5)
    public final String[] zze;
    @SafeParcelable.Field(m4805id = 6)
    public final String[] zzf;
    @SafeParcelable.Field(m4805id = 7)
    public final boolean zzg;
    @SafeParcelable.Field(m4805id = 8)
    public final long zzh;

    @SafeParcelable.Constructor
    public zzbtc(@SafeParcelable.Param(m4804id = 1) boolean z, @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) int i, @SafeParcelable.Param(m4804id = 4) byte[] bArr, @SafeParcelable.Param(m4804id = 5) String[] strArr, @SafeParcelable.Param(m4804id = 6) String[] strArr2, @SafeParcelable.Param(m4804id = 7) boolean z2, @SafeParcelable.Param(m4804id = 8) long j) {
        this.zza = z;
        this.zzb = str;
        this.zzc = i;
        this.zzd = bArr;
        this.zze = strArr;
        this.zzf = strArr2;
        this.zzg = z2;
        this.zzh = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zza);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeByteArray(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeStringArray(parcel, 5, this.zze, false);
        SafeParcelWriter.writeStringArray(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzg);
        SafeParcelWriter.writeLong(parcel, 8, this.zzh);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

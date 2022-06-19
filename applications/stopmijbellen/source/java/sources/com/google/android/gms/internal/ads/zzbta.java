package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "HttpRequestParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbta.class */
public final class zzbta extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbta> CREATOR = new zzbtb();
    @SafeParcelable.Field(m4805id = 1)
    public final String zza;
    @SafeParcelable.Field(m4805id = 2)
    public final String[] zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final String[] zzc;

    @SafeParcelable.Constructor
    public zzbta(@SafeParcelable.Param(m4804id = 1) String str, @SafeParcelable.Param(m4804id = 2) String[] strArr, @SafeParcelable.Param(m4804id = 3) String[] strArr2) {
        this.zza = str;
        this.zzb = strArr;
        this.zzc = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeStringArray(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeStringArray(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

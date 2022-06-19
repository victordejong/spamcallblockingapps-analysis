package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbew;
import com.google.android.gms.internal.ads.zzfey;
import com.google.android.gms.internal.ads.zzfqr;
@SafeParcelable.Class(creator = "ExceptionParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbd.class */
public final class zzbd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbd> CREATOR = new zzbe();
    @SafeParcelable.Field(m4805id = 1)
    public final String zza;
    @SafeParcelable.Field(m4805id = 2)
    public final int zzb;

    @SafeParcelable.Constructor
    public zzbd(@SafeParcelable.Param(m4804id = 1) String str, @SafeParcelable.Param(m4804id = 2) int i) {
        this.zza = str == null ? "" : str;
        this.zzb = i;
    }

    public static zzbd zza(Throwable th) {
        zzbew zza = zzfey.zza(th);
        return new zzbd(zzfqr.zzd(th.getMessage()) ? zza.zzb : th.getMessage(), zza.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

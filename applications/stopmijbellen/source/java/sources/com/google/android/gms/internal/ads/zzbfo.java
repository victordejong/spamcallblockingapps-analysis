package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "AppOpenAdOptionsParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfo.class */
public final class zzbfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbfo> CREATOR = new zzbfp();
    @AppOpenAd.AppOpenAdOrientation
    @SafeParcelable.Field(m4805id = 2)
    public final int zza;

    @SafeParcelable.Constructor
    public zzbfo(@SafeParcelable.Param(m4804id = 2) @AppOpenAd.AppOpenAdOrientation int i) {
        this.zza = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

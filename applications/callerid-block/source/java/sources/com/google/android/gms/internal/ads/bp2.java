package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bp2.class */
final class bp2 implements Parcelable.Creator<zznd> {
    bp2() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zznd createFromParcel(Parcel parcel) {
        return new zznd(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zznd[] newArray(int i) {
        return new zznd[i];
    }
}

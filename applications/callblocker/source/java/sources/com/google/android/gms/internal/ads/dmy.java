package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmy.class */
final class dmy implements Parcelable.Creator<dmw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dmw createFromParcel(Parcel parcel) {
        return new dmw(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dmw[] newArray(int i) {
        return new dmw[i];
    }
}

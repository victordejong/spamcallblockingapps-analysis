package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpl.class */
final class dpl implements Parcelable.Creator<dpj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpj createFromParcel(Parcel parcel) {
        return new dpj(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpj[] newArray(int i) {
        return new dpj[i];
    }
}

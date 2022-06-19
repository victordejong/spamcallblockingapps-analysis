package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/zzaw.class */
public final class zzaw implements Parcelable.Creator<zzax> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzax createFromParcel(Parcel parcel) {
        return new zzax(parcel.readParcelable(RectangularBounds.class.getClassLoader()), parcel.readParcelable(RectangularBounds.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzax[] newArray(int i) {
        return new zzax[i];
    }
}

package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.places.api.model.Place;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/zzbd.class */
public final class zzbd implements Parcelable.Creator<Place.BusinessStatus> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Place.BusinessStatus createFromParcel(Parcel parcel) {
        return Place.BusinessStatus.valueOf(parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Place.BusinessStatus[] newArray(int i) {
        return new Place.BusinessStatus[i];
    }
}

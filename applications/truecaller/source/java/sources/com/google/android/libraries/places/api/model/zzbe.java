package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.places.api.model.Place;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/zzbe.class */
public final class zzbe implements Parcelable.Creator<Place.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Place.Field createFromParcel(Parcel parcel) {
        return Place.Field.valueOf(parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Place.Field[] newArray(int i) {
        return new Place.Field[i];
    }
}

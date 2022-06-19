package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.places.api.model.Place;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/zzbf.class */
public final class zzbf implements Parcelable.Creator<Place.Type> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Place.Type createFromParcel(Parcel parcel) {
        return Place.Type.valueOf(parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Place.Type[] newArray(int i) {
        return new Place.Type[i];
    }
}

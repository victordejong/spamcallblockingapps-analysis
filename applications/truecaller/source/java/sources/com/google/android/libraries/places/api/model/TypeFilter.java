package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/TypeFilter.class */
public enum TypeFilter implements Parcelable {
    ADDRESS,
    CITIES,
    ESTABLISHMENT,
    GEOCODE,
    REGIONS;
    
    public static final Parcelable.Creator<TypeFilter> CREATOR = new Parcelable.Creator<TypeFilter>() { // from class: com.google.android.libraries.places.api.model.zzbg
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ TypeFilter createFromParcel(Parcel parcel) {
            return TypeFilter.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ TypeFilter[] newArray(int i) {
            return new TypeFilter[i];
        }
    };

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(name());
    }
}

package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/zzag.class */
public final class zzag implements Parcelable.Creator<zzah> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah createFromParcel(Parcel parcel) {
        return new zzah((ParcelUuid) parcel.readParcelable(AutocompleteSessionToken.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah[] newArray(int i) {
        return new zzah[i];
    }
}

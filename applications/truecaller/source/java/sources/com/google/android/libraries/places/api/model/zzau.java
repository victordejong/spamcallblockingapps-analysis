package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/zzau.class */
public final class zzau implements Parcelable.Creator<zzav> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzav createFromParcel(Parcel parcel) {
        String str = null;
        String readString = parcel.readInt() == 0 ? parcel.readString() : null;
        if (parcel.readInt() == 0) {
            str = parcel.readString();
        }
        return new zzav(readString, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzav[] newArray(int i) {
        return new zzav[i];
    }
}

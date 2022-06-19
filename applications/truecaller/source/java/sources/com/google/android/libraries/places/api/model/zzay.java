package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/zzay.class */
public final class zzay implements Parcelable.Creator<zzaz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaz createFromParcel(Parcel parcel) {
        return new zzaz((DayOfWeek) parcel.readParcelable(TimeOfWeek.class.getClassLoader()), (LocalTime) parcel.readParcelable(TimeOfWeek.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaz[] newArray(int i) {
        return new zzaz[i];
    }
}

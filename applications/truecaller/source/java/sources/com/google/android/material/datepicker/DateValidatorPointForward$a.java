package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/DateValidatorPointForward$a.class */
public final class DateValidatorPointForward$a implements Parcelable.Creator<DateValidatorPointForward> {
    @Override // android.os.Parcelable.Creator
    public DateValidatorPointForward createFromParcel(Parcel parcel) {
        return new DateValidatorPointForward(parcel.readLong(), (DateValidatorPointForward$a) null);
    }

    @Override // android.os.Parcelable.Creator
    public DateValidatorPointForward[] newArray(int i) {
        return new DateValidatorPointForward[i];
    }
}

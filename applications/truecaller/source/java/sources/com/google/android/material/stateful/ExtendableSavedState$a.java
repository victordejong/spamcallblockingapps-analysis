package com.google.android.material.stateful;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/stateful/ExtendableSavedState$a.class */
public final class ExtendableSavedState$a implements Parcelable.ClassLoaderCreator<ExtendableSavedState> {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new ExtendableSavedState(parcel, (ClassLoader) null, (ExtendableSavedState$a) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public ExtendableSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ExtendableSavedState(parcel, classLoader, (ExtendableSavedState$a) null);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new ExtendableSavedState[i];
    }
}

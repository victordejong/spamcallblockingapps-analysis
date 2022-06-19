package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.internal.CheckableImageButton;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$SavedState$a.class */
public final class CheckableImageButton$SavedState$a implements Parcelable.ClassLoaderCreator<CheckableImageButton.SavedState> {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new CheckableImageButton.SavedState(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public CheckableImageButton.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new CheckableImageButton.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new CheckableImageButton.SavedState[i];
    }
}

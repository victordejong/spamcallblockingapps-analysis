package com.google.android.material.button;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.button.MaterialButton;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/button/MaterialButton$SavedState$a.class */
public final class MaterialButton$SavedState$a implements Parcelable.ClassLoaderCreator<MaterialButton.SavedState> {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new MaterialButton.SavedState(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public MaterialButton.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new MaterialButton.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new MaterialButton.SavedState[i];
    }
}

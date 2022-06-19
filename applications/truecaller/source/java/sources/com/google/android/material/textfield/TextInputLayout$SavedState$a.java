package com.google.android.material.textfield;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState$a.class */
public final class TextInputLayout$SavedState$a implements Parcelable.ClassLoaderCreator<TextInputLayout.SavedState> {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new TextInputLayout.SavedState(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public TextInputLayout.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new TextInputLayout.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new TextInputLayout.SavedState[i];
    }
}

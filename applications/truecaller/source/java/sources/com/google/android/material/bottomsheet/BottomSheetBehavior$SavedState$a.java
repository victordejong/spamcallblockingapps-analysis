package com.google.android.material.bottomsheet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$a.class */
public final class BottomSheetBehavior$SavedState$a implements Parcelable.ClassLoaderCreator<BottomSheetBehavior.SavedState> {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new BottomSheetBehavior.SavedState(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public BottomSheetBehavior.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new BottomSheetBehavior.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new BottomSheetBehavior.SavedState[i];
    }
}

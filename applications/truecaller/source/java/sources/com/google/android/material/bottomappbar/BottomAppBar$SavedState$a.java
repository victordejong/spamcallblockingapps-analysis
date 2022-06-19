package com.google.android.material.bottomappbar;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomappbar.BottomAppBar;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState$a.class */
public final class BottomAppBar$SavedState$a implements Parcelable.ClassLoaderCreator<BottomAppBar.SavedState> {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new BottomAppBar.SavedState(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public BottomAppBar.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new BottomAppBar.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new BottomAppBar.SavedState[i];
    }
}

package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState$a.class */
public final class AppBarLayout$BaseBehavior$SavedState$a implements Parcelable.ClassLoaderCreator<AppBarLayout.BaseBehavior.SavedState> {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new AppBarLayout.BaseBehavior.SavedState(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public AppBarLayout.BaseBehavior.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new AppBarLayout.BaseBehavior.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new AppBarLayout.BaseBehavior.SavedState[i];
    }
}

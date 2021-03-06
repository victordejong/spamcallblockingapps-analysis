package com.google.android.libraries.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzec.class */
public enum zzec implements Parcelable {
    FRAGMENT,
    INTENT;
    
    public static final Parcelable.Creator<zzec> CREATOR = new Parcelable.Creator<zzec>() { // from class: com.google.android.libraries.places.internal.zzeb
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ zzec createFromParcel(Parcel parcel) {
            return zzec.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ zzec[] newArray(int i) {
            return new zzec[i];
        }
    };

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(name());
    }
}

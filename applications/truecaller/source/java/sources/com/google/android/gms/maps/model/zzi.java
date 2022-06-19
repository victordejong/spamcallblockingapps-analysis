package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzi.class */
public final class zzi implements Parcelable.Creator<PatternItem> {
    @Override // android.os.Parcelable.Creator
    public final PatternItem createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        Float f = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                f = SafeParcelReader.m38869t(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new PatternItem(i, f);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PatternItem[] newArray(int i) {
        return new PatternItem[i];
    }
}

package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzc.class */
public final class zzc implements Parcelable.Creator<ActivityTransition> {
    @Override // android.os.Parcelable.Creator
    public final ActivityTransition createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new ActivityTransition(i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransition[] newArray(int i) {
        return new ActivityTransition[i];
    }
}

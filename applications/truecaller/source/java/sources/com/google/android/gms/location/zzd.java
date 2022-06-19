package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzd.class */
public final class zzd implements Parcelable.Creator<ActivityTransitionEvent> {
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final ActivityTransitionEvent createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        char c = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                c = SafeParcelReader.m38866w(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new ActivityTransitionEvent(i, i2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionEvent[] newArray(int i) {
        return new ActivityTransitionEvent[i];
    }
}

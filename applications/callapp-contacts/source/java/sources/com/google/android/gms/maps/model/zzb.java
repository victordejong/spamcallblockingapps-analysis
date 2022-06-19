package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzb.class */
public final class zzb implements Parcelable.Creator<Cap> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Cap createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        IBinder iBinder = null;
        Float f = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 3) {
                iBinder = SafeParcelReader.m19127n(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                f = SafeParcelReader.m19131j(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new Cap(i, iBinder, f);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Cap[] newArray(int i) {
        return new Cap[i];
    }
}

package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzb.class */
public final class zzb implements Parcelable.Creator<Cap> {
    @Override // android.os.Parcelable.Creator
    public final Cap createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        IBinder iBinder = null;
        Float f = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 3) {
                iBinder = SafeParcelReader.m38868u(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                f = SafeParcelReader.m38869t(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Cap(i, iBinder == null ? null : new BitmapDescriptor(IObjectWrapper.Stub.m38750m1(iBinder)), f);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Cap[] newArray(int i) {
        return new Cap[i];
    }
}

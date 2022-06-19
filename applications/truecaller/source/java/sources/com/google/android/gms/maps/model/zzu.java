package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzu.class */
public final class zzu implements Parcelable.Creator<TileOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final TileOverlayOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = true;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                iBinder = SafeParcelReader.m38868u(parcel, readInt);
            } else if (c == 3) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c == 4) {
                f = SafeParcelReader.m38870s(parcel, readInt);
            } else if (c == 5) {
                z2 = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                f2 = SafeParcelReader.m38870s(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new TileOverlayOptions(iBinder, z, f, z2, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TileOverlayOptions[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}

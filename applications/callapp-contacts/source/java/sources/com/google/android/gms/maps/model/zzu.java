package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzu.class */
public final class zzu implements Parcelable.Creator<TileOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TileOverlayOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        IBinder iBinder = null;
        boolean z = false;
        float f = 0.0f;
        boolean z2 = true;
        float f2 = 0.0f;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                iBinder = SafeParcelReader.m19127n(parcel, readInt);
            } else if (c == 3) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c == 4) {
                f = SafeParcelReader.m19132i(parcel, readInt);
            } else if (c == 5) {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 6) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                f2 = SafeParcelReader.m19132i(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new TileOverlayOptions(iBinder, z, f, z2, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TileOverlayOptions[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}

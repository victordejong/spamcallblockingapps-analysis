package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzu.class */
public final class zzu implements Parcelable.Creator<TileOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TileOverlayOptions createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        IBinder iBinder = null;
        boolean z = false;
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = true;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                iBinder = SafeParcelReader.n(parcel, readInt);
            } else if (c2 == 3) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 4) {
                f = SafeParcelReader.i(parcel, readInt);
            } else if (c2 == 5) {
                z2 = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                f2 = SafeParcelReader.i(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new TileOverlayOptions(iBinder, z, f, z2, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TileOverlayOptions[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}

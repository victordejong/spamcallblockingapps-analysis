package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ak.class */
public final class ak implements Parcelable.Creator<zzbx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbx createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                i3 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i4 = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzbx(i, i2, i3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbx[] newArray(int i) {
        return new zzbx[i];
    }
}

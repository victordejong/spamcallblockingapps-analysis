package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/y.class */
public final class y implements Parcelable.Creator<LocationRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        long j = Constants.HOUR_IN_MILLIS;
        long j2 = 600000;
        long j3 = Long.MAX_VALUE;
        long j4 = 0;
        int i = 102;
        boolean z = false;
        int i2 = Integer.MAX_VALUE;
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    j = SafeParcelReader.f(parcel, readInt);
                    break;
                case 3:
                    j2 = SafeParcelReader.f(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case 5:
                    j3 = SafeParcelReader.f(parcel, readInt);
                    break;
                case 6:
                    i2 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 7:
                    f = SafeParcelReader.i(parcel, readInt);
                    break;
                case '\b':
                    j4 = SafeParcelReader.f(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new LocationRequest(i, j, j2, z, j3, i2, f, j4, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}

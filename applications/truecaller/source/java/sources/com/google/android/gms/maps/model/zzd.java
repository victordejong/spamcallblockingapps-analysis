package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzd.class */
public final class zzd implements Parcelable.Creator<GroundOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final GroundOverlayOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        boolean z2 = false;
        IBinder iBinder = null;
        LatLng latLng = null;
        LatLngBounds latLngBounds = null;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    iBinder = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 3:
                    latLng = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
                    break;
                case 4:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 5:
                    f2 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) SafeParcelReader.m38880i(parcel, readInt, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\b':
                    f4 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\t':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    f5 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 11:
                    f6 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\f':
                    f7 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\r':
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}

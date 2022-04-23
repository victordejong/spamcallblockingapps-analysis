package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/l.class */
public final class l implements Parcelable.Creator<GoogleMapOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        CameraPosition cameraPosition = null;
        Float f = null;
        Float f2 = null;
        LatLngBounds latLngBounds = null;
        byte b2 = -1;
        byte b3 = -1;
        int i = 0;
        byte b4 = -1;
        byte b5 = -1;
        byte b6 = -1;
        byte b7 = -1;
        byte b8 = -1;
        byte b9 = -1;
        byte b10 = -1;
        byte b11 = -1;
        byte b12 = -1;
        byte b13 = -1;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    b2 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 3:
                    b3 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 4:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) SafeParcelReader.a(parcel, readInt, CameraPosition.CREATOR);
                    break;
                case 6:
                    b4 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 7:
                    b5 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\b':
                    b6 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\t':
                    b7 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\n':
                    b8 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 11:
                    b9 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\f':
                    b10 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\r':
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
                case 14:
                    b11 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 15:
                    b12 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 16:
                    f = SafeParcelReader.j(parcel, readInt);
                    break;
                case 17:
                    f2 = SafeParcelReader.j(parcel, readInt);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) SafeParcelReader.a(parcel, readInt, LatLngBounds.CREATOR);
                    break;
                case 19:
                    b13 = SafeParcelReader.d(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new GoogleMapOptions(b2, b3, i, cameraPosition, b4, b5, b6, b7, b8, b9, b10, b11, b12, f, f2, latLngBounds, b13);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}

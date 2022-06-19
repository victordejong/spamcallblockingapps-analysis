package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
/* renamed from: com.google.android.gms.maps.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/l.class */
public final class C13838l implements Parcelable.Creator<GoogleMapOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        CameraPosition cameraPosition = null;
        Float f = null;
        Float f2 = null;
        LatLngBounds latLngBounds = null;
        int i = 0;
        byte b = -1;
        byte b2 = -1;
        byte b3 = -1;
        byte b4 = -1;
        byte b5 = -1;
        byte b6 = -1;
        byte b7 = -1;
        byte b8 = -1;
        byte b9 = -1;
        byte b10 = -1;
        byte b11 = -1;
        byte b12 = -1;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    b12 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 3:
                    b11 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 4:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) SafeParcelReader.m19143a(parcel, readInt, CameraPosition.CREATOR);
                    break;
                case 6:
                    b10 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 7:
                    b9 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\b':
                    b8 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\t':
                    b7 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\n':
                    b6 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 11:
                    b5 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\f':
                    b4 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\r':
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
                case 14:
                    b3 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 15:
                    b2 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 16:
                    f = SafeParcelReader.m19131j(parcel, readInt);
                    break;
                case 17:
                    f2 = SafeParcelReader.m19131j(parcel, readInt);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) SafeParcelReader.m19143a(parcel, readInt, LatLngBounds.CREATOR);
                    break;
                case 19:
                    b = SafeParcelReader.m19137d(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new GoogleMapOptions(b12, b11, i, cameraPosition, b10, b9, b8, b7, b6, b5, b4, b3, b2, f, f2, latLngBounds, b);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}

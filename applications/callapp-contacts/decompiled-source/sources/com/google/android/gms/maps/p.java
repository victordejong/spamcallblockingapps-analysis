package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/p.class */
public final class p implements Parcelable.Creator<StreetViewPanoramaOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOptions createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        String str = null;
        LatLng latLng = null;
        Integer num = null;
        StreetViewSource streetViewSource = null;
        byte b2 = 0;
        byte b3 = 0;
        byte b4 = 0;
        byte b5 = 0;
        byte b6 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera) SafeParcelReader.a(parcel, readInt, StreetViewPanoramaCamera.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 4:
                    latLng = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
                    break;
                case 5:
                    int a3 = SafeParcelReader.a(parcel, readInt);
                    if (a3 != 0) {
                        SafeParcelReader.b(parcel, a3, 4);
                        num = Integer.valueOf(parcel.readInt());
                        break;
                    } else {
                        num = null;
                        break;
                    }
                case 6:
                    b2 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 7:
                    b3 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\b':
                    b4 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\t':
                    b5 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\n':
                    b6 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 11:
                    streetViewSource = (StreetViewSource) SafeParcelReader.a(parcel, readInt, StreetViewSource.CREATOR);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new StreetViewPanoramaOptions(streetViewPanoramaCamera, str, latLng, num, b2, b3, b4, b5, b6, streetViewSource);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOptions[] newArray(int i) {
        return new StreetViewPanoramaOptions[i];
    }
}

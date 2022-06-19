package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/zzai.class */
public final class zzai implements Parcelable.Creator<StreetViewPanoramaOptions> {
    @Override // android.os.Parcelable.Creator
    public final StreetViewPanoramaOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        String str = null;
        LatLng latLng = null;
        Integer num = null;
        StreetViewSource streetViewSource = null;
        byte b = 0;
        byte b2 = 0;
        byte b3 = 0;
        byte b4 = 0;
        byte b5 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera) SafeParcelReader.m38880i(parcel, readInt, StreetViewPanoramaCamera.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    latLng = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
                    break;
                case 5:
                    int m38864y = SafeParcelReader.m38864y(parcel, readInt);
                    if (m38864y != 0) {
                        SafeParcelReader.m38890B(parcel, readInt, m38864y, 4);
                        num = Integer.valueOf(parcel.readInt());
                        break;
                    } else {
                        num = null;
                        break;
                    }
                case 6:
                    b5 = SafeParcelReader.m38872q(parcel, readInt);
                    break;
                case 7:
                    b4 = SafeParcelReader.m38872q(parcel, readInt);
                    break;
                case '\b':
                    b3 = SafeParcelReader.m38872q(parcel, readInt);
                    break;
                case '\t':
                    b2 = SafeParcelReader.m38872q(parcel, readInt);
                    break;
                case '\n':
                    b = SafeParcelReader.m38872q(parcel, readInt);
                    break;
                case 11:
                    streetViewSource = (StreetViewSource) SafeParcelReader.m38880i(parcel, readInt, StreetViewSource.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new StreetViewPanoramaOptions(streetViewPanoramaCamera, str, latLng, num, b5, b4, b3, b2, b, streetViewSource);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOptions[] newArray(int i) {
        return new StreetViewPanoramaOptions[i];
    }
}

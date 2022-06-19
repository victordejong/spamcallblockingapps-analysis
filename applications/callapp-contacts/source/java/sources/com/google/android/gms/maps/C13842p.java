package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
/* renamed from: com.google.android.gms.maps.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/p.class */
public final class C13842p implements Parcelable.Creator<StreetViewPanoramaOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
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
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera) SafeParcelReader.m19143a(parcel, readInt, StreetViewPanoramaCamera.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    latLng = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
                    break;
                case 5:
                    int m19145a = SafeParcelReader.m19145a(parcel, readInt);
                    if (m19145a != 0) {
                        SafeParcelReader.m19141b(parcel, m19145a, 4);
                        num = Integer.valueOf(parcel.readInt());
                        break;
                    } else {
                        num = null;
                        break;
                    }
                case 6:
                    b5 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 7:
                    b4 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\b':
                    b3 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\t':
                    b2 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\n':
                    b = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 11:
                    streetViewSource = (StreetViewSource) SafeParcelReader.m19143a(parcel, readInt, StreetViewSource.CREATOR);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new StreetViewPanoramaOptions(streetViewPanoramaCamera, str, latLng, num, b5, b4, b3, b2, b, streetViewSource);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOptions[] newArray(int i) {
        return new StreetViewPanoramaOptions[i];
    }
}

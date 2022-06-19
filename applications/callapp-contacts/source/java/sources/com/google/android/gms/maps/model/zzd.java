package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzd.class */
public final class zzd implements Parcelable.Creator<GroundOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        IBinder iBinder = null;
        LatLng latLng = null;
        LatLngBounds latLngBounds = null;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        boolean z = false;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    iBinder = SafeParcelReader.m19127n(parcel, readInt);
                    break;
                case 3:
                    latLng = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
                    break;
                case 4:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 5:
                    f2 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) SafeParcelReader.m19143a(parcel, readInt, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\b':
                    f4 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\t':
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\n':
                    f5 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 11:
                    f6 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\f':
                    f7 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\r':
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}

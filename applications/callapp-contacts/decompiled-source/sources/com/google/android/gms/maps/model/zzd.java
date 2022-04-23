package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzd.class */
public final class zzd implements Parcelable.Creator<GroundOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        IBinder iBinder = null;
        LatLng latLng = null;
        LatLngBounds latLngBounds = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    iBinder = SafeParcelReader.n(parcel, readInt);
                    break;
                case 3:
                    latLng = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
                    break;
                case 4:
                    f = SafeParcelReader.i(parcel, readInt);
                    break;
                case 5:
                    f2 = SafeParcelReader.i(parcel, readInt);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) SafeParcelReader.a(parcel, readInt, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = SafeParcelReader.i(parcel, readInt);
                    break;
                case '\b':
                    f4 = SafeParcelReader.i(parcel, readInt);
                    break;
                case '\t':
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\n':
                    f5 = SafeParcelReader.i(parcel, readInt);
                    break;
                case 11:
                    f6 = SafeParcelReader.i(parcel, readInt);
                    break;
                case '\f':
                    f7 = SafeParcelReader.i(parcel, readInt);
                    break;
                case '\r':
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}

package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzc.class */
public final class zzc implements Parcelable.Creator<CircleOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        LatLng latLng = null;
        ArrayList arrayList = null;
        double d2 = 0.0d;
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        int i2 = 0;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    d2 = SafeParcelReader.k(parcel, readInt);
                    break;
                case 4:
                    f = SafeParcelReader.i(parcel, readInt);
                    break;
                case 5:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 6:
                    i2 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 7:
                    f2 = SafeParcelReader.i(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\n':
                    arrayList = SafeParcelReader.c(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new CircleOptions(latLng, d2, f, i, i2, f2, z, z2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions[] newArray(int i) {
        return new CircleOptions[i];
    }
}

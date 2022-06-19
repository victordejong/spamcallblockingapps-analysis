package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzh.class */
public final class zzh implements Parcelable.Creator<MarkerOptions> {
    @Override // android.os.Parcelable.Creator
    public final MarkerOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.5f;
        float f7 = 1.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 6:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 7:
                    f2 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 11:
                    f3 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\f':
                    f6 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\r':
                    f4 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 14:
                    f7 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 15:
                    f5 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new MarkerOptions(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f6, f4, f7, f5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions[] newArray(int i) {
        return new MarkerOptions[i];
    }
}

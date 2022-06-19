package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzh.class */
public final class zzh implements Parcelable.Creator<MarkerOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = 0.0f;
        float f4 = 0.5f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m19127n(parcel, readInt);
                    break;
                case 6:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 7:
                    f2 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\n':
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 11:
                    f3 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\f':
                    f4 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\r':
                    f5 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 14:
                    f6 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 15:
                    f7 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new MarkerOptions(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6, f7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions[] newArray(int i) {
        return new MarkerOptions[i];
    }
}

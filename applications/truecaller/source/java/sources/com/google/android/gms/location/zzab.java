package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzab.class */
public final class zzab implements Parcelable.Creator<LocationRequest> {
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final LocationRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 102;
        char c = 61056;
        char c2 = 10176;
        boolean z = false;
        char c3 = 65535;
        int i2 = Integer.MAX_VALUE;
        float f = 0.0f;
        char c4 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 3:
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 5:
                    c3 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 6:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 7:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\b':
                    c4 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LocationRequest(i, c, c2, z, c3, i2, f, c4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}

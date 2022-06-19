package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblw.class */
public final class zzblw implements Parcelable.Creator<zzblv> {
    @Override // android.os.Parcelable.Creator
    public final zzblv createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        zzbis zzbisVar = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 3:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 4:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 5:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 6:
                    zzbisVar = (zzbis) SafeParcelReader.m38880i(parcel, readInt, zzbis.CREATOR);
                    break;
                case 7:
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\b':
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzblv(i, z, i2, z2, i3, zzbisVar, z3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzblv[] newArray(int i) {
        return new zzblv[i];
    }
}

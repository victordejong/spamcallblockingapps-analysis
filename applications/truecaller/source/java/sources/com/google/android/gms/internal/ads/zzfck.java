package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfck.class */
public final class zzfck implements Parcelable.Creator<zzfcj> {
    @Override // android.os.Parcelable.Creator
    public final zzfcj createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        String str = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 3:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 4:
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 5:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    i5 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 7:
                    i6 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzfcj(i, i2, i3, i4, str, i5, i6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzfcj[] newArray(int i) {
        return new zzfcj[i];
    }
}

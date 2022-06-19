package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crg.class */
public final class crg implements Parcelable.Creator<zzdrc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdrc createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 3:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 4:
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 5:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    i5 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 7:
                    i6 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdrc(i, i2, i3, i4, str, i5, i6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdrc[] newArray(int i) {
        return new zzdrc[i];
    }
}

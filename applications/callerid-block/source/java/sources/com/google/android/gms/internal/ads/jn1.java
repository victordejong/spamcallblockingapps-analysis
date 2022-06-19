package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jn1.class */
public final class jn1 implements Parcelable.Creator<zzdsy> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzdsy createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 1:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 2:
                    i2 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 3:
                    i3 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 4:
                    i4 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 5:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 6:
                    i5 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 7:
                    i6 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzdsy(i, i2, i3, i4, str, i5, i6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzdsy[] newArray(int i) {
        return new zzdsy[i];
    }
}

package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/zzk.class */
public final class zzk implements Parcelable.Creator<TokenData> {
    @Override // android.os.Parcelable.Creator
    public final TokenData createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        String str = null;
        Long l = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    l = SafeParcelReader.m38865x(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 7:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new TokenData(i, str, l, z, z2, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}

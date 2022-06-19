package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/j.class */
public final class C5953j implements Parcelable.Creator<TokenData> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        Long l = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    l = SafeParcelReader.m16979G(parcel, m16983C);
                    break;
                case 4:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 5:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 7:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new TokenData(i, str, l, z, z2, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}

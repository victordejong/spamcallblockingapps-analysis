package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/i.class */
public final class C11776i implements Parcelable.Creator<TokenData> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        Long l = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    l = SafeParcelReader.m19134g(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 7:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new TokenData(i, str, l, z, z2, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}

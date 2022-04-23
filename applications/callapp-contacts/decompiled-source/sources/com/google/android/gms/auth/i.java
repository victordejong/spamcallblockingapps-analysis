package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/i.class */
public final class i implements Parcelable.Creator<TokenData> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        Long l = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 3:
                    l = SafeParcelReader.g(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.u(parcel, readInt);
                    break;
                case 7:
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new TokenData(i, str, l, z, z2, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}

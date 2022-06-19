package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzs.class */
public final class zzs implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final zzr createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        zzt zztVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
                hashSet.add(1);
            } else if (c == 2) {
                zztVar = (zzt) SafeParcelReader.m38880i(parcel, readInt, zzt.CREATOR);
                hashSet.add(2);
            } else if (c == 3) {
                str = SafeParcelReader.m38879j(parcel, readInt);
                hashSet.add(3);
            } else if (c == 4) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
                hashSet.add(4);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str3 = SafeParcelReader.m38879j(parcel, readInt);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == m38891A) {
            return new zzr(hashSet, i, zztVar, str, str2, str3);
        }
        throw new SafeParcelReader.ParseException(C22128a.m8690L1(37, "Overread allowed size end=", m38891A), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}

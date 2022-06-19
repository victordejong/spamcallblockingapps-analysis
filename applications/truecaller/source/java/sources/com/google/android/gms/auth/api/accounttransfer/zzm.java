package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzm.class */
public final class zzm implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final zzl createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        ArrayList arrayList = null;
        zzo zzoVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
                hashSet.add(1);
            } else if (c == 2) {
                arrayList = SafeParcelReader.m38875n(parcel, readInt, zzr.CREATOR);
                hashSet.add(2);
            } else if (c == 3) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
                hashSet.add(3);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                zzoVar = (zzo) SafeParcelReader.m38880i(parcel, readInt, zzo.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == m38891A) {
            return new zzl(hashSet, i, arrayList, i2, zzoVar);
        }
        throw new SafeParcelReader.ParseException(C22128a.m8690L1(37, "Overread allowed size end=", m38891A), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}

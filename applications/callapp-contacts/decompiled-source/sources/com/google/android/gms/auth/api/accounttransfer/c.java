package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/c.class */
public final class c implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        zzt zztVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
                hashSet.add(1);
            } else if (c2 == 2) {
                zztVar = (zzt) SafeParcelReader.a(parcel, readInt, zzt.CREATOR);
                hashSet.add(2);
            } else if (c2 == 3) {
                str = SafeParcelReader.m(parcel, readInt);
                hashSet.add(3);
            } else if (c2 == 4) {
                str2 = SafeParcelReader.m(parcel, readInt);
                hashSet.add(4);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str3 = SafeParcelReader.m(parcel, readInt);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == a2) {
            return new zzr(hashSet, i, zztVar, str, str2, str3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(a2);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}

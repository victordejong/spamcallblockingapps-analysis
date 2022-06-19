package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/c.class */
public final class C11687c implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        zzt zztVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
                hashSet.add(1);
            } else if (c == 2) {
                zztVar = (zzt) SafeParcelReader.m19143a(parcel, readInt, zzt.CREATOR);
                hashSet.add(2);
            } else if (c == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
                hashSet.add(3);
            } else if (c == 4) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
                hashSet.add(4);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str3 = SafeParcelReader.m19128m(parcel, readInt);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == m19146a) {
            return new zzr(hashSet, i, zztVar, str, str2, str3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(m19146a);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}

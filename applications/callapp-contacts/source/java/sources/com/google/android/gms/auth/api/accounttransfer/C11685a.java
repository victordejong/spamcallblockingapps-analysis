package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/a.class */
public final class C11685a implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        ArrayList arrayList = null;
        zzo zzoVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
                hashSet.add(1);
            } else if (c == 2) {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, zzr.CREATOR);
                hashSet.add(2);
            } else if (c == 3) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
                hashSet.add(3);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzoVar = (zzo) SafeParcelReader.m19143a(parcel, readInt, zzo.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == m19146a) {
            return new zzl(hashSet, i, arrayList, i2, zzoVar);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(m19146a);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}

package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/a.class */
public final class a implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        ArrayList arrayList = null;
        zzo zzoVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
                hashSet.add(1);
            } else if (c2 == 2) {
                arrayList = SafeParcelReader.c(parcel, readInt, zzr.CREATOR);
                hashSet.add(2);
            } else if (c2 == 3) {
                i2 = SafeParcelReader.e(parcel, readInt);
                hashSet.add(3);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzoVar = (zzo) SafeParcelReader.a(parcel, readInt, zzo.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == a2) {
            return new zzl(hashSet, i, arrayList, i2, zzoVar);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(a2);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}

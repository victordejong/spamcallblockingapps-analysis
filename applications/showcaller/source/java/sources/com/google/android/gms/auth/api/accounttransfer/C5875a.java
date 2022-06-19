package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/a.class */
public final class C5875a implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        ArrayList arrayList = null;
        zzo zzoVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
                hashSet.add(1);
            } else if (m16952v == 2) {
                arrayList = SafeParcelReader.m16954t(parcel, m16983C, zzr.CREATOR);
                hashSet.add(2);
            } else if (m16952v == 3) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
                hashSet.add(3);
            } else if (m16952v != 4) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                zzoVar = (zzo) SafeParcelReader.m16959o(parcel, m16983C, zzo.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == m16976J) {
            return new zzl(hashSet, i, arrayList, i2, zzoVar);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(m16976J);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}

package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/c.class */
public final class C5877c implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        zzt zztVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
                hashSet.add(1);
            } else if (m16952v == 2) {
                zztVar = (zzt) SafeParcelReader.m16959o(parcel, m16983C, zzt.CREATOR);
                hashSet.add(2);
            } else if (m16952v == 3) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
                hashSet.add(3);
            } else if (m16952v == 4) {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
                hashSet.add(4);
            } else if (m16952v != 5) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str3 = SafeParcelReader.m16958p(parcel, m16983C);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == m16976J) {
            return new zzr(hashSet, i, zztVar, str, str2, str3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(m16976J);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}

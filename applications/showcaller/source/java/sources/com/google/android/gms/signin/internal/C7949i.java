package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;
/* renamed from: com.google.android.gms.signin.internal.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/i.class */
public final class C7949i implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zak createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        ConnectionResult connectionResult = null;
        zav zavVar = null;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.m16959o(parcel, m16983C, ConnectionResult.CREATOR);
            } else if (m16952v != 3) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                zavVar = (zav) SafeParcelReader.m16959o(parcel, m16983C, zav.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zak(i, connectionResult, zavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}

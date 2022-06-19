package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.n0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n0.class */
public final class C6153n0 implements Parcelable.Creator<zav> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zav createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                iBinder = SafeParcelReader.m16982D(parcel, m16983C);
            } else if (m16952v == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.m16959o(parcel, m16983C, ConnectionResult.CREATOR);
            } else if (m16952v == 4) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v != 5) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                z2 = SafeParcelReader.m16951w(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zav(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zav[] newArray(int i) {
        return new zav[i];
    }
}

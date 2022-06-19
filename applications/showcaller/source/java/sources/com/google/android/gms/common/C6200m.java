package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/m.class */
public final class C6200m implements Parcelable.Creator<ConnectionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionResult createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m16959o(parcel, m16983C, PendingIntent.CREATOR);
            } else if (m16952v != 4) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new ConnectionResult(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}

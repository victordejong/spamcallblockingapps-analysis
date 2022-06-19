package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.api.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c.class */
public final class C1549c implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Status createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                i2 = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k == 2) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m8324e(parcel, m8312q, PendingIntent.CREATOR);
            } else if (m8318k == 4) {
                connectionResult = (ConnectionResult) SafeParcelReader.m8324e(parcel, m8312q, ConnectionResult.CREATOR);
            } else if (m8318k != 1000) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new Status(i, i2, str, pendingIntent, connectionResult);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}

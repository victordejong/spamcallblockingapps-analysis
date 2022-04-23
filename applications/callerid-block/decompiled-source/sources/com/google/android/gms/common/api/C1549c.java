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
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                i2 = SafeParcelReader.m8310s(parcel, q);
            } else if (k == 2) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m8324e(parcel, q, PendingIntent.CREATOR);
            } else if (k == 4) {
                connectionResult = (ConnectionResult) SafeParcelReader.m8324e(parcel, q, ConnectionResult.CREATOR);
            } else if (k != 1000) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                i = SafeParcelReader.m8310s(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new Status(i, i2, str, pendingIntent, connectionResult);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}

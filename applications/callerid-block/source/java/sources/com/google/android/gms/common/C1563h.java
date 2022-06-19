package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/h.class */
public final class C1563h implements Parcelable.Creator<ConnectionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionResult createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k == 2) {
                i2 = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m8324e(parcel, m8312q, PendingIntent.CREATOR);
            } else if (m8318k != 4) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new ConnectionResult(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}

package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/g.class */
public final class C5894g implements Parcelable.Creator<SavePasswordResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordResult createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            if (SafeParcelReader.m16952v(m16983C) != 1) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.m16959o(parcel, m16983C, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new SavePasswordResult(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordResult[] newArray(int i) {
        return new SavePasswordResult[i];
    }
}

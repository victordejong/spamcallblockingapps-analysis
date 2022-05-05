package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zza.class */
public final class zza implements Parcelable.Creator<ConnectionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                i2 = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m14476n(parcel, B, PendingIntent.CREATOR);
            } else if (u != 4) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                str = SafeParcelReader.m14475o(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new ConnectionResult(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}

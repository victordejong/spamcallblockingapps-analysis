package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/zzb.class */
public final class zzb implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i2 = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m14476n(parcel, B, PendingIntent.CREATOR);
            } else if (u != 1000) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                i = SafeParcelReader.m14498D(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new Status(i, i2, str, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}

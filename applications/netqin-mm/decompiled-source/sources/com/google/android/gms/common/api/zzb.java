package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/zzb.class */
public final class zzb implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m17264a(parcel, a, PendingIntent.CREATOR);
            } else if (a2 != 1000) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new Status(i, i2, str, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}

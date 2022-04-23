package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zza.class */
public final class zza implements Parcelable.Creator<ConnectionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m17264a(parcel, a, PendingIntent.CREATOR);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new ConnectionResult(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}

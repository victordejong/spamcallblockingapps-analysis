package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/zbj.class */
public final class zbj implements Parcelable.Creator<SavePasswordResult> {
    @Override // android.os.Parcelable.Creator
    public final SavePasswordResult createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.m38880i(parcel, readInt, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new SavePasswordResult(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SavePasswordResult[] newArray(int i) {
        return new SavePasswordResult[i];
    }
}

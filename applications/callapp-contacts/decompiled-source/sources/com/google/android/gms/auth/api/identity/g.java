package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/g.class */
public final class g implements Parcelable.Creator<SavePasswordResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordResult createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.a(parcel, readInt, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new SavePasswordResult(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordResult[] newArray(int i) {
        return new SavePasswordResult[i];
    }
}

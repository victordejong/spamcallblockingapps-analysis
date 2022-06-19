package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/g.class */
public final class C11722g implements Parcelable.Creator<SavePasswordResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordResult createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.m19143a(parcel, readInt, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new SavePasswordResult(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordResult[] newArray(int i) {
        return new SavePasswordResult[i];
    }
}

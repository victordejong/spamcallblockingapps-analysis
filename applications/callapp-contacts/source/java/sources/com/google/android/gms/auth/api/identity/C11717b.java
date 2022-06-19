package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/b.class */
public final class C11717b implements Parcelable.Creator<BeginSignInResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInResult createFromParcel(Parcel parcel) {
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
        return new BeginSignInResult(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInResult[] newArray(int i) {
        return new BeginSignInResult[i];
    }
}

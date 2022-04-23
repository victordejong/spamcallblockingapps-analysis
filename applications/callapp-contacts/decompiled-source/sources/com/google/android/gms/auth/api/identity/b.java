package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/b.class */
public final class b implements Parcelable.Creator<BeginSignInResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInResult createFromParcel(Parcel parcel) {
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
        return new BeginSignInResult(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInResult[] newArray(int i) {
        return new BeginSignInResult[i];
    }
}

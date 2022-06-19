package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/zbf.class */
public final class zbf implements Parcelable.Creator<BeginSignInRequest.PasswordRequestOptions> {
    @Override // android.os.Parcelable.Creator
    public final BeginSignInRequest.PasswordRequestOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                z = SafeParcelReader.m38873p(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new BeginSignInRequest.PasswordRequestOptions(z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BeginSignInRequest.PasswordRequestOptions[] newArray(int i) {
        return new BeginSignInRequest.PasswordRequestOptions[i];
    }
}

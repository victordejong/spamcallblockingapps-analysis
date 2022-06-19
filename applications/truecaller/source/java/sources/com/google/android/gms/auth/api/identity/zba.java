package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/zba.class */
public final class zba implements Parcelable.Creator<BeginSignInRequest> {
    @Override // android.os.Parcelable.Creator
    public final BeginSignInRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
        String str = null;
        boolean z = false;
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.m38880i(parcel, readInt, BeginSignInRequest.PasswordRequestOptions.CREATOR);
            } else if (c == 2) {
                googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.m38880i(parcel, readInt, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);
            } else if (c == 3) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                z = SafeParcelReader.m38873p(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, str, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BeginSignInRequest[] newArray(int i) {
        return new BeginSignInRequest[i];
    }
}

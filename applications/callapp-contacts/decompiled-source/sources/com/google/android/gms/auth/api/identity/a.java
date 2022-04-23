package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/a.class */
public final class a implements Parcelable.Creator<BeginSignInRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
        String str = null;
        boolean z = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.a(parcel, readInt, BeginSignInRequest.PasswordRequestOptions.CREATOR);
            } else if (c2 == 2) {
                googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.a(parcel, readInt, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);
            } else if (c2 == 3) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, str, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest[] newArray(int i) {
        return new BeginSignInRequest[i];
    }
}

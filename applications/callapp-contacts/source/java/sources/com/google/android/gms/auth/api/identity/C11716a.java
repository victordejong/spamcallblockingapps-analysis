package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/a.class */
public final class C11716a implements Parcelable.Creator<BeginSignInRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
        String str = null;
        boolean z = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.m19143a(parcel, readInt, BeginSignInRequest.PasswordRequestOptions.CREATOR);
            } else if (c == 2) {
                googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.m19143a(parcel, readInt, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);
            } else if (c == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, str, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest[] newArray(int i) {
        return new BeginSignInRequest[i];
    }
}

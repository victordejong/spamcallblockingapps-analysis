package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/f.class */
public final class C11721f implements Parcelable.Creator<SavePasswordRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        SignInPassword signInPassword = null;
        String str = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                signInPassword = (SignInPassword) SafeParcelReader.m19143a(parcel, readInt, SignInPassword.CREATOR);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new SavePasswordRequest(signInPassword, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordRequest[] newArray(int i) {
        return new SavePasswordRequest[i];
    }
}

package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/zbi.class */
public final class zbi implements Parcelable.Creator<SavePasswordRequest> {
    @Override // android.os.Parcelable.Creator
    public final SavePasswordRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        SignInPassword signInPassword = null;
        String str = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                signInPassword = (SignInPassword) SafeParcelReader.m38880i(parcel, readInt, SignInPassword.CREATOR);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new SavePasswordRequest(signInPassword, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SavePasswordRequest[] newArray(int i) {
        return new SavePasswordRequest[i];
    }
}

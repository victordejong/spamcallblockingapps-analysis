package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/f.class */
public final class f implements Parcelable.Creator<SavePasswordRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        SignInPassword signInPassword = null;
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                signInPassword = (SignInPassword) SafeParcelReader.a(parcel, readInt, SignInPassword.CREATOR);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new SavePasswordRequest(signInPassword, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordRequest[] newArray(int i) {
        return new SavePasswordRequest[i];
    }
}

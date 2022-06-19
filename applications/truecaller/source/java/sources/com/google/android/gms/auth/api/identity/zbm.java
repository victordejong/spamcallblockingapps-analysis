package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/zbm.class */
public final class zbm implements Parcelable.Creator<SignInPassword> {
    @Override // android.os.Parcelable.Creator
    public final SignInPassword createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new SignInPassword(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SignInPassword[] newArray(int i) {
        return new SignInPassword[i];
    }
}

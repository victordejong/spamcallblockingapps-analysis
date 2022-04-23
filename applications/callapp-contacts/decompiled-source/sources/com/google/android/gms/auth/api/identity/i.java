package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/i.class */
public final class i implements Parcelable.Creator<SignInPassword> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInPassword createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new SignInPassword(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInPassword[] newArray(int i) {
        return new SignInPassword[i];
    }
}

package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/i.class */
public final class C11724i implements Parcelable.Creator<SignInPassword> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInPassword createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new SignInPassword(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInPassword[] newArray(int i) {
        return new SignInPassword[i];
    }
}

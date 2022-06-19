package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/c.class */
public final class C11718c implements Parcelable.Creator<GetSignInIntentRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetSignInIntentRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 2) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str3 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new GetSignInIntentRequest(str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetSignInIntentRequest[] newArray(int i) {
        return new GetSignInIntentRequest[i];
    }
}

package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/c.class */
public final class c implements Parcelable.Creator<GetSignInIntentRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetSignInIntentRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 2) {
                str2 = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str3 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new GetSignInIntentRequest(str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetSignInIntentRequest[] newArray(int i) {
        return new GetSignInIntentRequest[i];
    }
}

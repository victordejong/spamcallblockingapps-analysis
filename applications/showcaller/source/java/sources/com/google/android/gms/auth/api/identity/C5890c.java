package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/c.class */
public final class C5890c implements Parcelable.Creator<GetSignInIntentRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetSignInIntentRequest createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 2) {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v != 3) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str3 = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new GetSignInIntentRequest(str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetSignInIntentRequest[] newArray(int i) {
        return new GetSignInIntentRequest[i];
    }
}

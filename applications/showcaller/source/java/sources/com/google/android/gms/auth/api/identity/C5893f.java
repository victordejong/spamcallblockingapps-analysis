package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/f.class */
public final class C5893f implements Parcelable.Creator<SavePasswordRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordRequest createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        SignInPassword signInPassword = null;
        String str = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                signInPassword = (SignInPassword) SafeParcelReader.m16959o(parcel, m16983C, SignInPassword.CREATOR);
            } else if (m16952v != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new SavePasswordRequest(signInPassword, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SavePasswordRequest[] newArray(int i) {
        return new SavePasswordRequest[i];
    }
}

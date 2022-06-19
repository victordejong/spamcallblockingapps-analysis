package com.google.android.gms.internal.auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.auth_api.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/k.class */
public final class C7281k implements Parcelable.Creator<zzz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            if (SafeParcelReader.m16952v(m16983C) != 1) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                credential = (Credential) SafeParcelReader.m16959o(parcel, m16983C, Credential.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzz(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz[] newArray(int i) {
        return new zzz[i];
    }
}

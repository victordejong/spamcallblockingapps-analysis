package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.credentials.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/e.class */
public final class C5885e implements Parcelable.Creator<CredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String[] strArr = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String str = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v != 1000) {
                switch (m16952v) {
                    case 1:
                        z = SafeParcelReader.m16951w(parcel, m16983C);
                        continue;
                    case 2:
                        strArr = SafeParcelReader.m16957q(parcel, m16983C);
                        continue;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.m16959o(parcel, m16983C, CredentialPickerConfig.CREATOR);
                        continue;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) SafeParcelReader.m16959o(parcel, m16983C, CredentialPickerConfig.CREATOR);
                        continue;
                    case 5:
                        z2 = SafeParcelReader.m16951w(parcel, m16983C);
                        continue;
                    case 6:
                        str = SafeParcelReader.m16958p(parcel, m16983C);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m16958p(parcel, m16983C);
                        continue;
                    case 8:
                        z3 = SafeParcelReader.m16951w(parcel, m16983C);
                        continue;
                    default:
                        SafeParcelReader.m16977I(parcel, m16983C);
                        continue;
                }
            } else {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new CredentialRequest(i, z, strArr, credentialPickerConfig, credentialPickerConfig2, z2, str, str2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}

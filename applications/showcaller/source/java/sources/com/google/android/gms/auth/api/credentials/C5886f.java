package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.credentials.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/f.class */
public final class C5886f implements Parcelable.Creator<HintRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArr = null;
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
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.m16959o(parcel, m16983C, CredentialPickerConfig.CREATOR);
                        continue;
                    case 2:
                        z = SafeParcelReader.m16951w(parcel, m16983C);
                        continue;
                    case 3:
                        z2 = SafeParcelReader.m16951w(parcel, m16983C);
                        continue;
                    case 4:
                        strArr = SafeParcelReader.m16957q(parcel, m16983C);
                        continue;
                    case 5:
                        z3 = SafeParcelReader.m16951w(parcel, m16983C);
                        continue;
                    case 6:
                        str = SafeParcelReader.m16958p(parcel, m16983C);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m16958p(parcel, m16983C);
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
        return new HintRequest(i, credentialPickerConfig, z, z2, strArr, z3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest[] newArray(int i) {
        return new HintRequest[i];
    }
}

package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.credentials.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/d.class */
public final class C5884d implements Parcelable.Creator<CredentialPickerConfig> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 2) {
                z2 = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 3) {
                z3 = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 4) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 1000) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new CredentialPickerConfig(i, z, z2, z3, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig[] newArray(int i) {
        return new CredentialPickerConfig[i];
    }
}

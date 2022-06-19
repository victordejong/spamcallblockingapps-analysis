package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/zbc.class */
public final class zbc implements Parcelable.Creator<CredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final CredentialRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        String[] strArr = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1000) {
                switch (c) {
                    case 1:
                        z = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case 2:
                        strArr = SafeParcelReader.m38878k(parcel, readInt);
                        continue;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.m38880i(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) SafeParcelReader.m38880i(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 5:
                        z2 = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case 6:
                        str = SafeParcelReader.m38879j(parcel, readInt);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m38879j(parcel, readInt);
                        continue;
                    case '\b':
                        z3 = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    default:
                        SafeParcelReader.m38863z(parcel, readInt);
                        continue;
                }
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CredentialRequest(i, z, strArr, credentialPickerConfig, credentialPickerConfig2, z2, str, str2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}

package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/h.class */
public final class h implements Parcelable.Creator<CredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String[] strArr = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String str = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 != 1000) {
                switch (c2) {
                    case 1:
                        z = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case 2:
                        strArr = SafeParcelReader.t(parcel, readInt);
                        continue;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.a(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) SafeParcelReader.a(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 5:
                        z2 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case 6:
                        str = SafeParcelReader.m(parcel, readInt);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m(parcel, readInt);
                        continue;
                    case '\b':
                        z3 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    default:
                        SafeParcelReader.b(parcel, readInt);
                        continue;
                }
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new CredentialRequest(i, z, strArr, credentialPickerConfig, credentialPickerConfig2, z2, str, str2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}

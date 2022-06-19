package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.credentials.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/h.class */
public final class C11703h implements Parcelable.Creator<CredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String[] strArr = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String str = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1000) {
                switch (c) {
                    case 1:
                        z = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case 2:
                        strArr = SafeParcelReader.m19121t(parcel, readInt);
                        continue;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.m19143a(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) SafeParcelReader.m19143a(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 5:
                        z2 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case 6:
                        str = SafeParcelReader.m19128m(parcel, readInt);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m19128m(parcel, readInt);
                        continue;
                    case '\b':
                        z3 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    default:
                        SafeParcelReader.m19142b(parcel, readInt);
                        continue;
                }
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new CredentialRequest(i, z, strArr, credentialPickerConfig, credentialPickerConfig2, z2, str, str2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}

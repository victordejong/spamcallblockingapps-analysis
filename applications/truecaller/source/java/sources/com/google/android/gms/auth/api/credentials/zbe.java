package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/zbe.class */
public final class zbe implements Parcelable.Creator<HintRequest> {
    @Override // android.os.Parcelable.Creator
    public final HintRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArr = null;
        String str = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1000) {
                switch (c) {
                    case 1:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.m38880i(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 2:
                        z = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case 3:
                        z2 = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case 4:
                        strArr = SafeParcelReader.m38878k(parcel, readInt);
                        continue;
                    case 5:
                        z3 = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case 6:
                        str = SafeParcelReader.m38879j(parcel, readInt);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m38879j(parcel, readInt);
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
        return new HintRequest(i, credentialPickerConfig, z, z2, strArr, z3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ HintRequest[] newArray(int i) {
        return new HintRequest[i];
    }
}

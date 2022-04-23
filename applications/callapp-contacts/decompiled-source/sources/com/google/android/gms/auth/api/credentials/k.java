package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/k.class */
public final class k implements Parcelable.Creator<HintRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArr = null;
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
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.a(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 2:
                        z = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case 3:
                        z2 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case 4:
                        strArr = SafeParcelReader.t(parcel, readInt);
                        continue;
                    case 5:
                        z3 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case 6:
                        str = SafeParcelReader.m(parcel, readInt);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m(parcel, readInt);
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
        return new HintRequest(i, credentialPickerConfig, z, z2, strArr, z3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest[] newArray(int i) {
        return new HintRequest[i];
    }
}

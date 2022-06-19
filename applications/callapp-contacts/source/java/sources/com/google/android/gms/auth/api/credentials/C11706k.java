package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.credentials.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/k.class */
public final class C11706k implements Parcelable.Creator<HintRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArr = null;
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
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.m19143a(parcel, readInt, CredentialPickerConfig.CREATOR);
                        continue;
                    case 2:
                        z = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case 3:
                        z2 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case 4:
                        strArr = SafeParcelReader.m19121t(parcel, readInt);
                        continue;
                    case 5:
                        z3 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case 6:
                        str = SafeParcelReader.m19128m(parcel, readInt);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.m19128m(parcel, readInt);
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
        return new HintRequest(i, credentialPickerConfig, z, z2, strArr, z3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest[] newArray(int i) {
        return new HintRequest[i];
    }
}

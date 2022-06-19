package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.credentials.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/f.class */
public final class C11701f implements Parcelable.Creator<CredentialPickerConfig> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c == 2) {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c == 3) {
                z3 = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c == 4) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 1000) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new CredentialPickerConfig(i, z, z2, z3, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig[] newArray(int i) {
        return new CredentialPickerConfig[i];
    }
}

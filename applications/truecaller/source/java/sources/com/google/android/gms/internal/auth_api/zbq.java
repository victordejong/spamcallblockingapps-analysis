package com.google.android.gms.internal.auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbq.class */
public final class zbq implements Parcelable.Creator<zbp> {
    @Override // android.os.Parcelable.Creator
    public final zbp createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                credential = (Credential) SafeParcelReader.m38880i(parcel, readInt, Credential.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zbp(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zbp[] newArray(int i) {
        return new zbp[i];
    }
}

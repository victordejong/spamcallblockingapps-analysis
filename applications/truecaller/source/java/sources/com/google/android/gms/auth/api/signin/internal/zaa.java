package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zaa.class */
public final class zaa implements Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> {
    @Override // android.os.Parcelable.Creator
    public final GoogleSignInOptionsExtensionParcelable createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        Bundle bundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m38886c(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new GoogleSignInOptionsExtensionParcelable(i, i2, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptionsExtensionParcelable[] newArray(int i) {
        return new GoogleSignInOptionsExtensionParcelable[i];
    }
}

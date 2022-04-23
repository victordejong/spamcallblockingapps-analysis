package com.google.android.gms.internal.auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/l.class */
public final class l implements Parcelable.Creator<zzz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                credential = (Credential) SafeParcelReader.a(parcel, readInt, Credential.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzz(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz[] newArray(int i) {
        return new zzz[i];
    }
}

package com.google.android.gms.internal.auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.auth_api.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/l.class */
public final class C13143l implements Parcelable.Creator<zzz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                credential = (Credential) SafeParcelReader.m19143a(parcel, readInt, Credential.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzz(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz[] newArray(int i) {
        return new zzz[i];
    }
}

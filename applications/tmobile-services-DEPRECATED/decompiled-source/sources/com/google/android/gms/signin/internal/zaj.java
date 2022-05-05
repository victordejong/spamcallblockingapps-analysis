package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zaj.class */
public final class zaj implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        ConnectionResult connectionResult = null;
        ResolveAccountResponse resolveAccountResponse = null;
        int i = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.m14476n(parcel, B, ConnectionResult.CREATOR);
            } else if (u != 3) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                resolveAccountResponse = (ResolveAccountResponse) SafeParcelReader.m14476n(parcel, B, ResolveAccountResponse.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zak(i, connectionResult, resolveAccountResponse);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}

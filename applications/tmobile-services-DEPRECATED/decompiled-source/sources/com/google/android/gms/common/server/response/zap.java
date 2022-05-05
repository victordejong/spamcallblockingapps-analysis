package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zap.class */
public final class zap implements Parcelable.Creator<SafeParcelResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        Parcel parcel2 = null;
        zaj zajVar = null;
        int i = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                parcel2 = SafeParcelReader.m14478l(parcel, B);
            } else if (u != 3) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                zajVar = (zaj) SafeParcelReader.m14476n(parcel, B, zaj.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new SafeParcelResponse(i, parcel2, zajVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}

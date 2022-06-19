package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.server.response.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/e.class */
public final class C6216e implements Parcelable.Creator<SafeParcelResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SafeParcelResponse createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        Parcel parcel2 = null;
        zan zanVar = null;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                parcel2 = SafeParcelReader.m16961m(parcel, m16983C);
            } else if (m16952v != 3) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                zanVar = (zan) SafeParcelReader.m16959o(parcel, m16983C, zan.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new SafeParcelResponse(i, parcel2, zanVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SafeParcelResponse[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}

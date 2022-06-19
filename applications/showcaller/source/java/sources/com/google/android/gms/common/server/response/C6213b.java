package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* renamed from: com.google.android.gms.common.server.response.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/b.class */
public final class C6213b implements Parcelable.Creator<zam> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zam createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        FastJsonResponse.Field field = null;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v != 3) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.m16959o(parcel, m16983C, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zam(i, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zam[] newArray(int i) {
        return new zam[i];
    }
}

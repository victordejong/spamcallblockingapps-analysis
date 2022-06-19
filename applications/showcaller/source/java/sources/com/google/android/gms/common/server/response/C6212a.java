package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* renamed from: com.google.android.gms.common.server.response.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/a.class */
public final class C6212a implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        zaa zaaVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 3:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 4:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 5:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 6:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 8:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 9:
                    zaaVar = (zaa) SafeParcelReader.m16959o(parcel, m16983C, zaa.CREATOR);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new FastJsonResponse.Field(i, i2, z, i3, z2, str, i4, str2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}

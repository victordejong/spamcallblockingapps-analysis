package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.server.converter.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/a.class */
public final class C6208a implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zaa createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        int i = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                stringToIntConverter = (StringToIntConverter) SafeParcelReader.m16959o(parcel, m16983C, StringToIntConverter.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zaa(i, stringToIntConverter);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}

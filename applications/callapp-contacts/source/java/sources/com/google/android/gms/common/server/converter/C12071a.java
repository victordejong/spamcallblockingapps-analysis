package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.server.converter.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/converter/a.class */
public final class C12071a implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                stringToIntConverter = (StringToIntConverter) SafeParcelReader.m19143a(parcel, readInt, StringToIntConverter.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zaa(i, stringToIntConverter);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}

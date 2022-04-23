package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zad.class */
public final class zad implements Parcelable.Creator<StringToIntConverter> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u != 2) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                arrayList = SafeParcelReader.m14471s(parcel, B, StringToIntConverter.zaa.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new StringToIntConverter(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter[] newArray(int i) {
        return new StringToIntConverter[i];
    }
}

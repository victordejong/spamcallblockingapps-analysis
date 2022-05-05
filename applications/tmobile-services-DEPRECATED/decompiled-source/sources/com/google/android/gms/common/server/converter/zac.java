package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.StringToIntConverter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zac.class */
public final class zac implements Parcelable.Creator<StringToIntConverter.zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter.zaa createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u != 3) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                i2 = SafeParcelReader.m14498D(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new StringToIntConverter.zaa(i, str, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter.zaa[] newArray(int i) {
        return new StringToIntConverter.zaa[i];
    }
}

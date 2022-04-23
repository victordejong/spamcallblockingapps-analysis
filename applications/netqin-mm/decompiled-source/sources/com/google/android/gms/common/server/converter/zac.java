package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zac.class */
public final class zac implements Parcelable.Creator<StringToIntConverter> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                arrayList = SafeParcelReader.m17259c(parcel, a, StringToIntConverter.zaa.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new StringToIntConverter(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter[] newArray(int i) {
        return new StringToIntConverter[i];
    }
}

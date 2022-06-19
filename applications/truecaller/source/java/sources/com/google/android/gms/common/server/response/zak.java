package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/zak.class */
public final class zak implements Parcelable.Creator<zam> {
    @Override // android.os.Parcelable.Creator
    public final zam createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        int i = 0;
        FastJsonResponse.Field field = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.m38880i(parcel, readInt, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zam(i, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zam[] newArray(int i) {
        return new zam[i];
    }
}

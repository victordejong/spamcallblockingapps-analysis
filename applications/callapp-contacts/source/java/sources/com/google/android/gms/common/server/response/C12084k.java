package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* renamed from: com.google.android.gms.common.server.response.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/k.class */
public final class C12084k implements Parcelable.Creator<zam> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        FastJsonResponse.Field field = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.m19143a(parcel, readInt, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zam(i, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zam[] newArray(int i) {
        return new zam[i];
    }
}

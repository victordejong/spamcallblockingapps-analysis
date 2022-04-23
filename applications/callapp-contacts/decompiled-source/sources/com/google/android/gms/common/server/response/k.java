package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/k.class */
public final class k implements Parcelable.Creator<zam> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        FastJsonResponse.Field field = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.a(parcel, readInt, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zam(i, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zam[] newArray(int i) {
        return new zam[i];
    }
}

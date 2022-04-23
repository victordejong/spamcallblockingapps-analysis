package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zab;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zai.class */
public final class zai implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        String str2 = null;
        zab zabVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 2:
                    i2 = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 3:
                    z = SafeParcelReader.m14468v(parcel, B);
                    break;
                case 4:
                    i3 = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 5:
                    z2 = SafeParcelReader.m14468v(parcel, B);
                    break;
                case 6:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 7:
                    i4 = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 8:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 9:
                    zabVar = (zab) SafeParcelReader.m14476n(parcel, B, zab.CREATOR);
                    break;
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new FastJsonResponse.Field(i, i2, z, i3, z2, str, i4, str2, zabVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}

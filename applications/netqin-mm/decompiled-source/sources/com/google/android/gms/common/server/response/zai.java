package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zai.class */
public final class zai implements Parcelable.Creator<zan> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zan createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        FastJsonResponse.Field field = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.m17264a(parcel, a, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zan(i, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zan[] newArray(int i) {
        return new zan[i];
    }
}

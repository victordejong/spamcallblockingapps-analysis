package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zaj.class */
public final class zaj implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        zaa zaaVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 3:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 4:
                    i3 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 5:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 6:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 7:
                    i4 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 8:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 9:
                    zaaVar = (zaa) SafeParcelReader.m17264a(parcel, a, zaa.CREATOR);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new FastJsonResponse.Field(i, i2, z, i3, z2, str, i4, str2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}

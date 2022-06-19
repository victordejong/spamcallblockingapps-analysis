package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/zaj.class */
public final class zaj implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        zaa zaaVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 3:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 4:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 6:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\b':
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    zaaVar = (zaa) SafeParcelReader.m38880i(parcel, readInt, zaa.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new FastJsonResponse.Field(i, i2, z, i3, z2, str, i4, str2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}

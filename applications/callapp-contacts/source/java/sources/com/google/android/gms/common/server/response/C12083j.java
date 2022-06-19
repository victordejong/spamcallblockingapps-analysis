package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* renamed from: com.google.android.gms.common.server.response.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/j.class */
public final class C12083j implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        zaa zaaVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 3:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 4:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 6:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 7:
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\b':
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\t':
                    zaaVar = (zaa) SafeParcelReader.m19143a(parcel, readInt, zaa.CREATOR);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new FastJsonResponse.Field(i, i2, z, i3, z2, str, i4, str2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}

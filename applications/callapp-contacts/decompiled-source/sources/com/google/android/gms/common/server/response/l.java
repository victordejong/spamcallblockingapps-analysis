package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/l.class */
public final class l implements Parcelable.Creator<zan> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zan createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        ArrayList arrayList = null;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                arrayList = SafeParcelReader.c(parcel, readInt, zal.CREATOR);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zan(i, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zan[] newArray(int i) {
        return new zan[i];
    }
}

package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.server.response.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/l.class */
public final class C12085l implements Parcelable.Creator<zan> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zan createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList arrayList = null;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, zal.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zan(i, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zan[] newArray(int i) {
        return new zan[i];
    }
}

package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/m.class */
public final class m implements Parcelable.Creator<zal> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zal createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        ArrayList arrayList = null;
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
                arrayList = SafeParcelReader.c(parcel, readInt, zam.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zal(i, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zal[] newArray(int i) {
        return new zal[i];
    }
}

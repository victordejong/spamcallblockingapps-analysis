package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/h.class */
public final class h implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                strArr = SafeParcelReader.t(parcel, readInt);
            } else if (c2 == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.b(parcel, readInt, CursorWindow.CREATOR);
            } else if (c2 == 3) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 4) {
                bundle = SafeParcelReader.o(parcel, readInt);
            } else if (c2 != 1000) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.zaa();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}

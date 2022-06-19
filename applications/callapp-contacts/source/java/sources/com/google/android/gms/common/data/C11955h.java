package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.data.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/h.class */
public final class C11955h implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                strArr = SafeParcelReader.m19121t(parcel, readInt);
            } else if (c == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.m19140b(parcel, readInt, CursorWindow.CREATOR);
            } else if (c == 3) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 4) {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            } else if (c != 1000) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.zaa();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}

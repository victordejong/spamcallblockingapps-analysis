package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/zad.class */
public final class zad implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final DataHolder createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                strArr = SafeParcelReader.m38878k(parcel, readInt);
            } else if (c == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.m38876m(parcel, readInt, CursorWindow.CREATOR);
            } else if (c == 3) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 4) {
                bundle = SafeParcelReader.m38886c(parcel, readInt);
            } else if (c != 1000) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.f5922c = new Bundle();
        int i3 = 0;
        while (true) {
            String[] strArr2 = dataHolder.f5921b;
            if (i3 >= strArr2.length) {
                break;
            }
            dataHolder.f5922c.putInt(strArr2[i3], i3);
            i3++;
        }
        dataHolder.f5926g = new int[dataHolder.f5923d.length];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr2 = dataHolder.f5923d;
            if (i5 >= cursorWindowArr2.length) {
                dataHolder.f5927h = i4;
                return dataHolder;
            }
            dataHolder.f5926g[i5] = i4;
            i4 += dataHolder.f5923d[i5].getNumRows() - (i4 - cursorWindowArr2[i5].getStartPosition());
            i5++;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}

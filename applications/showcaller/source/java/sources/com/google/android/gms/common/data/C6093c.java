package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.data.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/c.class */
public final class C6093c implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                strArr = SafeParcelReader.m16957q(parcel, m16983C);
            } else if (m16952v == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.m16955s(parcel, m16983C, CursorWindow.CREATOR);
            } else if (m16952v == 3) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 4) {
                bundle = SafeParcelReader.m16968f(parcel, m16983C);
            } else if (m16952v != 1000) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.m17211n0();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}

package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/b.class */
public final class b implements Parcelable.Creator<DataHolder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(DataHolder dataHolder, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, dataHolder.f3962b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, dataHolder.d, i);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 3, dataHolder.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, dataHolder.f);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1000, dataHolder.f3961a);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        Bundle bundle = null;
        int i = 0;
        CursorWindow[] cursorWindowArr = null;
        String[] strArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    strArr = a.q(parcel, readInt);
                    break;
                case 2:
                    cursorWindowArr = (CursorWindow[]) a.b(parcel, readInt, CursorWindow.CREATOR);
                    break;
                case 3:
                    i = a.d(parcel, readInt);
                    break;
                case 4:
                    bundle = a.m(parcel, readInt);
                    break;
                case 1000:
                    i2 = a.d(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() != a2) {
            throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
        }
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i, bundle);
        dataHolder.a();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}

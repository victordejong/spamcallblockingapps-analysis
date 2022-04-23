package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/g.class */
public final class g implements Parcelable.Creator<zag> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zag createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        ArrayList<String> arrayList = null;
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                arrayList = SafeParcelReader.u(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zag(arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zag[] newArray(int i) {
        return new zag[i];
    }
}

package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zas;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zaj.class */
public final class zaj implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        zas zasVar = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                zasVar = (zas) SafeParcelReader.m17264a(parcel, a, zas.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zak(i, zasVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}

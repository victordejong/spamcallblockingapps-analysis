package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvd.class */
public final class zzvd implements Parcelable.Creator<zzva> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzva createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        zzva zzvaVar = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 3) {
                str2 = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 4) {
                zzvaVar = (zzva) SafeParcelReader.m17264a(parcel, a, zzva.CREATOR);
            } else if (a2 != 5) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                iBinder = SafeParcelReader.m17236z(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzva(i, str, str2, zzvaVar, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzva[] newArray(int i) {
        return new zzva[i];
    }
}

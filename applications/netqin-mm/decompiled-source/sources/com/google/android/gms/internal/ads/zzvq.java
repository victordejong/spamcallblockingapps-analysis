package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvq.class */
public final class zzvq implements Parcelable.Creator<zzvr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvr createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        zzva zzvaVar = null;
        Bundle bundle = null;
        long j = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 2) {
                j = SafeParcelReader.m17274B(parcel, a);
            } else if (a2 == 3) {
                zzvaVar = (zzva) SafeParcelReader.m17264a(parcel, a, zzva.CREATOR);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                bundle = SafeParcelReader.m17256f(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzvr(str, j, zzvaVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvr[] newArray(int i) {
        return new zzvr[i];
    }
}

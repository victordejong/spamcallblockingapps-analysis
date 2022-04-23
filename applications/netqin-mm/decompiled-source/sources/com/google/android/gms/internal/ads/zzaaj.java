package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaj.class */
public final class zzaaj implements Parcelable.Creator<zzaak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaak createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 2) {
                z = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 == 3) {
                z2 = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                z3 = SafeParcelReader.m17242t(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaak(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaak[] newArray(int i) {
        return new zzaak[i];
    }
}

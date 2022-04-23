package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadt.class */
public final class zzadt implements Parcelable.Creator<zzadu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzadu createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        zzaak zzaakVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 3:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 4:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 5:
                    i3 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 6:
                    zzaakVar = (zzaak) SafeParcelReader.m17264a(parcel, a, zzaak.CREATOR);
                    break;
                case 7:
                    z3 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 8:
                    i4 = SafeParcelReader.m17275A(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzadu(i, z, i2, z2, i3, zzaakVar, z3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzadu[] newArray(int i) {
        return new zzadu[i];
    }
}

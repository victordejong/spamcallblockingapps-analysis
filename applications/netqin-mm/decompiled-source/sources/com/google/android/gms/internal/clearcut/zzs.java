package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzs.class */
public final class zzs implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        int i2 = 0;
        boolean z = true;
        boolean z2 = false;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 4:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 5:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 6:
                    str3 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 7:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 8:
                    str4 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 9:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 10:
                    i3 = SafeParcelReader.m17275A(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzr(str, i, i2, str2, str3, z, str4, z2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}

package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzk.class */
public final class zzk implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final zzj createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        String str = null;
        float f = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 3:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 6:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 7:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\b':
                    z4 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    z5 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    z6 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzj(z, z2, str, z3, f, i, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}

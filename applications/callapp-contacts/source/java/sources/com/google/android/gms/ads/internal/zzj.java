package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzj.class */
public final class zzj implements Parcelable.Creator<zzk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzk createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f = 0.0f;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 3:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 6:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 7:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\b':
                    z4 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    z5 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\n':
                    z6 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzk(z, z2, str, z3, f, i, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzk[] newArray(int i) {
        return new zzk[i];
    }
}

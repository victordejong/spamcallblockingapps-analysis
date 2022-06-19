package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbi.class */
public final class zzbi implements Parcelable.Creator<zzbh> {
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    @Override // android.os.Parcelable.Creator
    public final zzbh createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        int i = 0;
        String str = null;
        float f = 0.0f;
        char c3 = 0;
        int i2 = -1;
        short s = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 2:
                    c3 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 3:
                    SafeParcelReader.m38889C(parcel, readInt, 4);
                    s = (short) parcel.readInt();
                    break;
                case 4:
                    c = SafeParcelReader.m38871r(parcel, readInt);
                    break;
                case 5:
                    c2 = SafeParcelReader.m38871r(parcel, readInt);
                    break;
                case 6:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 7:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\b':
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\t':
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbh(str, i3, s, c, c2, f, c3, i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbh[] newArray(int i) {
        return new zzbh[i];
    }
}

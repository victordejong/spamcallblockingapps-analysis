package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnn.class */
public final class cnn implements Parcelable.Creator<cno> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ cno createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        byte[] bArr = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    bArr = SafeParcelReader.m13949n(parcel, m13969a);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new cno(i2, bArr, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ cno[] newArray(int i) {
        return new cno[i];
    }
}

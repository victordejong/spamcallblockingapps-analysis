package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecm.class */
public final class ecm implements Parcelable.Creator<eck> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ eck createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 15:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new eck(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ eck[] newArray(int i) {
        return new eck[i];
    }
}

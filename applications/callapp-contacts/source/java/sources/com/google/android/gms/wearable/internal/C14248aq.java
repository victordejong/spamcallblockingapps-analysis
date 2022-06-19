package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.aq */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/aq.class */
public final class C14248aq implements Parcelable.Creator<zzdg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdg createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdg(i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdg[] newArray(int i) {
        return new zzdg[i];
    }
}

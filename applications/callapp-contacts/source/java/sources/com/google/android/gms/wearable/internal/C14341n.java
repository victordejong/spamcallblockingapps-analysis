package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.n */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/n.class */
public final class C14341n implements Parcelable.Creator<zzaw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaw createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        zzay zzayVar = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                zzayVar = (zzay) SafeParcelReader.m19143a(parcel, readInt, zzay.CREATOR);
            } else if (c == 3) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 4) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaw(zzayVar, i, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaw[] newArray(int i) {
        return new zzaw[i];
    }
}

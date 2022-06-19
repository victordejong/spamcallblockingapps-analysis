package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.ae */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ae.class */
public final class C14236ae implements Parcelable.Creator<zzbp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbp createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzbp(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbp[] newArray(int i) {
        return new zzbp[i];
    }
}

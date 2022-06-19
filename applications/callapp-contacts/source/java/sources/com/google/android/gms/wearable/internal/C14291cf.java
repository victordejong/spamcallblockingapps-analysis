package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.cf */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cf.class */
public final class C14291cf implements Parcelable.Creator<zzfw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfw createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        IBinder iBinder = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                iBinder = SafeParcelReader.m19127n(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzfw(i, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfw[] newArray(int i) {
        return new zzfw[i];
    }
}

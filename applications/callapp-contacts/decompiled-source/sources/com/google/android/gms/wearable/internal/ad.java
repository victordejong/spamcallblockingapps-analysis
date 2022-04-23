package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ad.class */
public final class ad implements Parcelable.Creator<zzbn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbn createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzbn(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbn[] newArray(int i) {
        return new zzbn[i];
    }
}

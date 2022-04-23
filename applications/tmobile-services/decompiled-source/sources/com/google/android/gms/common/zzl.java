package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzl.class */
public final class zzl implements Parcelable.Creator<zzk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzk createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        boolean z = false;
        String str = null;
        IBinder iBinder = null;
        boolean z2 = false;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u == 2) {
                iBinder = SafeParcelReader.m14499C(parcel, B);
            } else if (u == 3) {
                z = SafeParcelReader.m14468v(parcel, B);
            } else if (u != 4) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                z2 = SafeParcelReader.m14468v(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzk(str, iBinder, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzk[] newArray(int i) {
        return new zzk[i];
    }
}

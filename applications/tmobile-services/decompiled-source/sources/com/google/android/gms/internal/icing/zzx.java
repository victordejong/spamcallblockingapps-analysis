package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzx.class */
public final class zzx implements Parcelable.Creator<zzu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzu createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        boolean z = false;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            if (SafeParcelReader.m14469u(B) != 1) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                z = SafeParcelReader.m14468v(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzu(z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzu[] newArray(int i) {
        return new zzu[i];
    }
}

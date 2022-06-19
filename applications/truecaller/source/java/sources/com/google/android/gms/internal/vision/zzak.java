package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzak.class */
public final class zzak implements Parcelable.Creator<zzah> {
    @Override // android.os.Parcelable.Creator
    public final zzah createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        while (parcel.dataPosition() < m38891A) {
            SafeParcelReader.m38863z(parcel, parcel.readInt());
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzah();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah[] newArray(int i) {
        return new zzah[i];
    }
}

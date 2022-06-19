package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzaf.class */
public final class zzaf implements Parcelable.Creator<zzag> {
    @Override // android.os.Parcelable.Creator
    public final zzag createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        while (parcel.dataPosition() < m38891A) {
            SafeParcelReader.m38863z(parcel, parcel.readInt());
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzag();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzag[] newArray(int i) {
        return new zzag[i];
    }
}
